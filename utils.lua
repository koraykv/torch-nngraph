local utils = {}

function utils.istensor(x)
	if torch.typename(x) and torch.typename(x):find('Tensor') then
		return true
	end
	return false
end

function utils.istorchclass(x)
	return type(x) == 'table' and torch.typename(x)
end

function utils.istable(x)
	return type(x) == 'table' and not torch.typename(x)
end

function utils.iscriterion(node)
  return  node.data.module.__metatable['parameters'] == nil
end

return utils


