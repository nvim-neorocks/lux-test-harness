package = "du-mocks"
version = "1.1.0-1"
source = {
   url = "git+https://github.com/1337joe/du-mocks.git",
   tag = "v1.1.0",
}
description = {
   summary = "Mock objects to simulate the Dual Universe lua environment.",
   detailed = "Mock objects for generating a more useful codex and for use testing Dual Universe scripts offline.",
   homepage = "https://github.com/1337joe/du-mocks",
   license = "MIT",
}
dependencies = {
   "lua >= 5.3",

   -- build/test dependencies
   "ldoc",
   "luaunit",
   "luacov",
}
build = {
   type = "builtin",
   modules = {
      ["dumocks.AdjustorUnit"] = "src/dumocks/AdjustorUnit.lua",
      ["dumocks.AirfoilUnit"] = "src/dumocks/AirfoilUnit.lua",
      ["dumocks.AntiGravityGeneratorUnit"] = "src/dumocks/AntiGravityGeneratorUnit.lua",
      ["dumocks.BaseShieldGeneratorUnit"] = "src/dumocks/BaseShieldGeneratorUnit.lua",
      ["dumocks.BrakeUnit"] = "src/dumocks/BrakeUnit.lua",
      ["dumocks.Construct"] = "src/dumocks/Construct.lua",
      ["dumocks.ContainerUnit"] = "src/dumocks/ContainerUnit.lua",
      ["dumocks.ControlUnit"] = "src/dumocks/ControlUnit.lua",
      ["dumocks.CoreUnit"] = "src/dumocks/CoreUnit.lua",
      ["dumocks.CounterUnit"] = "src/dumocks/CounterUnit.lua",
      ["dumocks.DatabankUnit"] = "src/dumocks/DatabankUnit.lua",
      ["dumocks.DetectionZoneUnit"] = "src/dumocks/DetectionZoneUnit.lua",
      ["dumocks.DoorUnit"] = "src/dumocks/DoorUnit.lua",
      ["dumocks.Element"] = "src/dumocks/Element.lua",
      ["dumocks.ElementWithState"] = "src/dumocks/ElementWithState.lua",
      ["dumocks.ElementWithToggle"] = "src/dumocks/ElementWithToggle.lua",
      ["dumocks.EmitterUnit"] = "src/dumocks/EmitterUnit.lua",
      ["dumocks.Engine"] = "src/dumocks/Engine.lua",
      ["dumocks.EngineUnit"] = "src/dumocks/EngineUnit.lua",
      ["dumocks.FireworksUnit"] = "src/dumocks/FireworksUnit.lua",
      ["dumocks.ForceFieldUnit"] = "src/dumocks/ForceFieldUnit.lua",
      ["dumocks.FueledEngine"] = "src/dumocks/FueledEngine.lua",
      ["dumocks.GyroUnit"] = "src/dumocks/GyroUnit.lua",
      ["dumocks.IndustryUnit"] = "src/dumocks/IndustryUnit.lua",
      ["dumocks.LandingGearUnit"] = "src/dumocks/LandingGearUnit.lua",
      ["dumocks.LaserDetectorUnit"] = "src/dumocks/LaserDetectorUnit.lua",
      ["dumocks.LaserEmitterUnit"] = "src/dumocks/LaserEmitterUnit.lua",
      ["dumocks.Library"] = "src/dumocks/Library.lua",
      ["dumocks.LightUnit"] = "src/dumocks/LightUnit.lua",
      ["dumocks.ManualButtonUnit"] = "src/dumocks/ManualButtonUnit.lua",
      ["dumocks.ManualSwitchUnit"] = "src/dumocks/ManualSwitchUnit.lua",
      ["dumocks.MiningUnit"] = "src/dumocks/MiningUnit.lua",
      ["dumocks.PlasmaExtractorUnit"] = "src/dumocks/PlasmaExtractorUnit.lua",
      ["dumocks.Player"] = "src/dumocks/Player.lua",
      ["dumocks.PressureTileUnit"] = "src/dumocks/PressureTileUnit.lua",
      ["dumocks.RadarUnit"] = "src/dumocks/RadarUnit.lua",
      ["dumocks.ReceiverUnit"] = "src/dumocks/ReceiverUnit.lua",
      ["dumocks.RenderScript"] = "src/dumocks/RenderScript.lua",
      ["dumocks.ScreenUnit"] = "src/dumocks/ScreenUnit.lua",
      ["dumocks.ShieldGeneratorUnit"] = "src/dumocks/ShieldGeneratorUnit.lua",
      ["dumocks.SurfaceEngineUnit"] = "src/dumocks/SurfaceEngineUnit.lua",
      ["dumocks.System"] = "src/dumocks/System.lua",
      ["dumocks.TelemeterUnit"] = "src/dumocks/TelemeterUnit.lua",
      ["dumocks.TransponderUnit"] = "src/dumocks/TransponderUnit.lua",
      ["dumocks.WarpDriveUnit"] = "src/dumocks/WarpDriveUnit.lua",
      ["dumocks.WeaponUnit"] = "src/dumocks/WeaponUnit.lua",
   },
   copy_directories = {
   }
}
