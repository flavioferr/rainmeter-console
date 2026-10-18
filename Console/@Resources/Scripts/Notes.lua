-- Lista de notas/tarefas salva em @Resources\Notes.inc (N1..N6 = texto, D1..D6 = feita).
-- A lista e mantida compacta: as notas vazias ficam sempre no fim.

local MAX = 6

function Initialize()
	file = SKIN:ReplaceVariables('#@#Notes.inc')
	started = false
	editing = 0
end

local function load()
	local list = {}
	for i = 1, MAX do
		local t = SKIN:GetVariable('N' .. i) or ''
		if t ~= '' then
			table.insert(list, { t = t, d = tonumber(SKIN:GetVariable('D' .. i)) or 0 })
		end
	end
	return list
end

local function save(list)
	for i = 1, MAX do
		local n = list[i]
		SKIN:Bang('!WriteKeyValue', 'Variables', 'N' .. i, n and n.t or '', file)
		SKIN:Bang('!WriteKeyValue', 'Variables', 'D' .. i, n and tostring(n.d) or '0', file)
	end
	SKIN:Bang('!WriteKeyValue', 'Variables', 'NoteCount', tostring(#list), file)
	SKIN:Bang('!Refresh')
end

-- na primeira atualizacao: esconde as linhas vazias e publica NoteCount
function Update()
	if started then return 0 end
	started = true
	local count = #load()
	for i = count + 1, MAX do
		SKIN:Bang('!HideMeterGroup', 'NoteLine' .. i)
	end
	SKIN:Bang('!SetVariable', 'NoteCount', tostring(count))
	SKIN:Bang('!UpdateMeter', '*')
	SKIN:Bang('!Redraw')
	return count
end

local function openEditor(row, text)
	SKIN:Bang('!SetVariable', 'EditRow', tostring(row))
	SKIN:Bang('!UpdateMeter', 'MeterNoteField')
	SKIN:Bang('!SetOption', 'MeasureNoteInput', 'DefaultValue', text)
	SKIN:Bang('!UpdateMeasure', 'MeasureNoteInput')
	SKIN:Bang('!CommandMeasure', 'MeasureNoteInput', 'ExecuteBatch 1')
end

function Flip(i)
	local list = load()
	if list[i] then
		list[i].d = 1 - list[i].d
		save(list)
	end
end

function Edit(i)
	local list = load()
	if not list[i] then return end
	editing = i
	openEditor(i - 1, list[i].t)
end

function New()
	local list = load()
	if #list >= MAX then return end
	editing = 0
	openEditor(#list, '')
end

-- chamado pelo InputText depois de !SetVariable NoteText
function Commit()
	local text = SKIN:GetVariable('NoteText') or ''
	local list = load()
	if editing > 0 and list[editing] then
		if text == '' then
			table.remove(list, editing)
		else
			list[editing].t = text
		end
	elseif text ~= '' and #list < MAX then
		table.insert(list, { t = text, d = 0 })
	end
	save(list)
end

-- remove as notas marcadas como feitas
function Clear()
	local list, keep = load(), {}
	for _, n in ipairs(list) do
		if n.d == 0 then table.insert(keep, n) end
	end
	save(keep)
end
