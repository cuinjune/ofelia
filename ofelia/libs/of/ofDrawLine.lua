local objName = "ofDrawLine"
local log = pdLog()
local canvas = pdCanvas(this)
local p1, p2 = ofVec3f(), ofVec3f()

function ofelia.new()
  local args = canvas:getArgs()
  if #args == 4 then
    p1:set(args[1], args[2])
    p2:set(args[3], args[4])
  elseif #args == 6 then
    p1:set(args[1], args[2], args[3])
    p2:set(args[4], args[5], args[6])
  elseif #args ~= 0 then
    log:error(objName .. " : requires 4 or 6 creation arguments")
  end
end

function ofelia.bang()
  ofDrawLine(p1:vec3(), p2:vec3())
  return nil
end

function ofelia.p1(fv)
  if #fv == 2 then
    p1:set(fv[1], fv[2], 0)
  elseif #fv == 3 then
    p1:set(fv[1], fv[2], fv[3])
  else
    log:error(objName .. " : 'p1' requires 2 or 3 arguments")
  end
end

function ofelia.p2(fv)
  if #fv == 2 then
    p2:set(fv[1], fv[2], 0)
  elseif #fv == 3 then
    p2:set(fv[1], fv[2], fv[3])
  else
    log:error(objName .. " : 'p2' requires 2 or 3 arguments")
  end
end