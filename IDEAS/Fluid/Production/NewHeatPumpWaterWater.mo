within IDEAS.Fluid.Production;
model NewHeatPumpWaterWater
  //Extensions
  extends Interfaces.PartialHeaterFourPort(
    measurePower=true,
    redeclare Interfaces.HeatSources.HeatPumpWaterWater
     heatSource(redeclare
        IDEAS.Fluid.Production.Interfaces.Data.VitoCal300GBWS301dotA08 data),
    vol1(V=heatSource.data.m1/rho1_nominal),
    vol2(V=heatSource.data.m2/rho2_nominal));

equation
  PFuel = 0;
  PEl = 0;

  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics));
end NewHeatPumpWaterWater;