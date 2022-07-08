local v2 = script
local v5 = {
	PlayerInfo = {
		EffectWobble = Vector3.new(0, 0, 0),
		WalkXDamp = 9,
		WalkYDamp = 13,
	    RotationDamp = 2,
	    RotationSpeed = 12,
	    XSpeed = 12,
		YSpeed = 24,
		StrafeDamp = 6,
	},
	RootPart = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").RootPart,
	Humanoid = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"),
	
	Tween = function(p1, p2, p3 ,p4 ,p5, p6)
		((game:GetService("TweenService")):Create(p2, TweenInfo.new(p4, p5, p6, 0, false, 0), p3)):Play()
	end,
	PlayerHoldingObject = function(p111)
	    return false
	end,
	UserInputService = game:GetService("UserInputService")
}
local v6 = 0
v2 = 0
local v7 = 0
local v12 = Vector3.new(0, 0, 0)
local v15 = Instance.new("NumberValue")
local v20 = Vector3.new(0, 0, 0)
local v23 = Instance.new("NumberValue")
game:GetService("RunService").RenderStepped:Connect(function(p1)
	local v26 = nil
	local v27 = nil
	local v28 = nil
	local v29 = nil
	local v30 = nil
	local v31 = true
		v31 = p1 * 60
		v30 = 0
		v29 = 0
		v26 = v5
		v27 = v26.RootPart
		v28 = v27.CFrame
		v26 = v5.RootPart.Velocity
		v27 = -v28:VectorToObjectSpace(v26).X / v5.PlayerInfo.StrafeDamp
		local v37 = math.abs(v27)
		local v38
	if not (math.abs(v27) > 0.4) then
			v30 = v27
		end
		v38 = v5.UserInputService:GetMouseDelta().X
		v37 = -v38
		v29 = v37 / 5
		local v96 = {}
		v96.Value = v30 + v29
		v5:Tween(v23, v96, 1.6, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
		local v44 = workspace:GetRealPhysicsFPS()
		local v98 = 67
		if v44 > v98 then
			v98 = v5
			v44 = v98.LocalPlayer
			v44:Kick("High speed client detected.")
		end
		local v46 = v5
		local v99 = v46.Humanoid
		local v47 = v99.RootPart
		if v47 then
			v46 = v5
			v99 = v46.Humanoid
			v47 = v99.Health
			v99 = 10
			if (v99 > v47) then
				v99 = v5
				v47 = v99.PlayerInfo
				v99 = 4.5
				v47.RotationSpeed = v99
				v99 = v5
				v47 = v99.PlayerInfo
				v99 = 4.5
				v47.XSpeed = v99
				v99 = v5
				v47 = v99.PlayerInfo
				v99 = 9
				v47.YSpeed = v99
			else
				v46 = v5
				v99 = v46.Humanoid
				v47 = v99.HipHeight
				v99 = -0.4
				if v99 > v47 then
					v99 = v5
					v47 = v99.PlayerInfo
					v99 = 6.4285714285714
					v47.RotationSpeed = v99
					v99 = v5
					v47 = v99.PlayerInfo
					v99 = 6.4285714285714
					v47.XSpeed = v99
					v99 = v5
					v47 = v99.PlayerInfo
					v99 = 12.857142857143
					v47.YSpeed = v99
					v99 = v5
					v47 = v99.PlayerInfo
					v99 = 2
					v47.StrafeDamp = v99
				else
					v99 = v5
					v47 = v99.PlayerInfo
					v99 = 9
					v47.RotationSpeed = v99
					v99 = v5
					v47 = v99.PlayerInfo
					v99 = 9
					v47.XSpeed = v99
					v99 = v5
					v47 = v99.PlayerInfo
					v99 = 18
					v47.YSpeed = v99
					v99 = v5
					v47 = v99.PlayerInfo
					v99 = 6
					v47.StrafeDamp = v99
				end
			end
			local v48 = v5
			v46 = v48.Humanoid
			v99 = v46.MoveDirection
			v47 = v99.Magnitude
			v99 = 0

			local v70, v53, v56, v67, v73, v74, v75, v69, v65, v55, v68, v61, v60			
			if (v47 > v99) then
				v47 = v20
				v47 = v47 / 1.5
				v20 = v47
				v47 = v2
				v46 = 0.015
				v99 = v46 * v31
				v47 = v47 + v99
				v2 = v47
				v47 = 0
				v7 = v47
				v48 = v5
				v46 = v48.RootPart
				v99 = v46.Velocity
				v47 = v99.Magnitude
				v48 = v2 * v5.PlayerInfo.XSpeed
				v46 = math.cos
				v99 = v46(v48) / v5.PlayerInfo.WalkYDamp
				v12 = Vector3.new(v99, math.sin(v2 * v5.PlayerInfo.YSpeed) / v5.PlayerInfo.WalkXDamp, 0) * math.min(1, v47 / v5.Humanoid.WalkSpeed)
				v6 = math.rad(math.sin(v2 * v5.PlayerInfo.RotationSpeed)) / v5.PlayerInfo.RotationDamp
			else
			    local v70 = v5:PlayerHoldingObject()
				if not v70 then
					v70 = v7
					v53 = 0.015
					v99 = v53 * v31
					v70 = v70 + v99
					v7 = v70
					v70 = 0
					v2 = v70
					v56 = v7
					v53 = v56 * 3.5
					v99 = math.cos
					v70 = v99(v53) / 60
					v56 = v70
					v67 = 0
					v20 = Vector3.new(0, v56, v67)
					v12 = v12 / 1.05
					v6 = v6 / 1.15
				else
					v73 = v7
					v70 = v73 + 0.015 * v31
					v7 = v70
					v70 = 0
					v2 = v70
					v70 = v20
					v70 = v70 / 1.5
					v20 = v70
					v70 = v12
					v70 = v70 / 1.05
					v12 = v70
					v70 = v6
					v70 = v70 / 1.15
					v6 = v70
				end
			end
			v73 = v5
			v70 = v73.PlayerInfo
			v73 = v70.EffectWobble
			v73 = v73 / 1.075
			v70.EffectWobble = v73
			v73 = v5
			v70 = v73.Humanoid
			v74 = v5
			v75 = v74.Humanoid
			v73 = v75.CameraOffset
			v69 = v12
			v74 = v20 + v69
			v70.CameraOffset = v73:lerp(v74, 0.25)
			v70 = workspace.CurrentCamera
			v69 = 0
			v55 = v15
			v65 = v55.Value
			v55 = v6
			v68 = v65 + v55
			v55 = v5
			v65 = v55.PlayerInfo
			v61 = v5
			v55 = v61.PlayerInfo
			v65 = v55.EffectWobble
			v60 = v5.PlayerInfo
			v61 = v60.EffectWobble
		    v65 = v61.Z + math.rad(v23.Value)
		v75 = CFrame.Angles(0, v69, v68) * CFrame.Angles(v5.PlayerInfo.EffectWobble.X, v5.PlayerInfo.EffectWobble.Y, v65)
			v70.CFrame = v70.CFrame * v75
		end
end)
