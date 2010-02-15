within Modelica.Magnetic;
package FundamentalWave
  "Library for magnetic fundamental wave effects in electric machines"

  package UsersGuide "User's Guide"

    class Concept "Fundamental wave concept"

      annotation (Documentation(info="<html>

<h4>Overview of the concept of fundamental waves</h4>

<p>
The exact magnetic field in the air gap of an electric machine is usually determined by an electro magnetic finite element analysis. The waveform of the magnetic field, e.g. the magnetic potential difference <img src=\"../Images/Magnetic/FundamentalWave/V_m_phi.png\">, consists of a spatial fundamental wave - with respect to one pole pair - and additional harmonic waves of different order. The fundamental wave is however dominant in the air gap of an electric machine.
</p>

<p>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\">
  <caption align=\"bottom\">Field lines of a four pole induction machine</caption>
  <tr>
    <td>
      <img src=\"../Images/Magnetic/FundamentalWave/UsersGuide/Concept/aimc_fem.png\">
    </td>
  </tr>
</table>

</p>

<p>
In the fundamental wave theory only a pure sinusoidal distribution of magnetic quantities is assumed. It is thus assumed that all other harmonic wave effects are not taken into account. </p>

<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\">
  <caption align=\"bottom\">Magnetic potential difference of a four pole machine, where <img src=\"../Images/Magnetic/FundamentalWave/varphi.png\"> is the angle of the spatial domain with respect to one pole pair</caption>
  <tr>
    <td>
      <img src=\"../Images/Magnetic/FundamentalWave/UsersGuide/Concept/four_pole_V_m.png\">
    </td>
  </tr>
</table>

<p>
The waveforms of the magnetic field quantities, e.g. the magnetic potential difference <img src=\"../Images/Magnetic/FundamentalWave/V_m_phi.png\">, can be represented by complex phasor, e.g., <img src=\"../Images/Magnetic/FundamentalWave/V_m.png\">.
</p>

<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\">
  <caption align=\"bottom\">Spatial distribution of the magnetic potential difference (red shade = positive sine wave, blue shade = negative sine wave) including complex phasor representing this spatial distribution</caption>
  <tr>
    <td>
      <img src=\"../Images/Magnetic/FundamentalWave/UsersGuide/Concept/electrical_reference_V_m.png\">
    </td>
  </tr>
</table>

<p>
The potential and flow quantities of this library are the complex magnetic potential difference and the complex magnetic flux as defined in the basic <a href=\"Modelica_FundamentalWave.Interfaces.MagneticPort\">magnetic port</a>. Due to the sinusoidal distribution of magnetic potential and flux, such a complex phasor representation can be used. This way, the FundamentalWave library can be seen as a spatial extension of the <a href=\"Modelica.Magnetics.FluxTubes\">FluxTubes</a> library.
</p>

<p>
The specific arrangement of windings in electric machines with <img src=\"../Images/Magnetic/FundamentalWave/p.png\"> pole pairs give rise to sinusoidal dominant magnetic potential wave. The spatial period of this wave is determined by one pole pair
[<a href=\"Modelica.Magnetic.FundamentalWave.UsersGuide.References\">Mueller70</a>,
 <a href=\"Modelica.Magnetic.FundamentalWave.UsersGuide.References\">Spaeth73</a>].
</p>

<p>
The main components of an electric machine model based on the FundamentalWave library are <a href=\"Modelica.Magnetic.FundamentalWave.Machines.Components.SymmetricMultiPhaseWinding\">multi phase</a> and <a href=\"Modelica.Magnetic.FundamentalWave.Machines.Components.SinglePhaseWinding\">single phase windings</a>, <a href=\"Modelica.Magnetic.FundamentalWave.Machines.Components.RotorSaliencyAirGap\">air gap</a> as well as <a href=\"Modelica.Magnetic.FundamentalWave.Machines.Components.SymmetricMultiPhaseWinding\">symmetric</a> or <a href=\"Modelica.Magnetic.FundamentalWave.Machines.Components.SaliencyCageWinding\">salient cage</a> models.
The electric machine models provided in this library are based on symmetrical three phase windings in the stator and equivalent two or three phase windings in the rotor.
</p>

<h4>Assumptions</h4>

<p>
The machine models of the FundamentalWave library are currently based on the following assumptions
</p>

<ul>
<li>The number of stator phases is limited to three
    [<a href=\"Modelica.Magnetic.FundamentalWave.UsersGuide.References\">Eckhardt82</a>]
    </li>
<li>The phase windings are assumed to be symmetrical; an extension to this approach can be considererd</li>
<li>Only fundamental wave effects are taken into account</li>
<li>There are no restrictions on the waveforms of voltages and currents</li>
<li>All resistances and inductances are modeled as constant quantities; saturation effects, cross coupling effects
    [<a href=\"Modelica.Magnetic.FundamentalWave.UsersGuide.References\">Li07</a>], temperature dependency of resistances and deep bar effects could be considered in an extension to this library</li>
<li>Core losses, i.e., eddy current and hysteresis losses, friction losses and stray load losses are currently not considered [<a href=\"Modelica.Magnetic.FundamentalWave.UsersGuide.References\">Haumer09</a>]</li>
<li>The only dissipated losses in the electric machine models are currently ohmic heat losses</li>
</ul>

<h4>Note</h4>

<p>
The term <b>fundamental wave</b> refers to spatial waves of the electro magnetic quantities. This library has no limitations with respect to the waveforms of the time domain signals of any voltages, currents, etc.
</p>
</html>
"));
    end Concept;

    class Contact "Contact"

      annotation (Documentation(info="<html>
<h4>Contact</h4>
 
<p>
Christian Kral<br>
<a href=\"http://www.ait.ac.at\">Austrian Institute of Technology, AIT</a><br>
Mobility Department<br>
Giefinggasse 2, 1210 Vienna, Austria<br>
email: <a HREF=\"mailto:christian.kral@ait.ac.at\">christian.kral@ait.ac.at</a><br></dd>
</p>

<p>
Anton Haumer<br>
<a href=\"http://www.haumer.at\">Technical Consulting &amp; Electrical Engineering</a><br>
3423 St. Andrae-Woerdern, Austria<br>
email: <a HREF=\"mailto:a.haumer@haumer.at\">a.haumer@haumer.at</a><br></dd>
</p>

<h4>Acknowledgements</h4>

<p>
Based on an original idea of Michael Beuschel this library was developed. The authors of the FundamentalWave library would like to thank Michael Beuschel for contributing his source code to this library.
</p>
</html>
"));
    end Contact;

    class References "References"

      annotation (Documentation(info="<html>
<h4>References</h4>

<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\">
    <tr>
      <td valign=\"top\">[Eckhardt82]</td> 
      <td valign=\"top\">H. Eckhardt,
        <i>Grundz&uuml;ge der elektrischen Maschinen</i> (in German), 
        B. G. Teubner Verlag, Stuttgart, 1982.</td>
    </tr>

    <tr>
      <td valign=\"top\">[Haumer09]</td> 
      <td valign=\"top\">A. Haumer, and C. Kral,
        &quot;<a href=\"http://www.modelica.org/events/modelica2009/Proceedings/memorystick/pages/papers/0103/0103.pdf\">The 
        AdvancedMachines Library: Loss Models for Electric Machines</a>,&quot;
        <i>Modelica Conference</i>, 2009.</td>
    </tr>

    <tr>
      <td valign=\"top\">[Li07]</td> 
      <td valign=\"top\">Y. Li, Z. Q. Zhu, D. Howe, and C. M. Bingham,
        &quot;Modeling of Cross-Coupling Magnetic Saturation in Signal-Injection-Based
        Sensorless Control of Permanent-Magnet Brushless AC Motors,&quot;
        <i>IEEE Transactions on Magnetics</i>, 
        vol. 43, no. 6, pp. 2552-2554, June 2007.</td>
    </tr>

    <tr>
      <td valign=\"top\">[Mueller70]</td> 
      <td valign=\"top\">G, M&uuml;ller,
        <i>Elektrische Maschinen -- Grundlagen, Aufbau und Wirkungsweise</i> (in German), 
        VEB Verlag Technik Berlin, 4th edition, 1970.</td>
    </tr>

    <tr>
      <td valign=\"top\">[Spaeth73]</td> 
      <td valign=\"top\">H. Sp&auml;th,
        <i>Elektrische Maschinen -- Eine Einf&uuml;hrung in die Theorie des Betriebsverhaltens</i> (in German), 
        Springer-Verlag, Berlin, Heidelberg, New York, 1973.</td>
    </tr>


</table>
</html>
"));

    end References;
    annotation (DocumentationClass=true, Documentation(info="<html>

<p>
This library contains components for modelling of electromagnetic fundamental wave models for the application in 
<a href=Modelica.Magnetic.FundamentalWave.Machines>electric machines</a>. This library is an alternative approach to the <a href=\"Modelica.Electrical.Machines\">Modelica.Electrical.Machines</a> library. A great advantage of this library is the strict object orientation of the electrical and magnetic components that the electric machines models are composed of. From a didactic point of view this library is very beneficial for students in the field of electrical engineering.
</p>

<p>
For more details see the <a href=Modelica.Magnetic.FundamentalWave.UsersGuide.Concept>concept.</a>
</html>"));
  end UsersGuide;

  package Examples
    "Examples of electric machines based on the FundamentalWave concept"

    model AIMC_DOL
      "Direct on line start of asynchronous induction machine with squirrel cage"
      extends Modelica.Icons.Example;

      constant Integer m=3 "Number of phases";
      parameter Modelica.SIunits.Voltage VsNominal=100
        "Nominal RMS voltage per phase";
      parameter Modelica.SIunits.Frequency fsNominal=50 "Nominal frequency";
      parameter Modelica.SIunits.Time tOn=0.1 "Start time of machine";
      parameter Modelica.SIunits.Torque T_Load=161.4 "Nominal load torque";
      parameter Modelica.SIunits.AngularVelocity w_Load(displayUnit="1/min")=1440.45*2*Modelica.Constants.pi/60
        "Nominal load speed";
      parameter Modelica.SIunits.Inertia J_Load=0.29 "Load inertia";

      parameter Integer p = 2 "Number of pole pairs";
      parameter Modelica.SIunits.Resistance Rs=0.03
        "Stator resistance per phase";
      parameter Modelica.SIunits.Inductance Lssigma=3*(1 - sqrt(1 - 0.0667))/(2*Modelica.Constants.pi*fsNominal)
        "Stator stray inductance per phase";
      parameter Modelica.SIunits.Inductance Lm=3*sqrt(1 - 0.0667)/(2*Modelica.Constants.pi*fsNominal)
        "Main field inductance";
      parameter Modelica.SIunits.Inductance Lrsigma=3*(1 - sqrt(1 - 0.0667))/(2*Modelica.Constants.pi*fsNominal)
        "Rotor stray inductance (equivalent three phase winding)";
      parameter Modelica.SIunits.Resistance Rr=0.04
        "Rotor resistance (equivalent three phase winding)";

      Modelica.Electrical.Analog.Basic.Ground ground 
        annotation (Placement(transformation(
            origin={-90,90},
            extent={{-10,-10},{10,10}},
            rotation=270)));
      Modelica.Electrical.MultiPhase.Basic.Star star(final m=m) 
        annotation (Placement(transformation(extent={{-50,80},{-70,100}}, rotation=
                0)));
      Modelica.Electrical.MultiPhase.Sources.SineVoltage sineVoltage(
        final m=m,
        freqHz=fill(fsNominal, m),
        V=fill(sqrt(2.0/3.0)*VsNominal, m)) 
        annotation (Placement(transformation(
            origin={0,60},
            extent={{10,-10},{-10,10}},
            rotation=270)));
      Modelica.Electrical.Machines.Sensors.CurrentQuasiRMSSensor
        currentRMSsensorM 
        annotation (Placement(transformation(
            origin={0,0},
            extent={{-10,10},{10,-10}},
            rotation=270)));
      Modelica.Electrical.Machines.Utilities.TerminalBox terminalBoxM(
        terminalConnection="D") 
        annotation (Placement(transformation(extent={{-10,-30},{10,-10}}, rotation=
                0)));
      Machines.AsynchronousInductionMachines.AIM_SquirrelCage aimcM(
        p=p,
        Rs=Rs,
        Lssigma=Lssigma,
        Lm=Lm,
        Lrsigma=Lrsigma,
        Rr=Rr,
        alpha20s(displayUnit="1/K"),
        alpha20r(displayUnit="1/K")) 
        annotation (Placement(transformation(extent={{-10,-50},{10,-30}}, rotation=
                0)));
      Modelica.Mechanics.Rotational.Components.Inertia loadInertiaM(
        J=J_Load) 
        annotation (Placement(transformation(extent={{40,-50},{60,-30}}, rotation=0)));
      Modelica.Mechanics.Rotational.Sources.QuadraticSpeedDependentTorque
        quadraticLoadTorqueM(
        w_nominal=w_Load,
        tau_nominal=-T_Load,
        TorqueDirection=false,
        useSupport=false) 
        annotation (Placement(transformation(extent={{90,-50},{70,-30}}, rotation=0)));
      Modelica.Electrical.Machines.Sensors.CurrentQuasiRMSSensor
        currentRMSsensorE 
        annotation (Placement(transformation(
            origin={-20,0},
            extent={{-10,-10},{10,10}},
            rotation=270)));
      Modelica.Electrical.Machines.Utilities.TerminalBox terminalBoxE(
        terminalConnection=
                  "D") 
        annotation (Placement(transformation(extent={{-10,-70},{10,-50}}, rotation=
                0)));
      Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines.AIM_SquirrelCage
        aimcE(
        p=p,
        Rs=Rs,
        Lssigma=Lssigma,
        Lm=Lm,
        Lrsigma=Lrsigma,
        Rr=Rr,
        alpha20s(displayUnit="1/K"),
        alpha20r(displayUnit="1/K")) 
        annotation (Placement(transformation(extent={{-10,-90},{10,-70}}, rotation=
                0)));
      Modelica.Mechanics.Rotational.Components.Inertia loadInertiaE(
                                                         J=J_Load) 
        annotation (Placement(transformation(extent={{40,-90},{60,-70}}, rotation=0)));
      Modelica.Mechanics.Rotational.Sources.QuadraticSpeedDependentTorque
        quadraticLoadTorqueE(
        w_nominal=w_Load,
        tau_nominal=-T_Load,
        TorqueDirection=false,
        useSupport=false) 
        annotation (Placement(transformation(extent={{90,-90},{70,-70}}, rotation=0)));
      Blocks.Sources.BooleanStep booleanStep[m](
        each startTime=tOn, each startValue=false) 
        annotation (Placement(transformation(extent={{-60,20},{-40,40}}, rotation=0)));
      Electrical.MultiPhase.Ideal.IdealClosingSwitch idealCloser(
        final m=m) 
        annotation (Placement(transformation(
            origin={0,30},
            extent={{-10,10},{10,-10}},
            rotation=270)));
    equation
      connect(star.pin_n, ground.p) 
        annotation (Line(points={{-70,90},{-80,90}}, color={0,0,255}));
      connect(sineVoltage.plug_n, star.plug_p) 
        annotation (Line(points={{1.83697e-015,70},{1.83697e-015,90},{-50,90}},
            color={0,0,255}));
      connect(aimcM.flange,   loadInertiaM.flange_a) 
        annotation (Line(points={{10,-40},{10,-40},{40,-40}},
                                                     color={0,0,0}));
      connect(loadInertiaM.flange_b, quadraticLoadTorqueM.flange) 
        annotation (Line(points={{60,-40},{70,-40}}, color={0,0,0}));
      connect(terminalBoxM.plug_sn,             aimcM.plug_sn) 
        annotation (Line(points={{-6,-30},{-6,-34},{-6,-30}},
                                                     color={0,0,255}));
      connect(terminalBoxM.plug_sp,             aimcM.plug_sp) 
        annotation (Line(points={{6,-30},{6,-30}}, color={0,0,255}));
      connect(terminalBoxM.plugSupply, currentRMSsensorM.plug_n) 
        annotation (Line(points={{0,-28},{-1.83697e-015,-28},{-1.83697e-015,-10}},
                     color={0,0,255}));
      connect(aimcE.flange,   loadInertiaE.flange_a) 
        annotation (Line(points={{10,-80},{10,-80},{40,-80}},
                                                     color={0,0,0}));
      connect(loadInertiaE.flange_b, quadraticLoadTorqueE.flange) 
        annotation (Line(points={{60,-80},{70,-80}}, color={0,0,0}));
      connect(terminalBoxE.plug_sn,             aimcE.plug_sn) 
        annotation (Line(points={{-6,-70},{-8,-70},{-6,-70}},
                                                     color={0,0,255}));
      connect(terminalBoxE.plug_sp,             aimcE.plug_sp) 
        annotation (Line(points={{6,-70},{6,-70}}, color={0,0,255}));
      connect(currentRMSsensorE.plug_p, currentRMSsensorM.plug_p) 
        annotation (Line(points={{-20,10},{1.83697e-015,10},{1.83697e-015,10}},
                                color={0,0,255}));
      connect(currentRMSsensorE.plug_n,terminalBoxE.plugSupply) 
        annotation (Line(points={{-20,-10},{-20,-60},{0,-60},{0,-68}},
                     color={0,0,255}));

      connect(sineVoltage.plug_p, idealCloser.plug_p) annotation (Line(
          points={{-1.83697e-015,50},{1.83697e-015,50},{1.83697e-015,40}},
          color={0,0,255},
          smooth=Smooth.None));
      connect(idealCloser.plug_n, currentRMSsensorM.plug_p) annotation (Line(
          points={{-1.83697e-015,20},{1.83697e-015,20},{1.83697e-015,10}},
          color={0,0,255},
          smooth=Smooth.None));
      connect(booleanStep.y, idealCloser.control) annotation (Line(
          points={{-39,30},{-7,30}},
          color={255,0,255},
          smooth=Smooth.None));
      annotation (
        Diagram(graphics),
        experiment(
          StopTime=1.5,
          Interval=0.0002,
          Tolerance=1e-05),
        experimentSetupOutput(doublePrecision=true),
        Documentation(info="<HTML>
<h4>Direct on line (DOL) starting of an asynchronous induction machine with squirrel cage</h4>
<p>
At start time tStart three phase voltage is supplied to the 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.AsynchronousInductionMachines.AIM_SquirrelCage\">asynchronous induction machine with squirrel cage</a>.
The machine starts from standstill, accelerating 
inertias against load torque quadratic dependent on speed, finally reaching nominal speed.</p>

<p>
Simulate for 1.5 seconds and plot (versus time):
</p>
 
<ul>
<li><code>currentRMSsensorM|E.I</code>: equivalent RMS stator current</li>
<li><code>aimcM|E.wMechanical</code>: machine speed</li>
<li><code>aimcM|E.tauElectrical</code>: machine torque</li>
</ul>
</HTML>"));
    end AIMC_DOL;

    model AIMS_start
      "Starting of asynchronous induction machine with slip rings"
      extends Modelica.Icons.Example;

      constant Integer m=3 "Number of phases";
      parameter Modelica.SIunits.Voltage VsNominal=100
        "Nominal RMS voltage per phase";
      parameter Modelica.SIunits.Frequency fsNominal=50 "Nominal frequency";
      parameter Modelica.SIunits.Time tOn=0.1 "Start time of machine";
      parameter Modelica.SIunits.Resistance RStart=0.16 "Starting resistance";
      parameter Modelica.SIunits.Time tRheostat=1.0
        "Time of shortening the rheostat";
      parameter Modelica.SIunits.Torque T_Load=161.4 "Nominal load torque";
      parameter Modelica.SIunits.AngularVelocity w_Load(displayUnit="1/min")=1440.45*2*Modelica.Constants.pi/60
        "Nominal load speed";
      parameter Modelica.SIunits.Inertia J_Load=0.29 "Load inertia";

      parameter Integer p = 2 "Number of pole pairs";
      parameter Modelica.SIunits.Resistance Rs = 0.03
        "Stator resistance per phase";
      parameter Modelica.SIunits.Inductance Lssigma = 3*(1 - sqrt(1 - 0.0667))/(2*Modelica.Constants.pi*fsNominal)
        "Stator stray inductance per phase";
      parameter Modelica.SIunits.Inductance Lm = 3*sqrt(1 - 0.0667)/(2*Modelica.Constants.pi*fsNominal)
        "Main field inductance";
      parameter Modelica.SIunits.Inductance Lrsigma = 3*(1 - sqrt(1 - 0.0667))/(2*Modelica.Constants.pi*fsNominal)
        "Rotor stray inductance (equivalent three phase winding)";
      parameter Modelica.SIunits.Resistance Rr = 0.04
        "Rotor resistance (equivalent three phase winding)";

      Modelica.Electrical.Analog.Basic.Ground ground 
        annotation (Placement(transformation(
            origin={-90,90},
            extent={{-10,-10},{10,10}},
            rotation=270)));
      Modelica.Electrical.MultiPhase.Basic.Star star(final m=m) 
        annotation (Placement(transformation(extent={{-50,80},{-70,100}}, rotation=
                0)));
      Modelica.Electrical.MultiPhase.Sources.SineVoltage sineVoltage(
        final m=m,
        freqHz=fill(fsNominal, m),
        V=fill(sqrt(2.0/3.0)*VsNominal, m)) 
        annotation (Placement(transformation(
            origin={0,60},
            extent={{10,-10},{-10,10}},
            rotation=270)));
      Modelica.Electrical.MultiPhase.Ideal.IdealClosingSwitch idealCloser(
        final m=m) 
        annotation (Placement(transformation(
            origin={0,30},
            extent={{-10,10},{10,-10}},
            rotation=270)));
      Modelica.Blocks.Sources.BooleanStep booleanStep[m](
        each startTime=tOn) 
        annotation (Placement(transformation(extent={{-60,20},{-40,40}}, rotation=0)));
      Modelica.Electrical.Machines.Sensors.CurrentQuasiRMSSensor
        currentRMSsensorElectricalE 
        annotation (Placement(transformation(
            origin={30,-10},
            extent={{-10,10},{10,-10}},
            rotation=270)));
      Modelica.Electrical.Machines.Utilities.TerminalBox terminalBoxElectrical(
                              terminalConnection=
                                        "D") 
        annotation (Placement(transformation(extent={{20,-40},{40,-20}}, rotation=0)));
      Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines.AIM_SlipRing
        aimsE(
        p=p,
        fsNominal=
                 fsNominal,
        Rs=Rs,
        Lssigma=Lssigma,
        Lm=Lm,
        Lrsigma=Lrsigma,
        Rr=Rr,
        turnsRatio=0.7,
        useTurnsRatio=true,
        alpha20s(displayUnit="1/K"),
        alpha20r(displayUnit="1/K")) 
        annotation (Placement(transformation(extent={{20,-60},{40,-40}}, rotation=0)));
      Electrical.Machines.Utilities.SwitchedRheostat rheostatElectricalE(
                            RStart=RStart, tStart=tRheostat) 
       annotation (Placement(transformation(extent={{0,-60},{20,-40}}, rotation=0)));
      Modelica.Mechanics.Rotational.Components.Inertia loadInertiaElectricalE(
                                                                   J=J_Load) 
        annotation (Placement(transformation(extent={{50,-60},{70,-40}}, rotation=0)));
      Modelica.Mechanics.Rotational.Sources.QuadraticSpeedDependentTorque
        quadraticLoadTorqueElectricalE(
        tau_nominal=-T_Load,
        TorqueDirection=false,
        useSupport=false,
        w_nominal=w_Load) 
        annotation (Placement(transformation(extent={{100,-60},{80,-40}}, rotation=
                0)));
      Modelica.Electrical.Machines.Sensors.CurrentQuasiRMSSensor
        currentRMSsensorM 
        annotation (Placement(transformation(
            origin={-30,-10},
            extent={{-10,-10},{10,10}},
            rotation=270)));
      Modelica.Electrical.Machines.Utilities.TerminalBox terminalBox(
        terminalConnection=
                  "D") 
        annotation (Placement(transformation(extent={{-20,-40},{-40,-20}}, rotation=
               0)));
      Machines.AsynchronousInductionMachines.AIM_SlipRing aimsM(
        Rs=Rs,
        Lssigma=Lssigma,
        Lm=Lm,
        Lrsigma=Lrsigma,
        Rr=Rr,
        p=p,
        TurnsRatio=0.7,
      useTurnsRatio=true,
        alpha20s(displayUnit="1/K"),
        alpha20r(displayUnit="1/K")) 
        annotation (Placement(transformation(extent={{-20,-60},{-40,-40}}, rotation=
               0)));
      Electrical.Machines.Utilities.SwitchedRheostat rheostatM(
          RStart=RStart, tStart=tRheostat) 
                                    annotation (Placement(transformation(extent={{0,-60},
                {-20,-40}},      rotation=0)));
      Modelica.Mechanics.Rotational.Components.Inertia loadInertiaM(
                                                         J=J_Load) 
        annotation (Placement(transformation(extent={{-50,-60},{-70,-40}}, rotation=
               0)));
      Modelica.Mechanics.Rotational.Sources.QuadraticSpeedDependentTorque
        quadraticLoadTorqueM(
        tau_nominal=-T_Load,
        TorqueDirection=false,
        useSupport=false,
        w_nominal=w_Load) 
        annotation (Placement(transformation(extent={{-100,-60},{-80,-40}},
              rotation=0)));
    equation
      connect(star.pin_n, ground.p) 
        annotation (Line(points={{-70,90},{-80,90}}, color={0,0,255}));
      connect(sineVoltage.plug_n, star.plug_p) 
        annotation (Line(points={{1.83697e-015,70},{1.83697e-015,90},{-50,90}},
            color={0,0,255}));
      connect(sineVoltage.plug_p, idealCloser.plug_p) 
        annotation (Line(points={{-1.83697e-015,50},{0,48},{1.22461e-015,46},{1.83697e-015,
              46},{1.83697e-015,40}},            color={0,0,255}));
      connect(loadInertiaElectricalE.flange_b, quadraticLoadTorqueElectricalE.
        flange) 
        annotation (Line(points={{70,-50},{80,-50}}, color={0,0,0}));
      connect(aimsE.flange,   loadInertiaElectricalE.flange_a) 
                                                     annotation (Line(points={{40,
              -50},{50,-50}}, color={0,0,0}));
      connect(booleanStep.y, idealCloser.control)   annotation (Line(points={{-39,
              30},{-7,30}}, color={255,0,255}));
      connect(idealCloser.plug_n, currentRMSsensorElectricalE.plug_p) 
                                                             annotation (Line(
            points={{-1.83697e-015,20},{-1.83697e-015,10},{30,10},{30,-1.77636e-015}},
            color={0,0,255}));
      connect(terminalBoxElectrical.plug_sn,             aimsE.plug_sn) 
                                                               annotation (Line(
            points={{24,-40},{24,-40}}, color={0,0,255}));
      connect(terminalBoxElectrical.plug_sp,             aimsE.plug_sp) 
                                                               annotation (Line(
            points={{36,-40},{36,-40}}, color={0,0,255}));
      connect(terminalBoxElectrical.plugSupply, currentRMSsensorElectricalE.plug_n) 
                                                                 annotation (Line(
            points={{30,-38},{30,-29},{30,-20},{30,-20}},
                                        color={0,0,255}));
      connect(rheostatElectricalE.plug_p, aimsE.plug_rp) 
                                                       annotation (Line(points={{20,-44},
              {20,-44}},      color={0,0,255}));
      connect(rheostatElectricalE.plug_n, aimsE.plug_rn) 
                                                       annotation (Line(points={{20,-56},
              {20,-56}},      color={0,0,255}));
      connect(loadInertiaM.flange_b, quadraticLoadTorqueM.flange) 
        annotation (Line(points={{-70,-50},{-80,-50}}, color={0,0,0}));
      connect(aimsM.flange,   loadInertiaM.flange_a) annotation (Line(points={{-40,
              -50},{-50,-50}}, color={0,0,0}));
      connect(rheostatM.plug_n, aimsM.plug_rn)         annotation (Line(points={{-20,-56},
              {-20,-56}},          color={0,0,255}));
      connect(terminalBox.plug_sp,             aimsM.plug_sp) 
                                                             annotation (Line(
            points={{-36,-40},{-36,-40}}, color={0,0,255}));
      connect(terminalBox.plug_sn,             aimsM.plug_sn) 
                                                             annotation (Line(
            points={{-24,-40},{-24,-40}}, color={0,0,255}));
      connect(currentRMSsensorM.plug_n,terminalBox.plugSupply) annotation (Line(
            points={{-30,-20},{-30,-29},{-30,-29},{-30,-38}},
                                          color={0,0,255}));
      connect(currentRMSsensorM.plug_p, idealCloser.plug_n) 
                                                           annotation (Line(points={{-30,0},
              {-30,10},{-1.83697e-015,10},{-1.83697e-015,20}},
            color={0,0,255}));
      connect(aimsM.plug_rp, rheostatM.plug_p) 
                                             annotation (Line(points={{-20,-44},{-20,
              -44}},     color={0,0,255}));

      annotation (
        Diagram(graphics),
        experiment(
          StopTime=1.5,
          Interval=0.001,
          Tolerance=1e-05),
        experimentSetupOutput(doublePrecision=true),
        Documentation(info="<HTML>
<h4>Starting of an asynchronous induction machine with slipring rotor resistance starting</h4>
<p>
At start time <code>tOn</code> three phase voltage is supplied to the 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.AsynchronousInductionMachines.AIM_SlipRing\">asynchronous induction machine with sliprings</a>.
The machine starts from standstill, accelerating inertias against load torque quadratic dependent on speed,
using a starting resistance. At time tRheostat external rotor resistance is shortened, finally reaching nominal speed.</p>

<p>
Simulate for 1.5 seconds and plot (versus time):
</p>

<ul>
<li><code>currentRMSsensorM|E.I</code>: equivalent RMS stator current</li>
<li><code>aimsM/E.wMechanical</code>: machine speed</li>
<li><code>aimsM|E.tauElectrical</code>: machine torque</li>
</ul>
</HTML>"));
    end AIMS_start;

    model SMPM_Inverter
      "Starting of permanent magnet synchronous machine with inverter"
      extends Modelica.Icons.Example;

      constant Integer m=3 "Number of phases";
      parameter Modelica.SIunits.Voltage VsNominal=100
        "Nominal RMS voltage per phase";
      parameter Modelica.SIunits.Frequency fsNominal=50 "Nominal frequency";
      parameter Modelica.SIunits.Frequency f=50 "Actual frequency";
      parameter Modelica.SIunits.Time tRamp=1 "Frequency ramp";
      parameter Modelica.SIunits.Torque T_Load=181.4 "Nominal load torque";
      parameter Modelica.SIunits.Time tStep=2 "Time of load torque step";
      parameter Modelica.SIunits.Inertia J_Load=0.29 "Load inertia";

      parameter Integer p = 2 "Number of pole pairs";
      parameter Modelica.SIunits.Resistance Rs=0.03
        "Warm stator resistance per phase";
      parameter Modelica.SIunits.Inductance Lssigma=3*(1 - sqrt(1 - 0.0667))/(2*Modelica.Constants.pi*fsNominal)
        "Stator stray inductance per phase";
      parameter Modelica.SIunits.Inductance Lmd=3*sqrt(1 - 0.0667)/(2*Modelica.Constants.pi*fsNominal)
        "Main field inductance";
      parameter Modelica.SIunits.Inductance Lmq=1.0*Lmd "Main field inductance";
      parameter Modelica.SIunits.Inductance Lrsigmad=3*(1 - sqrt(1 - 0.0667))/(2*Modelica.Constants.pi*fsNominal)
        "Rotor stray inductance (equivalent three phase winding)";
      parameter Modelica.SIunits.Inductance Lrsigmaq=0.8*Lrsigmad
        "Rotor stray inductance (equivalent three phase winding)";
      parameter Modelica.SIunits.Resistance Rrd=0.04
        "Warm rotor resistance (equivalent three phase winding)";
      parameter Modelica.SIunits.Resistance Rrq=1.0*Rrd
        "Warm rotor resistance (equivalent three phase winding)";

      Modelica.Electrical.Analog.Basic.Ground ground 
        annotation (Placement(transformation(
            origin={-90,90},
            extent={{-10,-10},{10,10}},
            rotation=270)));
      Modelica.Electrical.MultiPhase.Basic.Star star(
        final m=m) 
        annotation (Placement(transformation(extent={{-50,80},{-70,100}}, rotation=
                0)));
      Modelica.Electrical.MultiPhase.Sources.SignalVoltage signalVoltage(
        final m=m) 
        annotation (Placement(transformation(
            origin={0,60},
            extent={{10,-10},{-10,10}},
            rotation=270)));
      Modelica.Blocks.Sources.Ramp ramp(
        height=f,
        duration=tRamp) 
        annotation (Placement(transformation(extent={{-80,50},{-60,70}}, rotation=0)));
      Modelica.Electrical.Machines.Utilities.VfController vfController(
        final m=m,
        VNominal=VsNominal,
        fNominal=fsNominal,
        BasePhase=+Modelica.Constants.pi/2) 
        annotation (Placement(transformation(extent={{-40,50},{-20,70}}, rotation=0)));
      Modelica.Electrical.Machines.Sensors.CurrentQuasiRMSSensor
        currentRMSsensorM 
        annotation (Placement(transformation(
            origin={0,30},
            extent={{-10,10},{10,-10}},
            rotation=270)));
      Modelica.Electrical.Machines.Utilities.TerminalBox terminalBoxM 
        annotation (Placement(transformation(extent={{-20,0},{0,20}}, rotation=0)));
      Machines.SynchronousInductionMachines.SM_PermanentMagnet smpmM(
        Rs=Rs,
        Lssigma=Lssigma,
        Lmd=Lmd,
        Lmq=Lmq,
        Lrsigmad=Lrsigmad,
        Lrsigmaq=Lrsigmaq,
        Rrd=Rrd,
        Rrq=Rrq,
        useDamperCage=true,
        p=p,
        alpha20s(displayUnit="1/K"),
        alpha20r(displayUnit="1/K")) 
        annotation (Placement(transformation(extent={{-20,-20},{0,0}}, rotation=0)));
      Modelica.Electrical.Machines.Sensors.RotorDisplacementAngle rotorAngleM(
         p=p) 
        annotation (Placement(transformation(
            origin={20,-10},
            extent={{-10,10},{10,-10}},
            rotation=270)));
      Modelica.Mechanics.Rotational.Components.Inertia loadInertiaM(
        J=J_Load) 
        annotation (Placement(transformation(extent={{40,-20},{60,0}}, rotation=0)));
      Modelica.Mechanics.Rotational.Sources.TorqueStep torqueStepM(
        startTime=tStep,
        stepTorque=-T_Load,
        useSupport=false) 
        annotation (Placement(transformation(extent={{90,-20},{70,0}}, rotation=0)));
      Modelica.Electrical.Machines.Sensors.CurrentQuasiRMSSensor
        currentRMSsensorE 
        annotation (Placement(transformation(
            origin={-40,30},
            extent={{-10,-10},{10,10}},
            rotation=270)));
      Modelica.Electrical.Machines.Utilities.TerminalBox terminalBoxE 
        annotation (Placement(transformation(extent={{-20,-52},{0,-32}}, rotation=0)));
      Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM_PermanentMagnet
        smpmE(
        Rs=Rs,
        Lssigma=Lssigma,
        Lmd=Lmd,
        Lmq=Lmq,
        Lrsigmad=
                Lrsigmad,
        Lrsigmaq=Lrsigmaq,
        Rrd=
           Rrd,
        Rrq=Rrq,
        useDamperCage=
                   true,
        p=p,
        alpha20s(displayUnit="1/K"),
        alpha20r(displayUnit="1/K")) 
        annotation (Placement(transformation(extent={{-20,-72},{0,-52}}, rotation=0)));
      Modelica.Electrical.Machines.Sensors.RotorDisplacementAngle rotorAngleE(
        p=p) 
        annotation (Placement(transformation(
            origin={20,-62},
            extent={{-10,10},{10,-10}},
            rotation=270)));
      Modelica.Mechanics.Rotational.Components.Inertia loadInertiaE(
        J=J_Load) 
        annotation (Placement(transformation(extent={{40,-72},{60,-52}}, rotation=0)));
      Modelica.Mechanics.Rotational.Sources.TorqueStep torqueStepE(
        startTime=tStep,
        stepTorque=-T_Load,
        useSupport=false) 
        annotation (Placement(transformation(extent={{90,-72},{70,-52}}, rotation=0)));
    equation
      connect(signalVoltage.plug_n, star.plug_p) 
        annotation (Line(points={{1.83697e-015,70},{1.83697e-015,90},{-50,90}},
            color={0,0,255}));
      connect(star.pin_n, ground.p) 
        annotation (Line(points={{-70,90},{-80,90}}, color={0,0,255}));
      connect(ramp.y, vfController.u) 
        annotation (Line(points={{-59,60},{-42,60}}, color={0,0,255}));
      connect(vfController.y, signalVoltage.v) 
        annotation (Line(points={{-19,60},{7,60}},  color={0,0,255}));
      connect(loadInertiaM.flange_b, torqueStepM.flange) 
        annotation (Line(points={{60,-10},{70,-10}}, color={0,0,0}));
      connect(signalVoltage.plug_p,currentRMSsensorM. plug_p)  annotation (Line(
            points={{-1.83697e-015,50},{0,50},{0,40},{1.83697e-015,40}},
                                                                      color={0,0,
              255}));
      connect(rotorAngleM.plug_n, smpmM.plug_sn)  annotation (Line(points={{26,-3.55271e-015},
              {26,6},{-16,6},{-16,0}},                       color={0,0,255}));
      connect(rotorAngleM.plug_p, smpmM.plug_sp)  annotation (Line(points={{14,0},{
              10,0},{6,1.47798e-015},{6,0},{-4,0}},
            color={0,0,255}));
      connect(rotorAngleM.flange,smpmM.flange) 
        annotation (Line(points={{10,-10},{5,-10},{0,-10}},   color={0,0,0}));
      connect(smpmM.flange,   loadInertiaM.flange_a) 
        annotation (Line(points={{0,-10},{40,-10}},           color={0,0,0}));
      connect(terminalBoxM.plug_sn,             smpmM.plug_sn)  annotation (Line(
            points={{-16,0},{-16,0}},                      color={0,0,255}));
      connect(terminalBoxM.plug_sp,             smpmM.plug_sp)  annotation (Line(
            points={{-4,0},{-4,-2.77556e-016},{-4,-2.43843e-022},{-4,0}},
                                                                color={0,0,255}));
      connect(terminalBoxM.plugSupply,currentRMSsensorM. plug_n) annotation (Line(
            points={{-10,2},{-10,20},{-1.83697e-015,20}},color={0,0,255}));
      connect(loadInertiaE.flange_b, torqueStepE.flange) 
        annotation (Line(points={{60,-62},{70,-62}}, color={0,0,0}));
      connect(rotorAngleE.plug_n, smpmE.plug_sn)  annotation (Line(points={{26,-52},
              {26,-46},{-16,-46},{-16,-52}}, color={0,0,255}));
      connect(rotorAngleE.plug_p, smpmE.plug_sp)  annotation (Line(points={{14,-52},
              {-4,-52}}, color={0,0,255}));
      connect(rotorAngleE.flange,smpmE.flange) 
        annotation (Line(points={{10,-62},{0,-62}},           color={0,0,0}));
      connect(smpmE.flange,   loadInertiaE.flange_a) 
        annotation (Line(points={{0,-62},{40,-62}},           color={0,0,0}));
      connect(terminalBoxE.plug_sn,             smpmE.plug_sn)  annotation (Line(
            points={{-16,-52},{-16,-52}}, color={0,0,255}));
      connect(terminalBoxE.plug_sp,             smpmE.plug_sp)  annotation (Line(
            points={{-4,-52},{-4,-52}}, color={0,0,255}));

      connect(currentRMSsensorE.plug_p, currentRMSsensorM.plug_p)  annotation (Line(
            points={{-40,40},{1.83697e-015,40}},color={0,0,255}));
      connect(currentRMSsensorE.plug_n,terminalBoxE.plugSupply)   annotation (Line(
            points={{-40,20},{-40,-40},{-10,-40},{-10,-50}}, color={0,0,255}));
      annotation (
        Diagram(graphics),
        experiment(
          StopTime=4,
          Interval=0.0005,
          Tolerance=1e-05),
        experimentSetupOutput(doublePrecision=true),
        Documentation(info="<HTML>
<h4>Permanent magnet synchronous induction machine fed by an ideal inverter</h4>
<p>

An ideal frequency inverter is modeled by using a 
<a href=\"Modelica://Modelica.Electrical.Machines.Utilities.VfController\">VfController</a> 
and a threephase <a href=\"Modelica://Modelica.Electrical.MultiPhase.Sources.SignalVoltage\">SignalVoltage</a>.
Frequency is raised by a ramp, causing the 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.SynchronousInductionMachines.SM_PermanentMagnet\">permanent magnet synchronous induction machine</a> to start, 
and accelerate the inertias.</p>

<p>At time tStep a load step is applied. Simulate for 1.5 seconds and plot (versus time):</p>

<ul>
<li><code>currentRMSsensorM|E.I</code>: equivalent RMS stator current</li>
<licode>pmsmM|E.wMechanical</code>: machine speed</li>
<li><code>pmsmM|E.tauElectrical</code>: machine torque</li>
<li><code>rotorAnglepmsmM|E.rotorDisplacementAngle</code>: rotor displacement angle</li>
</ul>
</HTML>"));
    end SMPM_Inverter;

    model SMEE_Gen
      "Electrical excited synchronous machine operating as generator"
      extends Modelica.Icons.Example;

      constant Integer m=3 "Number of phases";
      parameter Modelica.SIunits.Voltage VsNominal=100
        "Nominal RMS voltage per phase";
      parameter Modelica.SIunits.Frequency fsNominal=50 "Nominal frequency";
      parameter Modelica.SIunits.Conversions.NonSIunits.AngularVelocity_rpm rpm
        =                                                                       1499
        "Nominal speed";
      parameter Modelica.SIunits.Current Ie = 19 "Excitation current";
      parameter Modelica.SIunits.Current Ie0 = 10 "Initial excitation current";
      parameter Modelica.SIunits.Conversions.NonSIunits.Angle_deg gamma0 = 0
        "Initial rotor displacement angle";

      parameter Integer p = 2 "Number of pole pairs";
      parameter Modelica.SIunits.Resistance Rs=0.03
        "Warm stator resistance per phase";
      parameter Modelica.SIunits.Inductance Lssigma=3*(1 - sqrt(1 - 0.0667))/(2*Modelica.Constants.pi*fsNominal)
        "Stator stray inductance per phase";
      parameter Modelica.SIunits.Inductance Lmd=3*sqrt(1 - 0.0667)/(2*Modelica.Constants.pi*fsNominal)
        "Main field inductance";
      parameter Modelica.SIunits.Inductance Lmq=0.8*Lmd "Main field inductance";
      parameter Modelica.SIunits.Inductance Lrsigmad=3*(1 - sqrt(1 - 0.0667))/(2*Modelica.Constants.pi*fsNominal)
        "Rotor stray inductance (equivalent three phase winding)";
      parameter Modelica.SIunits.Inductance Lrsigmaq=0.8*Lrsigmad
        "Rotor stray inductance (equivalent three phase winding)";
      parameter Modelica.SIunits.Resistance Rrd=0.04
        "Warm rotor resistance (equivalent three phase winding)";
      parameter Modelica.SIunits.Resistance Rrq=0.8*Rrd
        "Warm rotor resistance (equivalent three phase winding)";

      Modelica.Electrical.MultiPhase.Basic.Star star(
        final m=m) 
        annotation (Placement(transformation(extent={{-50,70},{-70,90}}, rotation=0)));
      Modelica.Electrical.Analog.Basic.Ground ground 
        annotation (Placement(transformation(
            origin={-90,80},
            extent={{-10,-10},{10,10}},
            rotation=270)));
      Modelica.Electrical.MultiPhase.Sources.SineVoltage sineVoltage(
        final m=m,
        final V=fill(VsNominal*sqrt(2), m),
        final freqHz=fill(fsNominal, m)) 
        annotation (Placement(transformation(extent={{-20,70},{-40,90}}, rotation=0)));
      Modelica.Electrical.Machines.Utilities.TerminalBox terminalBoxM 
        annotation (Placement(transformation(extent={{-20,20},{0,40}}, rotation=0)));
      Machines.SynchronousInductionMachines.SM_ElectricalExcited smeeM(
        phiMechanical(start=-(Modelica.Constants.pi +
              Modelica.SIunits.Conversions.from_deg(gamma0))/p),
        Rs=Rs,
        Lssigma=Lssigma,
        Lmd=Lmd,
        Lmq=Lmq,
        Lrsigmad=Lrsigmad,
        Lrsigmaq=Lrsigmaq,
        Rrd=Rrd,
        Rrq=Rrq,
        alpha20s(displayUnit="1/K"),
        alpha20r(displayUnit="1/K"),
        alpha20e(displayUnit="1/K")) 
        annotation (Placement(transformation(extent={{-20,0},{0,20}}, rotation=0)));

      Modelica.Electrical.Analog.Sources.RampCurrent rampCurrentM(
        duration=0.1,
        I=Ie - Ie0,
        offset=Ie0) 
        annotation (Placement(transformation(
            origin={-50,10},
            extent={{-10,-10},{10,10}},
            rotation=90)));
      Modelica.Electrical.Analog.Basic.Ground groundM 
        annotation (Placement(transformation(
            origin={-88,0},
            extent={{-10,-10},{10,10}},
            rotation=270)));
      Modelica.Electrical.Machines.Sensors.RotorDisplacementAngle rotorAngleM(
                                                                  p=p) 
        annotation (Placement(transformation(
            origin={20,10},
            extent={{-10,10},{10,-10}},
            rotation=270)));
      Modelica.Electrical.Machines.Sensors.MechanicalPowerSensor
        mechanicalPowerSensorM 
        annotation (Placement(transformation(extent={{40,0},{60,20}}, rotation=0)));
      Modelica.Mechanics.Rotational.Sources.ConstantSpeed constantSpeedM(
        final w_fixed=Modelica.SIunits.Conversions.from_rpm(rpm), useSupport=false) 
        annotation (Placement(transformation(extent={{90,0},{70,20}}, rotation=0)));
      Modelica.Electrical.Machines.Utilities.TerminalBox terminalBoxE 
        annotation (Placement(transformation(extent={{-20,-40},{0,-20}}, rotation=0)));
      Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM_ElectricalExcited
        smeeE(
        phiMechanical(       start=-(Modelica.Constants.pi + Modelica.SIunits.Conversions.from_deg(gamma0))/p),
        Rs=Rs,
        Lssigma=Lssigma,
        Lmd=Lmd,
        Lmq=Lmq,
        Lrsigmad=
        Lrsigmad,
        Lrsigmaq=Lrsigmaq,
        Rrd=Rrd,
        Rrq=Rrq,
        alpha20s(displayUnit="1/K"),
        alpha20r(displayUnit="1/K"),
        alpha20e(displayUnit="1/K")) 
        annotation (Placement(transformation(extent={{-20,-60},{0,-40}}, rotation=0)));
      Modelica.Electrical.Analog.Sources.RampCurrent rampCurrentE(
        duration=0.1,
        I=Ie - Ie0,
        offset=Ie0) 
        annotation (Placement(transformation(
            origin={-50,-50},
            extent={{-10,-10},{10,10}},
            rotation=90)));
      Modelica.Electrical.Analog.Basic.Ground groundE 
        annotation (Placement(transformation(
            origin={-88,-60},
            extent={{-10,-10},{10,10}},
            rotation=270)));
      Modelica.Electrical.Machines.Sensors.RotorDisplacementAngle rotorAngleE(
        p=p) 
        annotation (Placement(transformation(
            origin={20,-50},
            extent={{-10,10},{10,-10}},
            rotation=270)));
      Modelica.Electrical.Machines.Sensors.MechanicalPowerSensor
        mechanicalPowerSensorE 
        annotation (Placement(transformation(extent={{40,-60},{60,-40}}, rotation=0)));
      Modelica.Mechanics.Rotational.Sources.ConstantSpeed constantSpeedE(
        final w_fixed=Modelica.SIunits.Conversions.from_rpm(rpm), useSupport=false) 
        annotation (Placement(transformation(extent={{90,-60},{70,-40}}, rotation=0)));
    equation
      connect(rotorAngleE.plug_n,smeeE. plug_sn)  annotation (Line(points={{26,-40},
              {26,-30},{-16,-30},{-16,-40}}, color={0,0,255}));
      connect(rotorAngleE.plug_p,smeeE. plug_sp)  annotation (Line(points={{14,-40},
              {-4,-40}}, color={0,0,255}));
      connect(rotorAngleE.flange,smeeE.flange) 
        annotation (Line(points={{10,-50},{0,-50}},           color={0,0,0}));
      connect(star.pin_n, ground.p) 
        annotation (Line(points={{-70,80},{-80,80}}, color={0,0,255}));
      connect(star.plug_p, sineVoltage.plug_n)   annotation (Line(points={{-50,80},
              {-40,80}}, color={0,0,255}));
      connect(smeeE.flange,  mechanicalPowerSensorE. flange_a) 
        annotation (Line(points={{0,-50},{40,-50}},           color={0,0,0}));
      connect(mechanicalPowerSensorE.flange_b,constantSpeedE. flange) 
        annotation (Line(points={{60,-50},{70,-50}}, color={0,0,0}));
      connect(rampCurrentE.p,groundE. p) annotation (Line(points={{-50,-60},{-78,
              -60}}, color={0,0,255}));
      connect(rampCurrentE.p,smeeE. pin_en)  annotation (Line(points={{-50,-60},{
              -40,-60},{-40,-56},{-20,-56}}, color={0,0,255}));
      connect(rampCurrentE.n,smeeE. pin_ep)  annotation (Line(points={{-50,-40},{
              -40,-40},{-40,-44},{-20,-44}}, color={0,0,255}));
      connect(smeeE.plug_sn,terminalBoxE.plug_sn)               annotation (Line(
            points={{-16,-40},{-16,-40}}, color={0,0,255}));
      connect(smeeE.plug_sp,terminalBoxE.plug_sp)               annotation (Line(
            points={{-4,-40},{-4,-40}}, color={0,0,255}));
      connect(rotorAngleM.plug_n, smeeM.plug_sn)  annotation (Line(points={{26,20},
              {26,30},{-16,30},{-16,20}}, color={0,0,255}));
      connect(rotorAngleM.plug_p, smeeM.plug_sp)  annotation (Line(points={{14,20},
              {-4,20}}, color={0,0,255}));
      connect(rotorAngleM.flange,smeeM.flange) 
        annotation (Line(points={{10,10},{5,10},{0,10}},    color={0,0,0}));
      connect(smeeM.flange,   mechanicalPowerSensorM.flange_a) 
        annotation (Line(points={{0,10},{40,10}},           color={0,0,0}));
      connect(mechanicalPowerSensorM.flange_b, constantSpeedM.flange) 
        annotation (Line(points={{60,10},{70,10}}, color={0,0,0}));
      connect(rampCurrentM.p, groundM.p) annotation (Line(points={{-50,0},{-58,
              0},{-64,5.56792e-016},{-64,-1.83697e-015},{-78,-1.83697e-015}},
                                                                            color={
              0,0,255}));
      connect(rampCurrentM.p, smeeM.pin_en)  annotation (Line(points={{-50,0},{-40,0},
              {-40,4},{-20,4}},                                  color={0,0,255}));
      connect(rampCurrentM.n, smeeM.pin_ep)  annotation (Line(points={{-50,20},{-40,
              20},{-40,16},{-20,16}}, color={0,0,255}));
      connect(smeeM.plug_sn,terminalBoxM.plug_sn)               annotation (Line(
            points={{-16,20},{-16,20}}, color={0,0,255}));
      connect(smeeM.plug_sp,terminalBoxM.plug_sp)               annotation (Line(
            points={{-4,20},{-4,20}}, color={0,0,255}));
      connect(sineVoltage.plug_p,terminalBoxE.plugSupply)  annotation (Line(points=
              {{-20,80},{-10,80},{-10,40},{-30,40},{-30,-20},{-10,-20},{-10,-38}},
            color={0,0,255}));
      connect(sineVoltage.plug_p,terminalBoxM.plugSupply)  annotation (Line(points=
              {{-20,80},{-10,80},{-10,22}}, color={0,0,255}));

      annotation (
        Diagram(graphics),
        experiment(
          StopTime=30,
          Interval=0.005,
          Tolerance=1e-05),
        experimentSetupOutput(doublePrecision=true),
        Documentation(info="<HTML>
<h4>Electrical excited synchronous induction machine as generator</h4>
<p>
An 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.SynchronousInductionMachines.SM_ElectricalExcited\">electrically excited synchronous generator</a> is connected to the grid and driven with constant speed. 
Since speed is slightly smaller than synchronous speed corresponding to mains frequency, 
rotor angle is very slowly increased. This allows to see several charactersistics dependent on rotor angle.
</p>

<p>
Simulate for 30 seconds and plot (versus <code>rotorAngleM.rotorDisplacementAngle</code>):
</p>

<ul>
<li><code>speedM|E.tauElectrical</code>: machine torque</li>
<li><code>mechanicalPowerSensorM|E.P</code>: mechanical power</li>
</ul>
</HTML>"));
    end SMEE_Gen;

    model SMR_Inverter
      "Starting of synchronous reluctance machine with inverter"
      extends Modelica.Icons.Example;

      constant Integer m=3 "Number of phases";
      parameter Modelica.SIunits.Voltage VsNominal=100
        "Nominal RMS voltage per phase";
      parameter Modelica.SIunits.Frequency fsNominal=50 "Nominal frequency";
      parameter Modelica.SIunits.Frequency f=50 "Actual frequency";
      parameter Modelica.SIunits.Time tRamp=1 "Frequency ramp";
      parameter Modelica.SIunits.Torque T_Load=46 "Nominal load torque";
      parameter Modelica.SIunits.Time tStep=1.2 "Nime of load torque step";
      parameter Modelica.SIunits.Inertia J_Load=0.29 "Load inertia";

      parameter Integer p = 2 "Number of pole pairs";
      parameter Modelica.SIunits.Resistance Rs=0.03
        "Warm stator resistance per phase";
      parameter Modelica.SIunits.Inductance Lssigma=3*(1 - sqrt(1 - 0.0667))/(2*Modelica.Constants.pi*fsNominal)
        "Stator stray inductance per phase";
      parameter Modelica.SIunits.Inductance Lmd=3*sqrt(1 - 0.0667)/(2*Modelica.Constants.pi*fsNominal)
        "Main field inductance";
      parameter Modelica.SIunits.Inductance Lmq=0.8*Lmd "Main field inductance";
      parameter Modelica.SIunits.Inductance Lrsigmad=3*(1 - sqrt(1 - 0.0667))/(2*Modelica.Constants.pi*fsNominal)
        "Rotor stray inductance (equivalent three phase winding)";
      parameter Modelica.SIunits.Inductance Lrsigmaq=0.8*Lrsigmad
        "Rotor stray inductance (equivalent three phase winding)";
      parameter Modelica.SIunits.Resistance Rrd=0.04
        "Warm rotor resistance (equivalent three phase winding)";
      parameter Modelica.SIunits.Resistance Rrq=0.8*Rrd
        "Warm rotor resistance (equivalent three phase winding)";

      Modelica.Electrical.Analog.Basic.Ground ground 
        annotation (Placement(transformation(
            origin={-90,90},
            extent={{-10,-10},{10,10}},
            rotation=270)));
      Modelica.Electrical.MultiPhase.Basic.Star star(
        final m=m) 
        annotation (Placement(transformation(extent={{-50,80},{-70,100}}, rotation=
                0)));
      Modelica.Electrical.MultiPhase.Sources.SignalVoltage signalVoltage(
        final m=m) 
        annotation (Placement(transformation(
            origin={0,60},
            extent={{10,-10},{-10,10}},
            rotation=270)));
      Modelica.Blocks.Sources.Ramp ramp(height=f, duration=tRamp) 
        annotation (Placement(transformation(extent={{-80,50},{-60,70}}, rotation=0)));
      Modelica.Electrical.Machines.Utilities.VfController vfController(
        final m=m,
        VNominal=VsNominal,
        fNominal=fsNominal) 
        annotation (Placement(transformation(extent={{-40,50},{-20,70}}, rotation=0)));
      Modelica.Electrical.Machines.Sensors.CurrentQuasiRMSSensor
        currentRMSsensorM 
        annotation (Placement(transformation(
            origin={-20,30},
            extent={{-10,10},{10,-10}},
            rotation=270)));
      Modelica.Electrical.Machines.Utilities.TerminalBox terminalBoxM 
        annotation (Placement(transformation(extent={{-30,0},{-10,20}}, rotation=0)));
      Machines.SynchronousInductionMachines.SM_ReluctanceRotor smrM(
        p=p,
        Rs=Rs,
        Lssigma=Lssigma,
        Lmd=Lmd,
        Lmq=Lmq,
        Lrsigmad=Lrsigmad,
        Lrsigmaq=Lrsigmaq,
        Rrd=Rrd,
        Rrq=Rrq,
        alpha20s(displayUnit="1/K"),
        alpha20r(displayUnit="1/K")) 
        annotation (Placement(transformation(extent={{-30,-20},{-10,0}}, rotation=0)));
      Modelica.Electrical.Machines.Sensors.RotorDisplacementAngle rotorAngleM(
        p=p) 
        annotation (Placement(transformation(
            origin={10,-10},
            extent={{10,-10},{-10,10}},
            rotation=90)));
      Modelica.Mechanics.Rotational.Components.Inertia loadInertiaM(
        J=J_Load) 
        annotation (Placement(transformation(extent={{30,-20},{50,0}}, rotation=0)));
      Modelica.Mechanics.Rotational.Sources.TorqueStep torqueStepM(
        startTime=tStep,
        stepTorque=-T_Load,
        useSupport=false) 
        annotation (Placement(transformation(extent={{80,-20},{60,0}}, rotation=0)));
      Modelica.Electrical.Machines.Sensors.CurrentQuasiRMSSensor
        currentRMSsensorE 
        annotation (Placement(transformation(
            origin={-60,30},
            extent={{-10,-10},{10,10}},
            rotation=270)));
      Modelica.Electrical.Machines.Utilities.TerminalBox terminalBoxE 
        annotation (Placement(transformation(extent={{-30,-60},{-10,-40}}, rotation=
               0)));
      Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM_ReluctanceRotor
        smrE(
        p=p,
        Rs=Rs,
        Lssigma=Lssigma,
        Lmd=Lmd,
        Lmq=Lmq,
        Lrsigmad=
                Lrsigmad,
        Lrsigmaq=Lrsigmaq,
        Rrd=
           Rrd,
        Rrq=Rrq,
        alpha20s(displayUnit="1/K"),
        alpha20r(displayUnit="1/K")) 
        annotation (Placement(transformation(extent={{-30,-80},{-10,-60}}, rotation=
               0)));
      Modelica.Electrical.Machines.Sensors.RotorDisplacementAngle rotorAngleE(
        p=p) 
        annotation (Placement(transformation(
            origin={10,-70},
            extent={{10,-10},{-10,10}},
            rotation=90)));
      Modelica.Mechanics.Rotational.Components.Inertia loadInertiaE(
        J=J_Load) 
        annotation (Placement(transformation(extent={{30,-80},{50,-60}}, rotation=0)));
      Modelica.Mechanics.Rotational.Sources.TorqueStep torqueStepE(
        startTime=tStep,
        stepTorque=-T_Load,
        useSupport=false) 
        annotation (Placement(transformation(extent={{80,-80},{60,-60}}, rotation=0)));
    equation
      connect(signalVoltage.plug_n, star.plug_p) 
        annotation (Line(points={{1.83697e-015,70},{1.83697e-015,90},{-50,90}},
            color={0,0,255}));
      connect(star.pin_n, ground.p) 
        annotation (Line(points={{-70,90},{-80,90}}, color={0,0,255}));
      connect(smrE.flange,   loadInertiaE.flange_a) annotation (Line(points={{-10,
              -70},{30,-70}}, color={0,0,0}));
      connect(ramp.y, vfController.u) 
        annotation (Line(points={{-59,60},{-42,60}}, color={0,0,255}));
      connect(vfController.y, signalVoltage.v) 
        annotation (Line(points={{-19,60},{7,60}},  color={0,0,255}));
      connect(loadInertiaE.flange_b, torqueStepE.flange) 
        annotation (Line(points={{50,-70},{60,-70}}, color={0,0,0}));
      connect(smrE.plug_sn,rotorAngleE. plug_n)  annotation (Line(points={{-26,-60},
              {-26,-52},{16,-52},{16,-60}}, color={0,0,255}));
      connect(smrE.plug_sp,rotorAngleE. plug_p)  annotation (Line(points={{-14,-60},
              {4,-60}}, color={0,0,255}));
      connect(smrE.flange,  rotorAngleE. flange) 
        annotation (Line(points={{-10,-70},{0,-70}},            color={0,0,0}));
      connect(terminalBoxE.plug_sp,            smrE. plug_sp)  annotation (Line(
            points={{-14,-60},{-14,-60}}, color={0,0,255}));
      connect(terminalBoxE.plug_sn,            smrE. plug_sn)  annotation (Line(
            points={{-26,-60},{-26,-60}}, color={0,0,255}));
      connect(terminalBoxE.plugSupply,currentRMSsensorE. plug_n) annotation (Line(
            points={{-20,-58},{-20,-40},{-60,-40},{-60,20}}, color={0,0,255}));
      connect(smrM.flange,   loadInertiaM.flange_a) annotation (Line(points={{-10,
              -10},{30,-10}}, color={0,0,0}));
      connect(loadInertiaM.flange_b, torqueStepM.flange) 
        annotation (Line(points={{50,-10},{60,-10}}, color={0,0,0}));
      connect(smrM.plug_sn, rotorAngleM.plug_n)  annotation (Line(points={{-26,0},
              {-26,8},{16,8},{16,0}},                        color={0,0,255}));
      connect(smrM.plug_sp, rotorAngleM.plug_p)  annotation (Line(points={{-14,0},
              {4,0}},                                                        color=
              {0,0,255}));
      connect(smrM.flange,   rotorAngleM.flange) 
        annotation (Line(points={{-10,-10},{0,-10}},            color={0,0,0}));
      connect(terminalBoxM.plug_sp,             smrM.plug_sp)  annotation (Line(
            points={{-14,0},{-14,0}},                      color={0,0,255}));
      connect(terminalBoxM.plug_sn,             smrM.plug_sn)  annotation (Line(
            points={{-26,0},{-26,0}},                      color={0,0,255}));
      connect(currentRMSsensorM.plug_n,terminalBoxM.plugSupply)  annotation (Line(
            points={{-20,20},{-20,11},{-20,2},{-20,2}},
                                       color={0,0,255}));
      connect(signalVoltage.plug_p, currentRMSsensorM.plug_p) annotation (Line(
            points={{-1.83697e-015,50},{-1.83697e-015,40},{-20,40}},
                                                                 color={0,0,255}));
      connect(signalVoltage.plug_p, currentRMSsensorE.plug_p) annotation (Line(
            points={{-1.83697e-015,50},{0,50},{0,40},{-60,40}},
                                                              color={0,0,255}));

      annotation (
        Diagram(graphics),
        experiment(
          StopTime=1.5,
          Interval=0.001,
          Tolerance=1e-05),
        experimentSetupOutput(doublePrecision=true),
        Documentation(info="<HTML>
<h4>Synchronous induction machine with reluctance rotor fed by an ideal inverter</h4>
<p>
An ideal frequency inverter is modeled by using a 
<a href=\"Modelica://Modelica.Electrical.Machines.Utilities.VfController\">VfController</a> 
and a threephase <a href=\"Modelica://Modelica.Electrical.MultiPhase.Sources.SignalVoltage\">SignalVoltage</a>.
Frequency is raised by a ramp, causing the 
<a href=\"Modelcia://Modelica.Magnetic.FundamentalWave.Machines.SynchronousInductionMachines.SM_ReluctanceRotor\">reluctance machine</a> to start, 
and accelerating inertias. At time <code>tStep</code> a load step is applied.
</p>

<p>
Simulate for 1.5 seconds and plot (versus time):
</p>

<ul>
<li><code>currentRMSsensorM|E.I</code>: equivalent RMS stator current</li>
<li><code>smrM|E.wMechanical</code>: machine speed</li>
<li><code>smrM|E.tauElectrical</code>: machine torque</li>
<li><code>rotorAngleM|R.rotorDisplacementAngle</code>: rotor displacement angle</li>
</ul>
</HTML>"));
    end SMR_Inverter;
    annotation (Documentation(info="<html>
<p>Examples comparing the models of
<a href=\"Modelica://Modelica.Electrical.Machines.BasicMachines\">Electrical.Machines.BasicMachines</a> with 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines\">Magnetic.FundamentalWave.Machines</a>.
</p>
</html>"));
  end Examples;

  package Components "Basic fundamental wave components"

    model Ground "Magnetic ground"

      Interfaces.PositiveMagneticPort port_p "Complex magnetic port" 
        annotation (Placement(transformation(extent={{-10,90},{10,110}}, rotation=0)));

    equation
      port_p.V_m = Complex(0,0);
      annotation (Diagram(graphics={
            Line(points={{0,100},{0,50}}, color={255,128,0}),
            Line(points={{-60,50},{60,50}}, color={255,128,0}),
            Line(points={{-40,30},{40,30}}, color={255,128,0}),
            Line(points={{-20,10},{20,10}}, color={255,128,0})}),
            Icon(graphics={
            Line(points={{0,100},{0,50}}, color={255,128,0}),
            Line(points={{-60,50},{60,50}}, color={255,128,0}),
            Line(points={{-40,30},{40,30}}, color={255,128,0}),
            Line(points={{-20,10},{20,10}}, color={255,128,0})}),
      Documentation(info="<html>

<p>
Grounding of the complex magnetic potential. Each magnetic circuit has to be grounded at least one point of the circuit.
</p>

</html>"));
    end Ground;

    model Reluctance "Salient reluctance"

      import Modelica.Constants.pi;

      extends Interfaces.PartialTwoPort;
      parameter Modelica.Magnetic.FundamentalWave.Types.SalientReluctance R_m(d(
            start=1), q(start=1)) "Magnetic reluctance in d=re and q=im axis";

    equation
      (pi/2) * V_m.re = R_m.d * Phi.re;
      (pi/2) * V_m.im = R_m.q * Phi.im;
      annotation (Icon(graphics={
            Rectangle(
              extent={{-70,30},{70,-30}},
              lineColor={255,128,0},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Line(points={{-96,0},{-70,0}}, color={255,128,0}),
            Line(points={{70,0},{96,0}}, color={255,128,0}),
            Text(
              extent={{0,60},{0,100}},
              lineColor={255,128,0},
              textString=                          "%name"),
            Text(
              extent={{0,-70},{0,-110}},
              lineColor={0,0,0},
              textString=
                   "R_m.re=%R_m.re, R_m.im=%R_m.im")}),Documentation(info="<html>
<p>
The salient reluctance models the relationship between the complex magnetic potential difference
<img src=\"../Images/Magnetic/FundamentalWave/V_m.png\"> and the complex magnetic flux <img src=\"../Images/Magnetic/FundamentalWave/Phi.png\">,
</p>

<p>
&nbsp;&nbsp;<img src=\"../Images/Magnetic/FundamentalWave/Components/reluctance.png\">
</p>

<p>which can also be expressed in terms complex phasors:</p>

<p> 
&nbsp;&nbsp;<img src=\"../Images/Magnetic/FundamentalWave/Components/reluctance_alt.png\">
</p> 
</html>"));
    end Reluctance;

    model SinglePhaseElectroMagneticConverter
      "Single phase electro magnetic converter"

      import Modelica.Constants.pi;

      Modelica.Electrical.Analog.Interfaces.PositivePin pin_p "Positive pin" 
        annotation (Placement(transformation(
            origin={-100,100},
            extent={{-10,-10},{10,10}},
            rotation=180)));
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_n "Negative pin" 
        annotation (Placement(transformation(
            origin={-100,-100},
            extent={{-10,-10},{10,10}},
            rotation=180)));

      Interfaces.PositiveMagneticPort port_p "Positive complex magnetic port" 
        annotation (Placement(transformation(extent={{90,90},{110,110}}, rotation=0)));
      Interfaces.NegativeMagneticPort port_n "Negative complex magnetic port" 
        annotation (Placement(transformation(extent={{90,-110},{110,-90}}, rotation=
               0)));

      parameter Real effectiveTurns "Effective number of turns";
      parameter Modelica.SIunits.Angle windingAngle
        "Angle of winding axis (with respect to fundamental)";

      // Local electric single phase quantities
      Modelica.SIunits.Voltage v "Voltage drop";
      Modelica.SIunits.Current i "Current";

      // Local electromagnetic fundamental wave quantities
      Modelica.SIunits.ComplexMagneticPotentialDifference V_m
        "Complex magnetic potential difference";
      Modelica.SIunits.ComplexMagneticFlux Phi "Complex magnetic flux";

      final parameter Complex rotator = Modelica.ComplexMath.exp(Complex(0,windingAngle))
        "Equivalent vector representation of windingAngle";

    equation
      // Complex magnetic flux into positive port
      port_p.Phi = Phi;

      // Complex magnetic potential difference
      port_p.V_m - port_n.V_m = V_m;
      port_p.Phi + port_n.Phi = Complex(0,0);

      // Voltage equation
      v = pin_p.v - pin_n.v;

      // Current equations
      i = pin_p.i;
      pin_p.i + pin_n.i = 0;

      // Complex magnetic potential difference from currents, number
      // of turns and angles of winding axis
      // V_m.re = (2/pi) * effectiveTurns*cos(windingAngle)*i;
      // V_m.im = (2/pi) * effectiveTurns*sin(windingAngle)*i;
      V_m = (2.0/pi) * effectiveTurns*rotator*i;

      // Induced voltages from complex magnetic flux, number of turns
      // and angles of winding axis
      // -v = effectiveTurns*real(rotator*Complex(der(Phi.re),der(Phi.im));
      -v = effectiveTurns*cos(windingAngle)*der(Phi.re)
         + effectiveTurns*sin(windingAngle)*der(Phi.im);

      annotation (Diagram(coordinateSystem(
            preserveAspectRatio=false,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics),
                           Icon(coordinateSystem(
            preserveAspectRatio=false,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Ellipse(
              extent={{-60,60},{58,0}},
              lineColor={0,0,255},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{-58,0},{60,-60}},
              lineColor={0,0,255},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Rectangle(
              extent={{-60,60},{0,-60}},
              lineColor={0,0,255},
              pattern=LinePattern.None,
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Line(points={{100,-100},{94,-100},{84,-98},{76,-94},{64,-86},{50,-72},{
                  42,-58},{36,-40},{30,-18},{30,0},{30,18},{34,36},{46,66},{62,84},
                  {78,96},{90,100},{100,100}}, color={255,128,0}),
            Line(points={{0,60},{-100,60},{-100,100}}, color={0,0,255}),
            Line(points={{0,-60},{-100,-60},{-100,-98}}, color={0,0,255}),
            Text(
              extent={{0,160},{0,120}},
              lineColor={0,0,255},
              fillColor={255,128,0},
              fillPattern=FillPattern.Solid,
              textString=
                   "%name")}),
      Documentation(info="<html>
<p>
The single phase winding has an effective number of turns, <img src=\"../Images/Magnetic/FundamentalWave/effectiveTurns.png\"> and a respective winding angle, <img src=\"../Images/Magnetic/FundamentalWave/windingAngle.png\">. The current in winding is <img src=\"../Images/Magnetic/FundamentalWave/i.png\">.
</p>

<p>
The total complex magnetic potential difference of the single phase winding is determined by: 
</p>

<p>
&nbsp;&nbsp;<img src=\"../Images/Magnetic/FundamentalWave/Components/singlephaseconverter_vm.png\">
</p>

<p>
In this equation the magneto motive forc is aligned with the winding axis. 
</p>

<p>
The voltage <img src=\"../Images/Magnetic/FundamentalWave/v.png\"> induced in the winding depends on the cosine between the the winding angle and the angle of the complex magnetic flux. Additionally, the magnitudes of the induced voltages are propotional to the respective number of turns. This relationship can be modeled by means of</p>

<p>
&nbsp;&nbsp;<img src=\"../Images/Magnetic/FundamentalWave/Components/singlephaseconverter_phi.png\">
</p>

<p>The single phase electro magnetic converter is a special case of the 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Components.MultiPhaseElectroMagneticConverter\">MultiPhaseElectroMagneticConverter</a>
</p>

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Components.MultiPhaseElectroMagneticConverter\">MultiPhaseElectroMagneticConverter</a>
</p>

</html>"));
    end SinglePhaseElectroMagneticConverter;

    model MultiPhaseElectroMagneticConverter
      "Multi phase electro magnetic converter"

      import Modelica.Constants.pi;

      // constant Modelica.SIunits.Angle offset = 0.0000
      //   "Development constant to be removed in the final version";
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_p(
        final m=m) "Positive plug" 
        annotation (Placement(transformation(
            origin={-100,100},
            extent={{-10,-10},{10,10}},
            rotation=180)));
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_n(
        final m=m) "Negative plug" 
        annotation (Placement(transformation(
            origin={-100,-100},
            extent={{-10,-10},{10,10}},
            rotation=180)));

      Interfaces.PositiveMagneticPort port_p "Positive complex magnetic port" 
        annotation (Placement(transformation(extent={{90,90},{110,110}}, rotation=0)));
      Interfaces.NegativeMagneticPort port_n "Negative complex magnetic port" 
        annotation (Placement(transformation(extent={{90,-110},{110,-90}}, rotation=
               0)));

      parameter Integer m = 3 "Number of phases";
      parameter Real effectiveTurns[m] "Effective number of turns";
      parameter Modelica.SIunits.Angle windingAngle[m]
        "Angle of winding axis (with respect to fundamental)";

      // Local electric multi phase quantities
      Modelica.SIunits.Voltage v[m] "Voltage drop";
      Modelica.SIunits.Current i[m] "Current";

      // Local electromagnetic fundamental wave quantities
      Modelica.SIunits.ComplexMagneticPotentialDifference V_m
        "Complex magnetic potential difference";
      Modelica.SIunits.ComplexMagneticFlux Phi "Complex magnetic flux";

      // A technical solution with a rotator cannot be applied to the equations below
      // final parameter Complex rotator[m] = {Modelica.ComplexMath.exp(Complex(0,windingAngle[k])) for k in 1:m}
      //  "Equivalent vector representation of windingAngle";

    equation
      // Flux into positive port
      port_p.Phi = Phi;

      // Magneto motive force
      port_p.V_m - port_n.V_m = V_m;
      port_p.Phi + port_n.Phi = Complex(0,0);

      // Voltage equation
      v = plug_p.pin.v - plug_n.pin.v;

      // Current equations
      i = plug_p.pin.i;
      plug_p.pin.i + plug_n.pin.i = zeros(m);

      // Complex magnetic potential difference from currents, number
      // of turns and angles of winding axis
      V_m.re = (2.0/pi) * sum( effectiveTurns[k]*cos(windingAngle[k])*i[k] for k in 1:m);
      V_m.im = (2.0/pi) * sum( effectiveTurns[k]*sin(windingAngle[k])*i[k] for k in 1:m);

      // Induced voltages from complex magnetic flux, number of turns
      // and angles of winding axis
      for k in 1:m loop
        -v[k] = effectiveTurns[k]*cos(windingAngle[k])*der(Phi.re)
              + effectiveTurns[k]*sin(windingAngle[k])*der(Phi.im);
      end for;

      annotation (Diagram(graphics),
                           Icon(graphics={
            Ellipse(
              extent={{-60,60},{58,0}},
              lineColor={0,0,255},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Ellipse(
              extent={{-58,0},{60,-60}},
              lineColor={0,0,255},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Rectangle(
              extent={{-60,60},{0,-60}},
              lineColor={0,0,255},
              pattern=LinePattern.None,
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Line(points={{100,-100},{94,-100},{84,-98},{76,-94},{64,-86},{50,-72},{
                  42,-58},{36,-40},{30,-18},{30,0},{30,18},{34,36},{46,66},{62,84},
                  {78,96},{90,100},{100,100}}, color={255,128,0}),
            Line(points={{0,60},{-100,60},{-100,100}}, color={0,0,255}),
            Line(points={{0,-60},{-100,-60},{-100,-98}}, color={0,0,255}),
            Text(
              extent={{0,160},{0,120}},
              lineColor={0,0,255},
              fillColor={255,128,0},
              fillPattern=FillPattern.Solid,
              textString=
                   "%name")}),
        Documentation(info="<html>

<p>
Each phase <img src=\"../Images/Magnetic/FundamentalWave/k.png\"> of an <img src=\"../Images/Magnetic/FundamentalWave/m.png\"> phase winding has an effective number of turns, <img src=\"../Images/Magnetic/FundamentalWave/effectiveTurns_k.png\"> and an respective winging angle <img src=\"../Images/Magnetic/FundamentalWave/windingAngle_k.png\"> and a phase current <img src=\"../Images/Magnetic/FundamentalWave/i_k.png\">. 
</p>

<p>
The total complex magnetic potential difference of the mutli phase winding is determined by:
</p>

<p>
&nbsp;&nbsp;<img src=\"../Images/Magnetic/FundamentalWave/Components/multiphaseconverter_vm.png\">
</p>

<p>
In this equation each contribution of a winding magneto motive force on the total complex magnetic potential difference is aligned with the respective winding axis. 
</p>

<p>
The voltages <img src=\"../Images/Magnetic/FundamentalWave/v_k.png\"> induced in each winding depend on the cosinus between the the winding angle and the angle of the complex magnetic flux. Additionally, the magnitudes of the induced voltages are propotional to the respective number of turns. This relationship can be modeled by means of</p>

<p>
&nbsp;&nbsp;<img src=\"../Images/Magnetic/FundamentalWave/Components/multiphaseconverter_phi.png\">
</p>

<p>for <img src=\"../Images/Magnetic/FundamentalWave/k_in_1_m.png\"> and is also illustrated by the following figure:</p>

<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\">
  <caption align=\"bottom\"><b>Fig:</b> Winding axis and location of complex magnetic flux</caption>
  <tr>
    <td>
      <img src=\"../Images/Magnetic/FundamentalWave/Components/coupling.png\">
    </td>
  </tr>
</table> 

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Components.SinglePhaseElectroMagneticConverter\">SinglePhaseElectroMagneticConverter</a>
<p>
</p>
</html>"));
    end MultiPhaseElectroMagneticConverter;

    model Idle "Salient reluctance"
      extends Interfaces.PartialTwoPort;
    equation
      Phi = Complex(0,0);
      annotation (Icon(graphics={
            Text(
              extent={{0,60},{0,100}},
              lineColor={255,128,0},
              textString=                          "%name"),
            Rectangle(
              extent={{-100,40},{100,-40}},
              lineColor={255,255,255},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Line(points={{-100,0},{-40,0}}, color={255,128,0}),
            Line(points={{40,0},{100,0}}, color={255,128,0})}),
        Documentation(info="<html>
<p>
This is a simple idle running branch.
</p>

<h4>See also</h4>
<p>
<a href=\"Modelica.Magnetic.FundamentalWave.Components.Short\">Short</a>
</p>

</html>"),
        Diagram(graphics={
            Line(points={{-100,0},{-60,0}}, color={255,128,0}),
            Line(points={{60,0},{100,0}}, color={255,128,0}),
            Line(points={{-60,0},{-40,2},{-18,6},{0,14},{12,26}}, color={255,128,0}),
            Line(points={{60,0},{40,-2},{18,-6},{0,-14},{-12,-26}}, color={255,128,
                  0})}));
    end Idle;

    model Short "Salient reluctance"
      extends Interfaces.PartialTwoPortElementary;

    equation
      connect(port_p, port_n) annotation (Line(points={{-100,5.55112e-16},{-1,5.55112e-16},
              {-1,5.55112e-16},{100,5.55112e-16}},              color={255,128,0}));
      annotation (Icon(graphics={
            Text(
              extent={{0,60},{0,100}},
              lineColor={255,128,0},
              textString =                         "%name"),
            Rectangle(
              extent={{-100,40},{100,-40}},
              lineColor={255,255,255},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Line(points={{-100,0},{100,0}}, color={255,128,0})}),
        Documentation(info="<html>
<p>
This is a simple short cut branch.
</p>

<h4>See also</h4>
<p>
<a href=\"Modelica.Magnetic.FundamentalWave.Components.Idle\">Idle</a>
</p>

</html>"),
        Diagram(graphics));
    end Short;
    annotation (DymolaStoredErrors, Documentation(info="<html>
<p>Basic components of the FundamentalWave library for modeling magnetic circuits. Machine specific components are 
located at <a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.Components\">Machines.Components</a>.</p>
</html>"));
  end Components;

  package Machines
    "Machine components and modelsElectric machine models based on FundamentalWave package"

    package AsynchronousInductionMachines "Asynchronous inductioin machines"

      model AIM_SquirrelCage
        "Asynchronous induction machine with squirrel cage"
        extends
          Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine(
          is(start=zeros(m)),
          Rs(start=0.03),
          Lssigma(start=3*(1 - sqrt(1 - 0.0667))/(2*pi*fsNominal)),
          final L0(d=2.0*Lm/3.0/effectiveStatorTurns^2, q=2.0*Lm/3.0/effectiveStatorTurns^2),
          redeclare final
            Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines.ThermalAmbientAIMC
            thermalAmbient(final Tr=TrOperational),
          redeclare final
            Modelica.Electrical.Machines.Interfaces.AsynchronousInductionMachines.ThermalPortAIMC
            thermalPort,
          redeclare final
            Modelica.Electrical.Machines.Interfaces.AsynchronousInductionMachines.ThermalPortAIMC
            internalThermalPort);

        parameter Modelica.SIunits.Inductance Lm(start=3*sqrt(1 - 0.0667)/(2*pi*fsNominal))
          "Main field inductance" 
           annotation(Dialog(group="Nominal resistances and inductances"));
        parameter Modelica.SIunits.Inductance Lrsigma(start=3*(1 - sqrt(1 - 0.0667))/(2*pi*fsNominal))
          "Rotor leakage inductance w.r.t. stator side" 
           annotation(Dialog(group="Nominal resistances and inductances"));
        parameter Modelica.SIunits.Resistance Rr(start=0.04)
          "Rotor resistance w.r.t. stator side" 
           annotation(Dialog(tab="Nominal resistances and inductances"));
        parameter Modelica.SIunits.Temperature TrRef(start=293.15)
          "Reference temperature of rotor resistance" 
           annotation(Dialog(tab="Nominal resistances and inductances"));
        parameter Modelica.Electrical.Machines.Thermal.Alpha20 alpha20r(start=0)
          "Temperature coefficient of rotor resistance at 20 degC" 
           annotation(Dialog(tab="Nominal resistances and inductances"));
        parameter Modelica.SIunits.Temperature TrOperational(start=293.15)
          "Operational temperature of rotor resistance" 
           annotation(Dialog(group="Operational temperatures", enable=not useThermalPort));

        Modelica.Magnetic.FundamentalWave.Machines.Components.SymmetricMultiPhaseCageWinding
          rotorCageWinding(
          final Lsigma=Lrsigma,
          final m=m,
          final effectiveTurns=effectiveStatorTurns,
          final useHeatPort=true,
          final RRef=Rr,
          final TRef=TrRef,
          final alpha20=alpha20r,
          final TOperational=TrRef)
          "Symmetric rotor cage winding including resistances and stray inductances"
          annotation (Placement(transformation(extent={{10,-40},{-10,-20}}, rotation=0)));

        annotation (Diagram(graphics),
                             Icon(graphics),
        Documentation(info="<html>
<p>
Resistances and stray inductances of the machine refer to the stator phases. The symmetry of the stator and rotor is assumed. Only losses in stator and rotor resistances are taken into account. 
</p>

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.AsynchronousInductionMachines.AIM_SlipRing\">AIM_SlipRing</a>,
</p>
</html>"));
      equation
        connect(airGap.port_rn, rotorCageWinding.port_n) annotation (Line(
            points={{-10,-10},{-10,-20},{-10,-20},{-10,-30}},
            color={255,128,0},
            smooth=Smooth.None));
        connect(airGap.port_rp, rotorCageWinding.port_p) annotation (Line(
            points={{10,-10},{10,-20},{10,-20},{10,-30}},
            color={255,128,0},
            smooth=Smooth.None));
        connect(statorWinding.heatPort, internalThermalPort.heatPort_s) annotation (
            Line(
            points={{-10,30},{-40,30},{-40,-90}},
            color={191,0,0},
            smooth=Smooth.None));
        connect(rotorCageWinding.heatPort, internalThermalPort.heatPort_r) 
          annotation (Line(
            points={{0,-40},{-40,-40},{-40,-90}},
            color={191,0,0},
            smooth=Smooth.None));
      end AIM_SquirrelCage;

      model AIM_SlipRing "Asynchronous induction machine with slip ring rotor"
        extends
          Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine(
          is(start=zeros(m)),
          Rs(start=0.03),
          Lssigma(start=3*(1 - sqrt(1 - 0.0667))/(2*pi*fsNominal)),
          final L0(d=2.0*Lm/3.0/effectiveStatorTurns^2, q=2.0*Lm/3.0/effectiveStatorTurns^2),
          redeclare final
            Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines.ThermalAmbientAIMS
            thermalAmbient(final Tr=TrOperational),
          redeclare final
            Modelica.Electrical.Machines.Interfaces.AsynchronousInductionMachines.ThermalPortAIMS
            thermalPort,
          redeclare final
            Modelica.Electrical.Machines.Interfaces.AsynchronousInductionMachines.ThermalPortAIMS
            internalThermalPort);

        Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_rn(final m=m) 
          annotation (Placement(transformation(extent={{-110,-50},{-90,-70}},rotation=0)));
        Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_rp(final m=m) 
          annotation (Placement(transformation(extent={{-110,70},{-90,50}}, rotation=0)));

        parameter Modelica.SIunits.Inductance Lm(start=3*sqrt(1 - 0.0667)/(2*pi*fsNominal))
          "Main field inductance" 
           annotation(Dialog(tab="Nominal resistances and inductances"));
        parameter Modelica.SIunits.Inductance Lrsigma(start = 3*(1 - sqrt(1 - 0.0667))/(2*pi*fsNominal))
          "Rotor leakage inductance w.r.t. stator side" 
           annotation(Dialog(tab="Nominal resistances and inductances"));
        parameter Modelica.SIunits.Resistance Rr(start = 0.04)
          "Rotor resistance w.r.t. stator side" 
           annotation(Dialog(tab="Nominal resistances and inductances"));
        parameter Modelica.SIunits.Temperature TrRef(start=293.15)
          "Reference temperature of rotor resistance" 
           annotation(Dialog(tab="Nominal resistances and inductances"));
        parameter Modelica.Electrical.Machines.Thermal.Alpha20 alpha20r(start=0)
          "Temperature coefficient of rotor resistance at 20 degC" 
           annotation(Dialog(tab="Nominal resistances and inductances"));
        parameter Modelica.SIunits.Temperature TrOperational(start=293.15)
          "Operational temperature of rotor resistance" 
           annotation(Dialog(group="Operational temperatures", enable=not useThermalPort));

        parameter Boolean useTurnsRatio=true
          "Use TurnsRatio or calculate from locked-rotor voltage?";
        parameter Real TurnsRatio(final min=Modelica.Constants.small)=1
          "Effective number of stator turns / effective number of rotor turns" 
          annotation(Dialog(enable=useTurnsRatio));
        parameter Modelica.SIunits.Voltage VsNominal=100
          "Nominal stator voltage per phase" 
          annotation(Dialog(enable=not useTurnsRatio));
        parameter Modelica.SIunits.Voltage VrLockedRotor=100*
          (2*pi*fsNominal*Lm)/sqrt(Rs^2+(2*pi*fsNominal*(Lm+Lssigma))^2)
          "Locked rotor voltage per phase" 
          annotation(Dialog(enable=not useTurnsRatio));

      protected
        final parameter Real internalTurnsRatio=if useTurnsRatio then TurnsRatio else 
          VsNominal/VrLockedRotor*(2*pi*fsNominal*Lm)/sqrt(Rs^2+(2*pi*fsNominal*(Lm+Lssigma))^2);
      public
        Modelica.Magnetic.FundamentalWave.Machines.Components.SymmetricMultiPhaseWinding
          rotorWinding(
          final m=3,
          final Lsigma=Lrsigma,
          final effectiveTurns=effectiveStatorTurns/internalTurnsRatio,
          final useHeatPort=true,
          final RRef=Rr,
          final TRef=TrRef,
          final alpha20=alpha20r,
          final TOperational=TrOperational)
          "Symmetric rotor winding including resistances and stray inductances"
          annotation (Placement(transformation(
              origin={0,-30},
              extent={{-10,10},{10,-10}},
              rotation=90)));
      equation

        connect(rotorWinding.plug_n, plug_rn) annotation (Line(points={{-10,-40},{-10,
                -60},{-100,-60}}, color={0,0,255}));
        connect(rotorWinding.plug_p, plug_rp) annotation (Line(points={{10,-40},{10,-50},
                {-80,-50},{-80,60},{-100,60}},      color={0,0,255}));
        annotation (Diagram(graphics),
                             Icon(graphics={Line(points={{-100,50},{-100,20},{-60,20}},
                  color={0,0,255}), Line(points={{-100,-50},{-100,-20},{-60,-20}},
                  color={0,0,255})}),
        Documentation(info="<html>
<p>
Resistances and stray inductances of the machine always refer to either stator or rotor phases. The symmetry of the stator and rotor is assumed. Only losses in stator and rotor resistances are taken into account. 
</p>

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.AsynchronousInductionMachines.AIM_SquirrelCage\">AIM_SquirrelCage</a>,
</p>
</html>"));
        connect(airGap.port_rn, rotorWinding.port_n) annotation (Line(
            points={{-10,-10},{-10,-15},{-10,-15},{-10,-20}},
            color={255,128,0},
            smooth=Smooth.None));
        connect(airGap.port_rp, rotorWinding.port_p) annotation (Line(
            points={{10,-10},{10,-15},{10,-15},{10,-20}},
            color={255,128,0},
            smooth=Smooth.None));
        connect(statorWinding.heatPort, internalThermalPort.heatPort_s) annotation (
            Line(
            points={{-10,30},{-40,30},{-40,-90}},
            color={191,0,0},
            smooth=Smooth.None));
        connect(rotorWinding.heatPort, internalThermalPort.heatPort_r) annotation (
            Line(
            points={{-10,-30},{-40,-30},{-40,-90}},
            color={191,0,0},
            smooth=Smooth.None));
      end AIM_SlipRing;
    annotation (Documentation(info="<html>
<p>This package provides squirrel cage and slip ring induction machine models.</p>

<h4>See also</h4>

<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.SynchronousInductionMachines\">
   SynchronousInductionMachines</a>
</p>
</html>"));
    end AsynchronousInductionMachines;

    package SynchronousInductionMachines "Synchronous machines"

      model SM_PermanentMagnet
        "Permanent magnet synchronous machine with optional damper cage"
        import Modelica;
        extends
          Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine(
          is(start=zeros(m)),
          Rs(start=0.03),
          Lssigma(start=0.1/(2*pi*fsNominal)),
          final L0(d=2.0*Lmd/3.0/effectiveStatorTurns^2, q=2.0*Lmq/3.0/effectiveStatorTurns^2),
          redeclare final
            Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMPM
            thermalAmbient(final useDamperCage = useDamperCage, final Tr=TrOperational),
          redeclare final
            Modelica.Electrical.Machines.Interfaces.SynchronousInductionMachines.ThermalPortSMPM
            thermalPort(final useDamperCage = useDamperCage),
          redeclare final
            Modelica.Electrical.Machines.Interfaces.SynchronousInductionMachines.ThermalPortSMPM
            internalThermalPort(final useDamperCage = useDamperCage));

        parameter Modelica.SIunits.Inductance Lmd(start=0.3/(2*pi*fsNominal))
          "Main field inductance, d-axis" 
           annotation(Dialog(tab="Nominal resistances and inductances"));
        parameter Modelica.SIunits.Inductance Lmq(start=0.3/(2*pi*fsNominal))
          "Main field inductance, q-axis" 
           annotation(Dialog(tab="Nominal resistances and inductances"));

        // Rotor cage parameters
        parameter Boolean useDamperCage = true "Enable/disable damper cage" 
           annotation(Dialog(tab="Nominal resistances and inductances",group="Damper cage"));
        parameter Modelica.SIunits.Inductance Lrsigmad(start=0.05/(2*pi*fsNominal))
          "Rotor leakage inductance, d-axis, w.r.t. stator side" 
           annotation(Dialog(tab="Nominal resistances and inductances",group="Damper cage",enable=useDamperCage));
        parameter Modelica.SIunits.Inductance Lrsigmaq=Lrsigmad
          "Rotor leakage inductance, q-axis, w.r.t. stator side" 
           annotation(Dialog(tab="Nominal resistances and inductances",group="Damper cage",enable=useDamperCage));
        parameter Modelica.SIunits.Resistance Rrd(start=0.04)
          "Rotor resistance, d-axis, w.r.t. stator side" 
           annotation(Dialog(tab="Nominal resistances and inductances",group="Damper cage",enable=useDamperCage));
        parameter Modelica.SIunits.Resistance Rrq=Rrd
          "Rotor resistance , q-axis, w.r.t. stator side" 
           annotation(Dialog(tab="Nominal resistances and inductances",group="Damper cage",enable=useDamperCage));
        parameter Modelica.SIunits.Temperature TrRef(start=293.15)
          "Reference temperature of damper resistances in d- and q-axis" 
          annotation(Dialog(tab="Nominal resistances and inductances",group = "Damper cage",enable = useDamperCage));
        parameter Modelica.Electrical.Machines.Thermal.Alpha20 alpha20r(start=0)
          "Temperature coefficient of damper resistances in d- and q-axis" 
          annotation(Dialog(tab="Nominal resistances and inductances",group = "Damper cage", enable = useDamperCage));

        parameter Modelica.SIunits.Voltage VsOpenCircuit(start=112.3)
          "Open circuit RMS voltage per phase @ fsNominal" 
           annotation(Dialog(group="Excitation"));

        parameter Modelica.SIunits.Temperature TrOperational(start=293.15)
          "Operational temperature of (optional) damper cage" 
           annotation(Dialog(group="Operational temperatures", enable=not useThermalPort and useDamperCage));

      protected
        final parameter Modelica.SIunits.MagneticPotentialDifference V_mPM=
          (2/pi)*sqrt(2)*(m/2)*VsOpenCircuit/effectiveStatorTurns/(Lmd/effectiveStatorTurns^2*2*pi*fsNominal)
          "Equivalent excitation magnetic potential difference";

      public
        Modelica.Magnetic.FundamentalWave.Components.Ground groundR
          "Ground of rotor magnetic circuit" 
          annotation (Placement(transformation(extent={{-40,-30},{-20,-10}}, rotation=
                 0)));
        Modelica.Magnetic.FundamentalWave.Components.Short short if not 
          useDamperCage
          "Magnetic connection in case the damper cage is not present" 
          annotation (Placement(transformation(
              origin={0,-30},
              extent={{-10,-10},{10,10}},
              rotation=180)));
        Modelica.Magnetic.FundamentalWave.Machines.Components.SaliencyCageWinding
          rotorCage(
          final RRef(d=Rrd, q=Rrq),
          final Lsigma(d=Lrsigmad, q=Lrsigmaq),
          final effectiveTurns=sqrt(3.0/2.0)*effectiveStatorTurns,
          final useHeatPort=true,
          final TRef=TrRef,
          final alpha20=alpha20r,
          final TOperational=TrOperational) if 
          useDamperCage
          "Symmetric rotor cage winding including resistances and stray inductances"
          annotation (Placement(transformation(extent={{10,-60},{-10,-40}}, rotation=
                  0)));
        Modelica.Magnetic.FundamentalWave.Sources.ConstantMagneticPotentialDifference
          permanentMagnet(final V_m=Complex(V_mPM, 0))
          "Magnetic potential difference of permanent magnet" 
          annotation (Placement(transformation(
              origin={30,-20},
              extent={{10,-10},{-10,10}},
              rotation=270)));
      equation

        connect(permanentMagnet.port_p, short.port_p) 
                                                  annotation (Line(points={{30,-30},
                {10,-30}},color={255,128,0}));
        connect(permanentMagnet.port_p, rotorCage.port_p) 
                                                 annotation (Line(points={{30,-30},
                {30,-50},{10,-50}},color={255,128,0}));
        annotation (Diagram(graphics),
                             Icon(graphics={
              Rectangle(
                extent={{-130,10},{-100,-10}},
                lineColor={0,0,0},
                fillColor={0,255,0},
                fillPattern=FillPattern.Solid),
              Rectangle(
                extent={{-100,10},{-70,-10}},
                lineColor={0,0,0},
                fillColor={255,0,0},
                fillPattern=FillPattern.Solid),
              Ellipse(extent={{-134,34},{-66,-34}}, lineColor={0,0,255})}),
        Documentation(info="<html>
<p>
Resistances and stray inductances of the machine refer to the stator phases. The symmetry of the stator is assumed. For rotor asymmetries can be taken into account by different resistances and stray inductances in the d- and q-axis. Only losses in stator and rotor resistance are taken into account. 
</p>

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.SynchronousInductionMachines.SM_ElectricalExcited\">
   SM_ElectricalExcited</a>,
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.SynchronousInductionMachines.SM_ReluctanceRotor\">
   SM_ReluctanceRotor</a>,
</p>
</html>"));
        connect(airGap.port_rn, short.port_n) annotation (Line(
            points={{-10,-10},{-10,-20},{-10,-20},{-10,-30}},
            color={255,128,0},
            smooth=Smooth.None));
        connect(airGap.port_rn, rotorCage.port_n) annotation (Line(
            points={{-10,-10},{-10,-30},{-10,-30},{-10,-50}},
            color={255,128,0},
            smooth=Smooth.None));
        connect(airGap.port_rp, permanentMagnet.port_n) annotation (Line(
            points={{10,-10},{20,-10},{20,-10},{30,-10}},
            color={255,128,0},
            smooth=Smooth.None));
        connect(statorWinding.heatPort, internalThermalPort.heatPort_s) annotation (
            Line(
            points={{-10,30},{-40,30},{-40,-90}},
            color={191,0,0},
            smooth=Smooth.None));
        connect(rotorCage.heatPort, internalThermalPort.heatPort_r) annotation (Line(
            points={{0,-60},{-40,-60},{-40,-90}},
            color={191,0,0},
            smooth=Smooth.None));
      end SM_PermanentMagnet;

      model SM_ElectricalExcited
        "Electrical excited synchronous machine with optional damper cage"
        extends
          Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine(
          is(start=zeros(m)),
          Rs(start=0.03),
          Lssigma(start=0.1/(2*pi*fsNominal)),
          final L0(d=2.0*Lmd/3.0/effectiveStatorTurns^2, q=2.0*Lmq/3.0/effectiveStatorTurns^2),
          redeclare final
            Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMEE
            thermalAmbient(final useDamperCage = useDamperCage, final Te=TeOperational, final Tr=TrOperational),
          redeclare final
            Modelica.Electrical.Machines.Interfaces.SynchronousInductionMachines.ThermalPortSMEE
            thermalPort(final useDamperCage = useDamperCage),
          redeclare final
            Modelica.Electrical.Machines.Interfaces.SynchronousInductionMachines.ThermalPortSMEE
            internalThermalPort(final useDamperCage = useDamperCage));

        parameter Modelica.SIunits.Inductance Lmd(start=1.5/(2*pi*fsNominal))
          "Main field inductance, d-axis" 
           annotation(Dialog(tab="Nominal resistances and inductances"));
        parameter Modelica.SIunits.Inductance Lmq(start=1.5/(2*pi*fsNominal))
          "Main field inductance, q-axis" 
           annotation(Dialog(tab="Nominal resistances and inductances"));

        // Rotor cage parameters
        parameter Boolean useDamperCage = true "Enable/disable damper cage" 
          annotation(Dialog(tab="Nominal resistances and inductances", group = "DamperCage"));
        parameter Modelica.SIunits.Inductance Lrsigmad(start=0.05/(2*pi*fsNominal))
          "Rotor leakage inductance, d-axis, w.r.t. stator side" 
          annotation(Dialog(tab="Nominal resistances and inductances", group = "DamperCage", enable = useDamperCage));
        parameter Modelica.SIunits.Inductance Lrsigmaq=Lrsigmad
          "Rotor leakage inductance, q-axis, w.r.t. stator side" 
          annotation(Dialog(tab="Nominal resistances and inductances", group = "DamperCage", enable = useDamperCage));
        parameter Modelica.SIunits.Resistance Rrd(start=0.04)
          "Rotor resistance, d-axis, w.r.t. stator side" 
          annotation(Dialog(tab="Nominal resistances and inductances", group = "DamperCage", enable = useDamperCage));
        parameter Modelica.SIunits.Resistance Rrq=Rrd
          "Rotor resistance , q-axis, w.r.t. stator side" 
          annotation(Dialog(tab="Nominal resistances and inductances", group = "DamperCage", enable = useDamperCage));
        parameter Modelica.SIunits.Temperature TrRef(start=293.15)
          "Reference temperature of damper resistances in d- and q-axis" 
          annotation(Dialog(tab="Nominal resistances and inductances", group = "DamperCage", enable = useDamperCage));
        parameter Modelica.Electrical.Machines.Thermal.Alpha20 alpha20r(start=0)
          "Temperature coefficient of damper resistances in d- and q-axis" 
          annotation(Dialog(tab="Nominal resistances and inductances", group = "DamperCage", enable = useDamperCage));

        // Operational temperature
        parameter Modelica.SIunits.Temperature TrOperational(start=293.15)
          "Operational temperature of (optional) damper cage" 
           annotation(Dialog(group="Operational temperatures", enable=not useThermalPort and useDamperCage));
        parameter Modelica.SIunits.Temperature TeOperational(start=293.15)
          "Operational excitation temperature" 
           annotation(Dialog(group="Operational temperatures", enable=not useThermalPort));

        // Excitaiton parameters
        parameter Modelica.SIunits.Voltage VsNominal=100
          "Nominal stator voltage" 
           annotation(Dialog(tab="Excitation"));
        parameter Modelica.SIunits.Current Ie0=10
          "No-load excitation current @ nominal voltage and frequency" 
           annotation(Dialog(tab="Excitation"));
        parameter Modelica.SIunits.Resistance Re=2.5
          "Warm excitation resistance" 
           annotation(Dialog(tab="Excitation"));
        parameter Modelica.SIunits.Temperature TeRef(start=293.15)
          "Reference temperture of excitation resistance" 
           annotation(Dialog(tab="Excitation"));
        parameter Modelica.Electrical.Machines.Thermal.Alpha20 alpha20e(start=0)
          "Temperature coefficient of excitation resistance" 
           annotation(Dialog(tab="Excitation"));
        parameter Real sigmae(min=0, max=1)=0.025
          "Stray fraction of total excitation inductance" 
           annotation(Dialog(tab="Excitation"));
        output Modelica.SIunits.Voltage ve = pin_ep.v-pin_en.v
          "Excitation voltage";
        output Modelica.SIunits.Current ie = pin_ep.i "Excitation current";
      protected
        final parameter Real turnsRatio=
          sqrt(2)*VsNominal/(2*pi*fsNominal*Lmd*Ie0)
          "Stator current / excitation current";
        final parameter Modelica.SIunits.Inductance Lesigma=
           Lmd*turnsRatio^2*3/2 * sigmae/(1-sigmae)
          "Leakage inductance of the excitation winding";

      public
        FundamentalWave.Components.Short short if not useDamperCage
          "Magnetic connection in case the damper cage is not present" 
          annotation (Placement(transformation(
              origin={10,-40},
              extent={{-10,-10},{10,10}},
              rotation=270)));
        FundamentalWave.Machines.Components.SaliencyCageWinding rotorCage(
          final Lsigma(d=Lrsigmad, q=Lrsigmaq),
          final effectiveTurns=sqrt(3.0/2.0)*effectiveStatorTurns,
          final useHeatPort=true,
          final TRef=TrRef,
          final TOperational=TrOperational,
          final RRef(d=Rrd, q=Rrq),
          final alpha20=alpha20r) if useDamperCage
          "Symmetric rotor cage winding including resistances and stray inductances"
          annotation (Placement(transformation(extent={{10,-10},{-10,10}},   rotation=90,
              origin={40,-40})));
        FundamentalWave.Machines.Components.SinglePhaseWinding
          excitationWinding(
          final windingAngle=0,
          final RRef=Re,
          final Lsigma=Lesigma,
          final effectiveTurns=effectiveStatorTurns*turnsRatio*m/2,
          final useHeatPort=true,
          final TRef=TeRef,
          final alpha20=alpha20e,
          final TOperational=TeOperational)
          "Excitation winding including resistance and stray inductance" 
          annotation (Placement(transformation(extent={{-30,-50},{-10,-30}}, rotation=0)));
        Modelica.Electrical.Analog.Interfaces.PositivePin pin_ep 
          annotation (Placement(transformation(extent={{-110,70},{-90,50}}, rotation=0)));
        Modelica.Electrical.Analog.Interfaces.NegativePin pin_en 
          annotation (Placement(transformation(extent={{-90,-50},{-110,-70}},rotation=0)));
      equation

        connect(short.port_n, rotorCage.port_n) 
          annotation (Line(points={{10,-50},{10,-50},{40,-50}}, color={255,128,0}));
        connect(excitationWinding.port_n, short.port_n) 
          annotation (Line(points={{-10,-50},{-10,-50},{10,-50}}, color={255,128,0}));
        connect(excitationWinding.port_n, rotorCage.port_n) 
          annotation (Line(points={{-10,-50},{-10,-50},{40,-50}}, color={255,128,0}));
        connect(pin_en, excitationWinding.pin_n) 
          annotation (Line(points={{-100,-60},{-30,-60},{-30,-50}},  color={0,0,255}));
        connect(excitationWinding.pin_p, pin_ep) 
          annotation (Line(points={{-30,-30},{-80,-30},{-80,60},{-100,60}},     color={0,0,255}));
        connect(airGap.port_rn, excitationWinding.port_p) annotation (Line(
            points={{-10,-10},{-10,-20},{-10,-20},{-10,-30}},
            color={255,128,0},
            smooth=Smooth.None));
        connect(airGap.port_rp, short.port_p) annotation (Line(
            points={{10,-10},{10,-14.5},{10,-14.5},{10,-19},{10,-30},{10,-30}},
            color={255,128,0},
            smooth=Smooth.None));
        connect(airGap.port_rp, rotorCage.port_p) annotation (Line(
            points={{10,-10},{10,-30},{40,-30}},
            color={255,128,0},
            smooth=Smooth.None));
        connect(rotorCage.heatPort, internalThermalPort.heatPort_r) annotation (Line(
            points={{50,-40},{50,-80},{-40,-80},{-40,-90}},
            color={191,0,0},
            smooth=Smooth.None));
        connect(statorWinding.heatPort, internalThermalPort.heatPort_s) annotation (
            Line(
            points={{-10,30},{-40,30},{-40,-90}},
            color={191,0,0},
            smooth=Smooth.None));
        connect(excitationWinding.heatPort, internalThermalPort.heatPort_e) 
          annotation (Line(
            points={{-20,-50},{-20,-80},{-40,-80},{-40,-90}},
            color={191,0,0},
            smooth=Smooth.None));

        annotation (Diagram(graphics),
                             Icon(graphics={
              Ellipse(extent={{-134,34},{-66,-34}}, lineColor={0,0,255}),
              Line(points={{-100,50},{-100,20},{-130,20},{-130,-4}}, color={0,0,255}),
              Line(points={{-130,-4},{-129,1},{-125,5},{-120,6},{-115,5},{-111,1},{
                    -110,-4}}, color={0,0,255}),
              Line(points={{-110,-4},{-109,1},{-105,5},{-100,6},{-95,5},{-91,1},{-90,
                    -4}}, color={0,0,255}),
              Line(points={{-90,-4},{-89,1},{-85,5},{-80,6},{-75,5},{-71,1},{-70,-4}},
                  color={0,0,255}),
              Line(points={{-100,-50},{-100,-20},{-70,-20},{-70,-2}}, color={0,0,255})}),
        Documentation(info="<html>
<p>
The symmetry of the stator is assumed. For rotor asymmetries can be taken into account by different resistances and stray inductances in the d- and q-axis. Only losses in stator and rotor resistance are taken into account. 
</p>

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.SynchronousInductionMachines.SM_PermanentMagnet\">
   SM_PermanentMagnet</a>,
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.SynchronousInductionMachines.SM_ReluctanceRotor\">
   SM_ReluctanceRotor</a>,
</p>
</html>"));

      end SM_ElectricalExcited;

      model SM_ReluctanceRotor "Reluctance machine with optional damper cage"
        import Modelica.Magnetic.FundamentalWave;
        extends
          Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine(
          is(start=zeros(m)),
          Rs(start=0.03),
          Lssigma(start=0.1/(2*pi*fsNominal)),
          final L0(d=2.0*Lmd/3.0/effectiveStatorTurns^2, q=2.0*Lmq/3.0/effectiveStatorTurns^2),
          redeclare final
            Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMR
            thermalAmbient(final useDamperCage = useDamperCage, final Tr=TrOperational),
          redeclare final
            Modelica.Electrical.Machines.Interfaces.SynchronousInductionMachines.ThermalPortSMR
            thermalPort(final useDamperCage = useDamperCage),
          redeclare final
            Modelica.Electrical.Machines.Interfaces.SynchronousInductionMachines.ThermalPortSMR
            internalThermalPort(final useDamperCage = useDamperCage));

        parameter Modelica.SIunits.Temperature TrOperational(start=293.15)
          "Operational temperature of (optional) damper cage" 
           annotation(Dialog(group="Operational temperatures", enable=not useThermalPort and useDamperCage));

        parameter Modelica.SIunits.Inductance Lmd(start=2.9/(2*pi*fsNominal))
          "Main field inductance, d-axis" 
           annotation(Dialog(tab="Nominal resistances and inductances"));
        parameter Modelica.SIunits.Inductance Lmq(start=2.9/(2*pi*fsNominal))
          "Main field inductance, q-axis" 
           annotation(Dialog(tab="Nominal resistances and inductances"));

        // Rotor cage parameters
        parameter Boolean useDamperCage = true "Enable/disable damper cage" 
          annotation(Dialog(tab="Nominal resistances and inductances", group = "DamperCage"));
        parameter Modelica.SIunits.Inductance Lrsigmad(start=0.05/(2*pi*fsNominal))
          "Rotor leakage inductance, d-axis, w.r.t. stator side" 
          annotation(Dialog(tab="Nominal resistances and inductances", group = "DamperCage", enable = useDamperCage));
        parameter Modelica.SIunits.Inductance Lrsigmaq=Lrsigmad
          "Rotor leakage inductance, q-axis, w.r.t. stator side" 
          annotation(Dialog(tab="Nominal resistances and inductances", group = "DamperCage", enable = useDamperCage));
        parameter Modelica.SIunits.Resistance Rrd(start=0.04)
          "Rotor resistance, d-axis, w.r.t. stator side" 
          annotation(Dialog(tab="Nominal resistances and inductances", group = "DamperCage", enable = useDamperCage));
        parameter Modelica.SIunits.Resistance Rrq=Rrd
          "Rotor resistance , q-axis, w.r.t. stator side" 
          annotation(Dialog(tab="Nominal resistances and inductances", group = "DamperCage", enable = useDamperCage));
        parameter Modelica.SIunits.Temperature TrRef(start=293.15)
          "Reference temperature of damper resistances in d- and q-axis" 
          annotation(Dialog(tab="Nominal resistances and inductances", group = "DamperCage", enable = useDamperCage));
        parameter Modelica.Electrical.Machines.Thermal.Alpha20 alpha20r(start=0)
          "Temperature coefficient of damper resistances in d- and q-axis" 
          annotation(Dialog(tab="Nominal resistances and inductances", group = "DamperCage", enable = useDamperCage));
        Modelica.Magnetic.FundamentalWave.Components.Ground groundR
          "Ground of rotor magnetic circuit" 
          annotation (Placement(transformation(extent={{-40,-30},{-20,-10}}, rotation=0)));
        Modelica.Magnetic.FundamentalWave.Components.Short short if not useDamperCage
          "Magnetic connection in case the damper cage is not present" 
          annotation (Placement(transformation(
              origin={10,-40},
              extent={{-10,-10},{10,10}},
              rotation=270)));
        Modelica.Magnetic.FundamentalWave.Machines.Components.SaliencyCageWinding
          rotorCage(
          final RRef(d=Rrd, q=Rrq),
          final Lsigma(d=Lrsigmad, q=Lrsigmaq),
          final effectiveTurns=sqrt(3.0/2.0)*effectiveStatorTurns,
          final useHeatPort=true,
          final TRef=TrRef,
          final alpha20=alpha20r,
          final TOperational=TrOperational) if                        useDamperCage
          "Symmetric rotor cage winding including resistances and stray inductances"
          annotation (Placement(transformation(extent={{10,-10},{-10,10}},  rotation=90, origin={40,-40})));
      equation

        annotation (Diagram(graphics),
                             Icon(graphics={
              Rectangle(extent={{-130,10},{-100,-10}}, lineColor={0,0,0}),
              Rectangle(extent={{-100,10},{-70,-10}}, lineColor={0,0,0}),
              Ellipse(extent={{-134,34},{-66,-34}}, lineColor={0,0,255})}),
        Documentation(info="<html>
<p>
The symmetry of the stator is assumed. For rotor asymmetries can be taken into account by different resistances and stray inductances in the d- and q-axis. Only losses in stator and rotor resistance are taken into account. 
</p>

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.SynchronousInductionMachines.SM_ElectricalExcited\">
   SM_ElectricalExcited</a>,
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.SynchronousInductionMachines.SM_PermanentMagnet\">
   SM_PermanentMagnet</a>,
</p>
</html>"));
        connect(airGap.port_rn, short.port_n) annotation (Line(
            points={{-10,-10},{-10,-50},{10,-50}},
            color={255,128,0},
            smooth=Smooth.None));
        connect(airGap.port_rn, rotorCage.port_n) annotation (Line(
            points={{-10,-10},{-10,-50},{40,-50}},
            color={255,128,0},
            smooth=Smooth.None));
        connect(airGap.port_rp, short.port_p) annotation (Line(
            points={{10,-10},{10,-15},{10,-15},{10,-20},{10,-30},{10,-30}},
            color={255,128,0},
            smooth=Smooth.None));
        connect(airGap.port_rp, rotorCage.port_p) annotation (Line(
            points={{10,-10},{10,-30},{40,-30}},
            color={255,128,0},
            smooth=Smooth.None));
        connect(statorWinding.heatPort, internalThermalPort.heatPort_s)
          annotation (Line(
            points={{-10,30},{-40,30},{-40,-90}},
            color={191,0,0},
            smooth=Smooth.None));
        connect(rotorCage.heatPort, internalThermalPort.heatPort_r) annotation
          (Line(
            points={{50,-40},{50,-60},{-40,-60},{-40,-90}},
            color={191,0,0},
            smooth=Smooth.None));
      end SM_ReluctanceRotor;
    annotation (Documentation(info="<html>
<p>This package contains various synchronous induction machine models.</p>

<h4>See also</h4>

<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.AsynchronousInductionMachines\">
   AsynchronousInductionMachines</a>
</p>
</html>"));
    end SynchronousInductionMachines;

    package Components "Components specially for electric machines"

      model SinglePhaseWinding
        "Symmetric winding model coupling electrical and magnetic domain"

        Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort
          port_n "Negative complex magnetic port" 
          annotation (Placement(transformation(extent={{90,-110},{110,-90}}, rotation=
                 0)));
        Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort
          port_p "Positive complex magnetic port" 
          annotation (Placement(transformation(extent={{90,90},{110,110}}, rotation=0)));

        parameter Boolean useHeatPort=false
          "Enable / disable (=fixed temperatures) thermal port" 
          annotation(Evaluate=true);

        parameter Modelica.SIunits.Resistance RRef
          "Winding resistance per phase at TRef";
        parameter Modelica.SIunits.Temperature TRef(start=293.15)
          "Reference temperature of winding";
        parameter Modelica.Electrical.Machines.Thermal.Alpha20 alpha20(start=0)
          "Temperature coefficient of winding at 20 degC";
        final parameter Modelica.SIunits.LinearTemperatureCoefficient alphaRef=
          Modelica.Electrical.Machines.Thermal.convertAlpha(alpha20,TRef,293.15);
        parameter Modelica.SIunits.Temperature TOperational(start=293.15)
          "Operational temperature of winding" 
           annotation(Dialog(enable=not useHeatPort));
        parameter Modelica.SIunits.Inductance Lsigma
          "Winding stray inductance per phase";
        parameter Real effectiveTurns = 1 "Effective number of turns per phase";
        parameter Modelica.SIunits.Angle windingAngle
          "Angle of the winding axis";

        Modelica.Electrical.Analog.Interfaces.PositivePin pin_p "Positive pin" 
          annotation (Placement(transformation(
              origin={-100,100},
              extent={{-10,-10},{10,10}},
              rotation=180)));
        Modelica.Electrical.Analog.Interfaces.NegativePin pin_n "Negative pin" 
          annotation (Placement(transformation(
              origin={-100,-100},
              extent={{-10,-10},{10,10}},
              rotation=180)));
        Modelica.Electrical.Analog.Basic.Inductor strayInductor(final L=Lsigma) 
          annotation (Placement(transformation(
              origin={-10,30},
              extent={{-10,10},{10,-10}},
              rotation=270)));
        Modelica.Electrical.Analog.Basic.Resistor resistor(
          final useHeatPort=useHeatPort,
          final R=RRef,
          final T_ref=TRef,
          final alpha=alphaRef,
          final T=TOperational) 
          annotation (Placement(transformation(
              origin={-10,70},
              extent={{10,-10},{-10,10}},
              rotation=90)));
        Modelica.Magnetic.FundamentalWave.Components.SinglePhaseElectroMagneticConverter
          electroMagneticConverter(final effectiveTurns=effectiveTurns, final
            windingAngle=windingAngle) 
          annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=0)));
        Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort if useHeatPort
          "Heat ports of winding resistor" 
          annotation (Placement(transformation(extent={{-10,-110},{10,-90}})));
      equation
        connect(pin_p, resistor.p) 
          annotation (Line(points={{-100,100},{-10,100},{-10,80}}, color={0,0,255}));
        connect(resistor.n, strayInductor.p) 
          annotation (Line(points={{-10,60},{-10,40},{-10,40}},          color={0,0,
                255}));
        connect(strayInductor.n, electroMagneticConverter.pin_p) 
          annotation (Line(points={{-10,20},{-10,15},{-10,10},{-10,10}}, color={0,0,
                255}));
        connect(electroMagneticConverter.pin_n, pin_n) 
          annotation (Line(points={{-10,-10},{-10,-100},{-100,-100}}, color={0,0,255}));
        connect(electroMagneticConverter.port_p, port_p) 
          annotation (Line(points={{10,10},{10,100},{100,100}}, color={255,128,0}));
        connect(electroMagneticConverter.port_n, port_n) 
          annotation (Line(points={{10,-10},{10,-100},{100,-100}}, color={255,128,0}));
        annotation (Icon(graphics={
              Rectangle(
                extent={{-100,60},{100,-60}},
                lineColor={0,0,255},
                pattern=LinePattern.None,
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{100,-100},{94,-100},{84,-98},{76,-94},{64,-86},{50,-72},{
                    42,-58},{36,-40},{30,-18},{30,0},{30,18},{34,36},{46,66},{62,84},
                    {78,96},{90,100},{100,100}}, color={255,128,0}),
              Line(points={{40,60},{-100,60},{-100,100}}, color={0,0,255}),
              Line(points={{40,-60},{-100,-60},{-100,-98}}, color={0,0,255}),
              Line(points={{40,60},{100,20},{40,-20},{0,-20},{-40,0},{0,20},{40,20},{
                    100,-20},{40,-60}}, color={0,0,255}),
              Text(
                extent={{0,160},{0,120}},
                lineColor={0,0,255},
                fillColor={255,128,0},
                fillPattern=FillPattern.Solid,
                textString=
                     "%name")}),  Diagram(graphics),
        Documentation(info="<html>
<p>
The single phase winding consists of a 
<a href=\"Modelica://Modelica.Electrical.Analog.Basic.Resistor\">resistor</a>, a symmetrical 
<a href=\"Modelica://Modelica.Electrical.Analog.Basic.Inductor\">stray inductor</a> and a  
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Components.SinglePhaseElectroMagneticConverter\">single phase electro magnetic coupling</a>. 
</p>

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.Components.SymmetricMultiPhaseWinding\">SymmetricMultiPhaseWinding</a>,
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.Components.SymmetricMultiPhaseCageWinding\">
   SymmetricMultiPhaseCageWinding</a>,
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.Components.SaliencyCageWinding\">
   SaliencyCageWinding</a>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.Components.RotorSaliencyAirGap\">RotorSaliencyAirGap</a>
</p>
</html>"));
        connect(heatPort, resistor.heatPort) annotation (Line(
            points={{0,-100},{0,-60},{40,-60},{40,70},{0,70}},
            color={191,0,0},
            smooth=Smooth.None));
      end SinglePhaseWinding;

      model SymmetricMultiPhaseWinding
        "Symmetric winding model coupling electrical and magnetic domain"

        Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_p(
          final m=m) "Positive plug" 
          annotation (Placement(transformation(
              origin={-100,100},
              extent={{-10,-10},{10,10}},
              rotation=180)));
        Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_n(
          final m=m) "Negative plug" 
          annotation (Placement(transformation(
              origin={-100,-100},
              extent={{-10,-10},{10,10}},
              rotation=180)));
        Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort
          port_n "Negative complex magnetic port" 
          annotation (Placement(transformation(extent={{90,-110},{110,-90}}, rotation=0)));
        Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort
          port_p "Positive complex magnetic port" 
          annotation (Placement(transformation(extent={{90,90},{110,110}}, rotation=0)));

        parameter Integer m =  3 "Number of phases";
        parameter Boolean useHeatPort=false
          "Enable / disable (=fixed temperatures) thermal port" 
          annotation(Evaluate=true);

        // Resistor model
        parameter Modelica.SIunits.Resistance RRef
          "Winding resistance per phase at TRef";
        parameter Modelica.SIunits.Temperature TRef(start=293.15)
          "Reference temperature of winding";
        parameter Modelica.Electrical.Machines.Thermal.Alpha20 alpha20(start=0)
          "Temperature coefficient of winding at 20 degC";
        final parameter Modelica.SIunits.LinearTemperatureCoefficient alphaRef=
          Modelica.Electrical.Machines.Thermal.convertAlpha(alpha20,TRef,293.15);
        parameter Modelica.SIunits.Temperature TOperational(start=293.15)
          "Operational temperature of winding" 
           annotation(Dialog(enable=not useHeatPort));

        parameter Modelica.SIunits.Inductance Lsigma
          "Winding stray inductance per phase";
        parameter Real effectiveTurns = 1 "Effective number of turns per phase";

        Modelica.Magnetic.FundamentalWave.Components.MultiPhaseElectroMagneticConverter
          electroMagneticConverter(
          final m=m,
          final effectiveTurns=fill(effectiveTurns, m),
          final windingAngle=Functions.symmetricWindingAngle(m)) 
          annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=0)));
        Modelica.Electrical.MultiPhase.Basic.Inductor strayInductor(
          final m=m,
          final L=fill(Lsigma, m)) 
          annotation (Placement(transformation(
              origin={-10,30},
              extent={{-10,10},{10,-10}},
              rotation=270)));
        Modelica.Electrical.MultiPhase.Basic.Resistor resistor(
          final m=m,
          final useHeatPort=useHeatPort,
          final R=fill(RRef, m),
          final T_ref=fill(TRef,m),
          final alpha=fill(alphaRef,m),
          final T=fill(TOperational,m)) 
          annotation (Placement(transformation(
              origin={-10,70},
              extent={{-10,10},{10,-10}},
              rotation=270)));

        Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort[m] if useHeatPort
          "Heat ports of winding resistor" 
          annotation (Placement(transformation(extent={{-10,-110},{10,-90}})));
      equation
        connect(plug_p, resistor.plug_p) 
          annotation (Line(points={{-100,100},{-10,100},{-10,80}}, color={0,0,255}));
        connect(resistor.plug_n, strayInductor.plug_p) 
          annotation (Line(points={{-10,60},{-10,40},{-10,40}},
            color={0,0,255}));
        connect(strayInductor.plug_n, electroMagneticConverter.plug_p) 
          annotation (Line(points={{-10,20},{-10,16},{-10,10}}, color={0,0,255}));
        connect(electroMagneticConverter.plug_n, plug_n) 
          annotation (Line(points={{-10,-10},{-10,-100},{-100,-100}}, color={0,0,255}));
        connect(electroMagneticConverter.port_p, port_p) 
          annotation (Line(points={{10,10},{10,100},{100,100}},
            color={255,128,0}));
        connect(electroMagneticConverter.port_n, port_n) 
          annotation (Line(points={{10,-10},{10,-100},{100,-100}},
            color={255,128,0}));
        annotation (Icon(graphics={
              Rectangle(
                extent={{-100,60},{100,-60}},
                lineColor={0,0,255},
                pattern=LinePattern.None,
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{100,-100},{94,-100},{84,-98},{76,-94},{64,-86},{50,-72},{
                    42,-58},{36,-40},{30,-18},{30,0},{30,18},{34,36},{46,66},{62,84},
                    {78,96},{90,100},{100,100}}, color={255,128,0}),
              Line(points={{40,60},{-100,60},{-100,100}}, color={0,0,255}),
              Line(points={{40,-60},{-100,-60},{-100,-98}}, color={0,0,255}),
              Line(points={{40,60},{100,20},{40,-20},{0,-20},{-40,0},{0,20},{40,20},{
                    100,-20},{40,-60}}, color={0,0,255}),
              Text(
                extent={{0,160},{0,120}},
                lineColor={0,0,255},
                fillColor={255,128,0},
                fillPattern=FillPattern.Solid,
                textString=
                     "%name")}),  Diagram(graphics),
        Documentation(info="<html>
<p>
The symmetrical multi phase winding consists of a symmetrical winding 
<a href=\"Modelica://Modelica.Electrical.MultiPhase.Basic.Resistor\">resistor</a>, a symmetrical 
<a href=\"Modelica://Modelica.Electrical.MultiPhase.Basic.Inductor\">stray inductor</a> and a symmetrical 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Components.MultiPhaseElectroMagneticConverter\">multi phase electro magnetic coupling</a>. 
</p>

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.Components.SinglePhaseWinding\">SinglePhaseWinding</a>,
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.Components.SymmetricMultiPhaseCageWinding\">
   SymmetricMultiPhaseCageWinding</a>,
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.Components.SaliencyCageWinding\">
   SaliencyCageWinding</a>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.Components.RotorSaliencyAirGap\">RotorSaliencyAirGap</a>
</p>
</html>"));
        connect(resistor.heatPort, heatPort) annotation (Line(
            points={{0,70},{40,70},{40,-60},{0,-60},{0,-100}},
            color={191,0,0},
            smooth=Smooth.None));
      end SymmetricMultiPhaseWinding;

      model RotorSaliencyAirGap "Air gap model with rotor saliency"

        import Modelica.Constants.pi;

        Interfaces.PositiveMagneticPort port_sp
          "Positive complex magnetic stator port" 
          annotation (Placement(transformation(extent={{-110,90},{-90,110}}, rotation=
                 0)));
        Interfaces.NegativeMagneticPort port_sn
          "Negative complex magnetic stator port" 
          annotation (Placement(transformation(extent={{-110,-110},{-90,-90}},
                rotation=0)));
        Interfaces.PositiveMagneticPort port_rp
          "Positive complex magnetic rotor port" 
          annotation (Placement(transformation(extent={{90,90},{110,110}}, rotation=0)));
        Interfaces.NegativeMagneticPort port_rn
          "Negative complex magnetic rotor port" 
          annotation (Placement(transformation(extent={{90,-110},{110,-90}}, rotation=
                 0)));

        Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a
          "Flange of the rotor" 
          annotation (Placement(transformation(extent={{-10,110},{10,90}}, rotation=0)));
        Modelica.Mechanics.Rotational.Interfaces.Flange_a support
          "Support at which the reaction torque is acting" 
          annotation (Placement(transformation(extent={{-10,-110},{10,-90}}, rotation=
                 0)));

        parameter Integer p "Number of pole pairs";
        parameter Modelica.Magnetic.FundamentalWave.Types.SalientInductance L0(
            d(start=1), q(start=1))
          "Salient inductance of a single unchorded coil w.r.t. the fundamental wave";
        final parameter
          Modelica.Magnetic.FundamentalWave.Types.SalientReluctance R_m(d=1/L0.d,
            q=1/L0.q) "Reluctance of the air gap model";

        // Stator magnetic quantities
        Modelica.SIunits.ComplexMagneticPotentialDifference V_mss
          "Complex magnetic potential difference of stator w.r.t. stator reference frame";
        Modelica.SIunits.ComplexMagneticPotentialDifference V_msr
          "Complex magnetic potential difference of stator w.r.t. rotor reference frame";
        Modelica.SIunits.ComplexMagneticPotentialDifference V_mrr
          "Complex magnetic potential difference of rotor w.r.t. rotor reference frame";
        // Modelica.SIunits.ComplexMagneticPotentialDifference V_mrs
        //   "Complex magnetic potential difference of rotor w.r.t. stator reference frame";

        Modelica.SIunits.ComplexMagneticFlux Phi_ss
          "Complex magnetic potential difference of stator w.r.t. stator reference frame";
        Modelica.SIunits.ComplexMagneticFlux Phi_sr
          "Complex magnetic potential difference of stator w.r.t. rotor reference frame";
        Modelica.SIunits.ComplexMagneticFlux Phi_rr
          "Complex magnetic potential difference of rotor w.r.t. rotor reference frame";
        // Modelica.SIunits.ComplexMagneticFlux Phi_rs
        //   "Complex magnetic potential difference of rotor w.r.t. stator reference frame";

        // Electrical torque and mechanical angle
        Modelica.SIunits.Torque tauElectrical "Electrical torque";
        // Modelica.SIunits.Torque tauTemp "Electrical torque";
        Modelica.SIunits.Angle gamma
          "Electrical angle between rotor and stator";

        Complex rotator "Equivalent vector representation of windingAngle";

      equation
        // Stator flux into positive stator port
        port_sp.Phi = Phi_ss;
        // Balance of stator flux
        port_sp.Phi + port_sn.Phi = Complex(0,0);

        // Rotor flux into positive rotor port
        port_rp.Phi = Phi_rr;
        // Balance of rotor flux
        port_rp.Phi + port_rn.Phi = Complex(0,0);

        // Magneto motive force of stator
        port_sp.V_m - port_sn.V_m = V_mss;

        // Magneto motive force of stator
        port_rp.V_m - port_rn.V_m = V_mrr;

        // Transformation of fluxes between stator and rotor fixed frame, if wanted
        // Phi_rs.re = + Phi_rr.re * cos(gamma) - Phi_rr.im * sin(gamma);
        // Phi_rs.im = + Phi_rr.re * sin(gamma) + Phi_rr.im * cos(gamma);
        // Alternative transformation
        // Phi_rr.re = + Phi_rs.re * cos(gamma) + Phi_rs.im * sin(gamma);
        // Phi_rr.im = - Phi_rs.re * sin(gamma) + Phi_rs.im * cos(gamma);

        // Transformed stator flux is not needed
        // Phi_sr.re = + Phi_ss.re * cos(gamma) + Phi_ss.im * sin(gamma);
        // Phi_sr.im = - Phi_ss.re * sin(gamma) + Phi_ss.im * cos(gamma);
        Phi_sr = Phi_ss * Modelica.ComplexMath.conj(rotator);
        // Alternative transformation
        // Phi_ss.re = + Phi_sr.re * cos(gamma) - Phi_sr.im * sin(gamma);
        // Phi_ss.im = + Phi_sr.re * sin(gamma) + Phi_sr.im * cos(gamma);

        // Local balance of flux w.r.t. the rotor fixed frame
        Phi_sr + Phi_rr = Complex(0,0);

        // Transformation of magnetic potential difference between stator and rotor fixed frame
        // V_mrs.re = + V_mrr.re * cos(gamma) - V_mrr.im * sin(gamma);
        // V_mrs.im = + V_mrr.re * sin(gamma) + V_mrr.im * cos(gamma);
        // V_mrr.re = + V_mrs.re * cos(gamma) + V_mrs.im * sin(gamma);
        // V_mrr.im = - V_mrs.re * sin(gamma) + V_mrs.im * cos(gamma);
        // V_msr.re = + V_mss.re * cos(gamma) + V_mss.im * sin(gamma);
        // V_msr.im = - V_mss.re * sin(gamma) + V_mss.im * cos(gamma);
        V_msr = V_mss * Modelica.ComplexMath.conj(rotator);
        // V_msr.re = + V_mss.re * cos(gamma) + V_mss.im * sin(gamma);
        // V_msr.im = - V_mss.re * sin(gamma) + V_mss.im * cos(gamma);

        // Local balance of maganeto motive force
        (pi/2.0) * (V_mrr.re - V_msr.re) = Phi_rr.re*R_m.d;
        (pi/2.0) * (V_mrr.im - V_msr.im) = Phi_rr.im*R_m.q;

        // Torque
        tauElectrical = - (pi*p/2.0)*(Phi_ss.re * V_mss.im - Phi_ss.im * V_mss.re);

        flange_a.tau = tauElectrical;
        support.tau = -tauElectrical;

        // Electrical angle between stator and rotor
        gamma = p*(flange_a.phi-support.phi);
        rotator = Modelica.ComplexMath.exp(Complex(0,gamma));

        annotation (Diagram(graphics),
                             Icon(graphics={
              Ellipse(
                extent={{-100,100},{100,-100}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-100,90},{-100,60},{-80,60}}, color={255,128,0}),
              Line(points={{-100,-90},{-100,-60},{-80,-60}}, color={255,128,0}),
              Line(points={{40,60},{100,60},{100,90}}, color={255,128,0}),
              Line(points={{40,-60},{100,-60},{100,-90}}, color={255,128,0}),
              Ellipse(
                extent={{-60,80},{60,-80}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{0,80},{0,90}}, color={0,0,0})}),
          Documentation(info="<html>
<p> 
This salient air gap model can be used for machines with uniform airgaps and for machines with rotor saliencies. The air gap model is not symmetrical towards stator and rotor since it is assumed the saliency always refers to the rotor. The saliency of the air gap is represented by a main field inductance in the d- and q-axis. 
</p>

<p>
For the mechanical interaction of the air gap model with the stator and the rotor it is equipped with to 
<a href=\"Modelica://Modelica.Mechanics.Rotational.Interfaces.Flange_a\">rotational connectors</a>. The torques acting on both connectors have the same absolute values but different signs. The difference between the stator and the rotor angle, 
<img src=\"../Images/Magnetic/FundamentalWave/gamma.png\">, is required for the transformation of the magnetic stator quantities to the rotor side.</p>

<p>
The air gap model has two magnetic stator and two magnetic rotor 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Interfaces.MagneticPort\">ports</a>. The magnetic potential difference and the magnetic flux of the stator (superscript s) are transformed to the rotor fixed reference frame (superscript r). The effective reluctances of the main field with respect to the d- and q-axis are considered then in the balance equations
</p>

<p>
&nbsp;&nbsp;<img src=\"../Images/Magnetic/FundamentalWave/Machines/Components/airgap.png\">
</p>

<p>
according to the following figure. 
</p>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\">
  <caption align=\"bottom\"><b>Fig:</b> Magnetic equivalent circuit of the air gap model</caption>
  <tr>
    <td>
      <img src=\"../Images/Magnetic/FundamentalWave/Machines/Components/airgap_phasors.png\">
    </td>
  </tr>
</table> 

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.Components.SinglePhaseWinding\">SinglePhaseWinding</a>,
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.Components.SymmetricMultiPhaseWinding\">SymmetricMultiPhaseWinding</a>,
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.Components.SymmetricMultiPhaseCageWinding\">
   SymmetricMultiPhaseCageWinding</a>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.Components.SaliencyCageWinding\">
   SaliencyCageWinding</a>
</p>

</html>"),          Icon(
            Text(
              extent=[0,20; 0,-20],
              string="%name",
              style(
                color=3,
                rgbcolor={0,0,255},
                fillColor=45,
                rgbfillColor={255,128,0},
                fillPattern=1))));
      end RotorSaliencyAirGap;

      model SymmetricMultiPhaseCageWinding "Symmetrical rotor cage"

        import Modelica.Constants.pi;

        extends Interfaces.PartialTwoPortElementary;

        parameter Integer m = 3 "Number of phases";

        parameter Boolean useHeatPort=false
          "Enable / disable (=fixed temperatures) thermal port" 
          annotation(Evaluate=true);

        parameter Modelica.SIunits.Resistance RRef
          "Winding resistance per phase at TRef";
        parameter Modelica.SIunits.Temperature TRef(start=293.15)
          "Reference temperature of winding";
        parameter Modelica.Electrical.Machines.Thermal.Alpha20 alpha20(start=0)
          "Temperature coefficient of winding at 20 degC";
        final parameter Modelica.SIunits.LinearTemperatureCoefficient alphaRef=
          Modelica.Electrical.Machines.Thermal.convertAlpha(alpha20,TRef,293.15);
        parameter Modelica.SIunits.Temperature TOperational(start=293.15)
          "Operational temperature of winding" 
           annotation(Dialog(enable=not useHeatPort));

        parameter Modelica.SIunits.Inductance Lsigma "Cage stray inductance";
        parameter Real effectiveTurns = 1 "Effective number of turns";

        Modelica.SIunits.Current i[m] "Cage currents";

        Modelica.Magnetic.FundamentalWave.Components.MultiPhaseElectroMagneticConverter
          winding(
          final m=m,
          final windingAngle={2*pi*(k - 1)/m for k in 1:m},
          final effectiveTurns=fill(effectiveTurns, m)) "Symmetric winding" 
          annotation (Placement(transformation(
              origin={0,-10},
              extent={{-10,-10},{10,10}},
              rotation=90)));
        Modelica.Electrical.MultiPhase.Basic.Inductor strayInductor(
          final m=m,
          final L=fill(Lsigma, m)) 
          annotation (Placement(transformation(
              origin={-20,-30},
              extent={{10,-10},{-10,10}},
              rotation=90)));
        Modelica.Electrical.MultiPhase.Basic.Resistor resistor(
          final useHeatPort=useHeatPort,
          final m=m,
          final R=fill(RRef, m),
          final T_ref=fill(TRef, m),
          final alpha=fill(alphaRef, m),
          final T=fill(TRef, m)) 
          annotation (Placement(transformation(
              origin={-20,-70},
              extent={{10,10},{-10,-10}},
              rotation=90)));
        Modelica.Electrical.MultiPhase.Basic.Star star(
          final m=m) 
          annotation (Placement(transformation(extent={{30,-90},{50,-70}}, rotation=0)));
        Modelica.Electrical.Analog.Basic.Ground ground 
          annotation (Placement(transformation(
              origin={70,-80},
              extent={{-10,10},{10,-10}},
              rotation=270)));

        Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort if useHeatPort
          "Heat ports of winding resistor" 
          annotation (Placement(transformation(extent={{-10,-110},{10,-90}})));
        Thermal.HeatTransfer.Components.ThermalCollector thermalCollector(final m=m) if useHeatPort
          "Connector of thermal rotor resistance heat ports" 
          annotation (Placement(transformation(extent={{-70,-100},{-50,-80}})));
      initial equation
        i = zeros(m);

      equation

        i = resistor.i;

        connect(port_p, winding.port_p)                            annotation (Line(
              points={{-100,0},{-55,0},{-55,0},{-10,0}},
                               color={255,128,0}));
        connect(winding.port_n, port_n)                            annotation (Line(
              points={{10,0},{58,0},{58,0},{100,0}},
                               color={255,128,0}));
        connect(ground.p,star. pin_n) annotation (Line(points={{60,-80},{50,-80}},
              color={0,0,255}));
        connect(strayInductor.plug_n, resistor.plug_p) 
                                           annotation (Line(points={{-20,-40},{-20,
                -60}}, color={0,0,255}));
        connect(strayInductor.plug_p, winding.plug_p) annotation (Line(
            points={{-20,-20},{-10,-20}},
            color={0,0,255},
            smooth=Smooth.None));
        connect(resistor.plug_n, winding.plug_n) annotation (Line(
            points={{-20,-80},{20,-80},{20,-20},{10,-20}},
            color={0,0,255},
            smooth=Smooth.None));
        connect(star.plug_p, winding.plug_n) annotation (Line(
            points={{30,-80},{20,-80},{20,-20},{10,-20}},
            color={0,0,255},
            smooth=Smooth.None));
        annotation (Diagram(graphics),
                             Icon(graphics={
              Ellipse(
                extent={{-80,80},{80,-80}},
                lineColor={0,0,0},
                fillColor={175,175,175},
                fillPattern=FillPattern.Solid),
              Ellipse(
                extent={{-20,76},{20,36}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Ellipse(
                extent={{28,46},{68,6}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Ellipse(
                extent={{28,-8},{68,-48}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Ellipse(
                extent={{-20,-36},{20,-76}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Ellipse(
                extent={{-68,-6},{-28,-46}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Ellipse(
                extent={{-66,50},{-26,10}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-80,0},{-100,0}}, color={255,128,0}),
              Line(points={{100,0},{80,0}}, color={255,128,0}),
              Text(
                extent={{0,100},{0,140}},
                lineColor={0,0,255},
                textString =                         "%name")}),
          Documentation(info="<html>
<p>
<img src=\"../Images/Magnetic/FundamentalWave/Machines/Components/rotorcage.png\">
</p>
<p>
The symmetric rotor cage model of this library does not consist of rotor bars and end rings. Instead the symmetric cage is modeled by an equivalent symmetrical winding. The rotor cage model consists of 
<img src=\"../Images/Magnetic/FundamentalWave/m.png\"> phases. If the cage is modeled by equivalent stator winding parameters, the number of effective turns, <img src=\"../Images/Magnetic/FundamentalWave/effectiveTurns.png\">, has to be chosen equivalent to the effective number of stator turns.
</p>

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.Components.SinglePhaseWinding\">SinglePhaseWinding</a>,
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.Components.SymmetricMultiPhaseWinding\">SymmetricMultiPhaseWinding</a>,
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.Components.SaliencyCageWinding\">SaliencyCageWinding</a>,
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.Components.RotorSaliencyAirGap\">RotorSaliencyAirGap</a>
</p>
</html>"));
        connect(thermalCollector.port_a, resistor.heatPort) annotation (Line(
            points={{-60,-80},{-60,-70},{-30,-70}},
            color={191,0,0},
            smooth=Smooth.None));
        connect(thermalCollector.port_b, heatPort) annotation (Line(
            points={{-60,-100},{0,-100}},
            color={191,0,0},
            smooth=Smooth.None));
      end SymmetricMultiPhaseCageWinding;

      model SaliencyCageWinding "Rotor cage with saliency in d- and q-axis"
        extends Interfaces.PartialTwoPortElementary;

        parameter Boolean useHeatPort=false
          "Enable / disable (=fixed temperatures) thermal port" 
          annotation(Evaluate=true);

        parameter Modelica.Magnetic.FundamentalWave.Types.SalientResistance
          RRef(                                                                  d(
              start=1), q(start=1)) "Salient cage resistance";
        parameter Modelica.SIunits.Temperature TRef(start=293.15)
          "Reference temperature of winding";
        parameter Modelica.Electrical.Machines.Thermal.Alpha20 alpha20(start=0)
          "Temperature coefficient of winding at 20 degC";
        final parameter Modelica.SIunits.LinearTemperatureCoefficient alphaRef=
          Modelica.Electrical.Machines.Thermal.convertAlpha(alpha20,TRef,293.15);
        parameter Modelica.SIunits.Temperature TOperational(start=293.15)
          "Operational temperature of winding" 
           annotation(Dialog(enable=not useHeatPort));

        parameter Modelica.Magnetic.FundamentalWave.Types.SalientInductance
          Lsigma(d(start=1), q(start=1)) "Salient cage stray inductance";
        parameter Real effectiveTurns = 1 "Effective number of turns";

        Modelica.Magnetic.FundamentalWave.Types.SalientCurrent i "Cage current";

        Modelica.Magnetic.FundamentalWave.Components.MultiPhaseElectroMagneticConverter
          winding(
          final m=2,
          final windingAngle={0,Modelica.Constants.pi/2},
          final effectiveTurns=fill(effectiveTurns, 2)) "Symmetric winding" 
          annotation (Placement(transformation(
              origin={0,-10},
              extent={{-10,-10},{10,10}},
              rotation=90)));
        Modelica.Electrical.MultiPhase.Basic.Inductor strayInductor(
          final m=2,
          final L={Lsigma.d,Lsigma.q}) 
          annotation (Placement(transformation(
              origin={-20,-30},
              extent={{10,-10},{-10,10}},
              rotation=90)));
        Modelica.Electrical.MultiPhase.Basic.Resistor resistor(
          final useHeatPort=useHeatPort,
          final m=2,
          final R={RRef.d,RRef.q},
          final T_ref=fill(TRef, 2),
          final alpha=fill(alphaRef, 2),
          final T=fill(TOperational, 2)) 
          annotation (Placement(transformation(
              origin={-20,-70},
              extent={{10,10},{-10,-10}},
              rotation=90)));
        Modelica.Electrical.MultiPhase.Basic.Star star(
          final m=2) 
          annotation (Placement(transformation(extent={{28,-90},{48,-70}}, rotation=0)));
        Modelica.Electrical.Analog.Basic.Ground ground 
          annotation (Placement(transformation(
              origin={70,-80},
              extent={{-10,10},{10,-10}},
              rotation=270)));

        Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort if useHeatPort
          "Heat ports of winding resistor" 
          annotation (Placement(transformation(extent={{-10,-110},{10,-90}})));
        Thermal.HeatTransfer.Components.ThermalCollector thermalCollector(final m=2) if useHeatPort
          "Connector of thermal rotor resistance heat ports" 
          annotation (Placement(transformation(extent={{-70,-90},{-50,-70}})));
      initial equation
        i = Modelica.Magnetic.FundamentalWave.Types.Salient(0, 0);
      equation
        i.d = resistor.i[1];
        i.q = resistor.i[2];

        connect(port_p, winding.port_p)                            annotation (Line(
              points={{-100,0},{-55,0},{-55,0},{-10,0}},
                               color={255,128,0}));
        connect(winding.port_n, port_n)                            annotation (Line(
              points={{10,0},{58,0},{58,0},{100,0}},
                               color={255,128,0}));
        connect(ground.p,star. pin_n) annotation (Line(points={{60,-80},{48,-80}},
              color={0,0,255}));
        connect(strayInductor.plug_n, resistor.plug_p) 
                                           annotation (Line(points={{-20,-40},{-20,
                -60}}, color={0,0,255}));
        connect(winding.plug_n, resistor.plug_n) annotation (Line(
            points={{10,-20},{20,-20},{20,-80},{-20,-80}},
            color={0,0,255},
            smooth=Smooth.None));
        connect(star.plug_p, winding.plug_n) annotation (Line(
            points={{28,-80},{20,-80},{20,-20},{10,-20}},
            color={0,0,255},
            smooth=Smooth.None));
        connect(strayInductor.plug_p, winding.plug_p) annotation (Line(
            points={{-20,-20},{-10,-20}},
            color={0,0,255},
            smooth=Smooth.None));
        annotation (Diagram(graphics),
                             Icon(graphics={
              Ellipse(
                extent={{-80,80},{80,-80}},
                lineColor={0,0,0},
                fillColor={175,175,175},
                fillPattern=FillPattern.Solid),
              Ellipse(
                extent={{-20,76},{20,36}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Ellipse(
                extent={{28,46},{68,6}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Ellipse(
                extent={{28,-8},{68,-48}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Ellipse(
                extent={{-20,-36},{20,-76}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Ellipse(
                extent={{-68,-6},{-28,-46}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Ellipse(
                extent={{-66,50},{-26,10}},
                lineColor={0,0,0},
                fillColor={255,255,255},
                fillPattern=FillPattern.Solid),
              Line(points={{-80,0},{-100,0}}, color={255,128,0}),
              Line(points={{100,0},{80,0}}, color={255,128,0}),
              Text(
                extent={{0,100},{0,140}},
                lineColor={0,0,255},
                textString =                         "%name")}),
          Documentation(info="<html>

<p>
The salient cage model is a two axis model with two phases. The electro magnetic coupling therefore is also two phase coupling model. The angles of the two winding axis are 0 and <img src=\"../Images/Magnetic/FundamentalWave/pi_over_2.png\">. This way an asymmetrical rotor cage with different resistances and stray inductances in d- and q-axis can be modeled.
</p>

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.Components.SinglePhaseWinding\">SinglePhaseWinding</a>,
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.Components.SymmetricMultiPhaseWinding\">SymmetricMultiPhaseWinding</a>,
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.Components.SymmetricMultiPhaseCageWinding\">
   SymmetricMultiPhaseCageWinding</a>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.Components.RotorSaliencyAirGap\">RotorSaliencyAirGap</a>
</p>
</html>"));
        connect(thermalCollector.port_b,heatPort)  annotation (Line(
            points={{-60,-90},{-60,-100},{0,-100}},
            color={191,0,0},
            smooth=Smooth.None));
        connect(resistor.heatPort, thermalCollector.port_a) annotation (Line(
            points={{-30,-70},{-60,-70}},
            color={191,0,0},
            smooth=Smooth.None));
      end SaliencyCageWinding;
    annotation (Documentation(info="<html>
<p>
This package contains components for 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.AsynchronousInductionMachines\">asynchronous induction machines</a> and
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.SynchronousInductionMachines\">synchronous induction machines</a>.
</p>
</html>"));
    end Components;

    package Functions "Axiliary functions for electric machines"
      function symmetricWindingAngle
        "Winding angles of symmetric phase winding"

        import Modelica.Constants.pi;

        input Integer m "Number of phases";
        output Modelica.SIunits.Angle windingAngle[m] "Angle of wining axis";

      algorithm
        if mod(m,2) == 0 then
          // Even number of phases
          for k in 1:integer(m/2) loop
            windingAngle[k] :=(k - 1)*4*pi/m;
            windingAngle[k+integer(m/2)] := windingAngle[k] + 2*pi/m;
          end for;
        else
          // Odd number of phases
          windingAngle :={(k - 1)*2*pi/m for k in 1:m};
        end if;
      annotation (Documentation(info="<html>
<p>  
This function determines the winding angles of a symmetrical winding with <img src=\"../Images/Magnetic/FundamentalWave/m.png\"> phases. For an odd number of phases the difference of the windings angles of two adjacent phases is 
<img src=\"../Images/Magnetic/FundamentalWave/2pi_over_m.png\">. In case of an even number of phases aligned winding angles are not modeled since they do not add any information. Instead the <img src=\"../Images/Magnetic/FundamentalWave/m.png\"> windings are divided into two different groups. The first group refers to the indices <img src=\"../Images/Magnetic/FundamentalWave/k_le_m_over_2.png\">. The second group covers the indices <img src=\"../Images/Magnetic/FundamentalWave/k_gt_m_over_2.png\">. The difference of the windings angles of two adjacent phases - of both the first and the second group, respectively - is <img src=\"../Images/Magnetic/FundamentalWave/4pi_over_m.png\">. The phase shift of the two groups <img src=\"../Images/Magnetic/FundamentalWave/pi_over_2m.png\">.
</p>
</html>"));
      end symmetricWindingAngle;
      annotation (Documentation(info="<html>
<p>This package contains auxiliary functions for electric machine models.</p>
</html>"));
    end Functions;
  annotation (Documentation(info="<html>
<p>
This package contains electric machine models and 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Machines.Components\">components</a> 
for electric machines.
</p>
</html>"));
  end Machines;

  package Sources "Sources"

    model ConstantMagneticPotentialDifference
      "Source with constant magnetic potential difference"
      extends Interfaces.PartialTwoPortElementary;
      parameter Modelica.SIunits.ComplexMagneticPotentialDifference V_m=
            Complex(re=1, im=0) "Complex magnetic potential difference";

      Modelica.SIunits.ComplexMagneticFlux Phi "Complex magnetic flux";

    equation
      // Flux into positive port
      port_p.V_m - port_n.V_m = V_m;

      // Magneto motive force
      port_p.Phi = Phi;

      // Local flux balance
      port_p.Phi + port_n.Phi = Complex(0,0);

      annotation (Diagram(graphics),
                           Icon(graphics={
            Text(
              extent={{-80,-20},{-80,-40}},
              lineColor={255,128,0},
              textString=
                   "+"),
            Text(
              extent={{80,-20},{80,-40}},
              lineColor={255,128,0},
              textString=
                   "-"),
            Ellipse(
              extent={{-50,-50},{50,50}},
              lineColor={255,127,0},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Line(points={{100,0},{50,0}}, color={255,127,0}),
            Line(points={{-50,0},{-100,0}}, color={255,127,0}),
            Line(points={{-50,0},{50,0}}, color={255,127,0})}),
        Documentation(info="<html>
<p>
Source of constant magneto motive force.
</p>

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Sources.SignalMagneticPotentialDifference\">
   SignalMagneticPotentialDifference</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Sources.ConstantFlux\">ConstantFlux</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Sources.SignalFlux\">SignalFlux</a>
</p>
</html>"));
    end ConstantMagneticPotentialDifference;

    model SignalMagneticPotentialDifference
      "Source of magnetic potential difference with signal input"
      extends Interfaces.PartialTwoPortElementary;

      Modelica.ComplexBlocks.Interfaces.ComplexInput V_m
        "Complex signal input of magnetic potential difference" 
        annotation (Placement(transformation(
            origin={0,100},
            extent={{-20,-20},{20,20}},
            rotation=270)));
      Modelica.SIunits.ComplexMagneticFlux Phi "Complex magnetic flux";

    equation
      // Flux into positive port
      port_p.V_m - port_n.V_m = V_m;

      // Magneto motive force
      port_p.Phi = Phi;

      // Local flux balance
      port_p.Phi + port_n.Phi = Complex(0,0);

      annotation (Diagram(graphics),
                           Icon(graphics={
            Text(
              extent={{80,-20},{80,-40}},
              lineColor={255,128,0},
              textString=
                   "-"),
            Ellipse(
              extent={{-50,-50},{50,50}},
              lineColor={255,127,0},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Line(points={{100,0},{50,0}}, color={255,127,0}),
            Line(points={{-50,0},{-100,0}}, color={255,127,0}),
            Line(points={{-50,0},{50,0}}, color={255,127,0}),
            Line(points={{0,100},{0,50}}, color={255,127,0})}),
      Documentation(info="<html>
<p>
Source of magneto motive force with complex signal input.
</p>

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Sources.ConstantMagneticPotentialDifference\">
   ConstantMagneticPotentialDifference</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Sources.ConstantFlux\">ConstantFlux</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Sources.SignalFlux\">SignalFlux</a>
</p>

</html>"));
    end SignalMagneticPotentialDifference;

    model ConstantFlux "Source of constant magnetic flux"
      extends Interfaces.PartialTwoPortElementary;

      Modelica.SIunits.ComplexMagneticPotentialDifference V_m
        "Complex magnetic potential difference";
      parameter Modelica.SIunits.ComplexMagneticFlux Phi=
        Complex(re=1, im=0) "Complex magnetic flux";

    equation
      // Flux into positive port
      port_p.V_m - port_n.V_m = V_m;

      // Magneto motive force
      port_p.Phi = Phi;

      // Local flux balance
      port_p.Phi + port_n.Phi = Complex(0,0);

      annotation (Diagram(graphics),
                           Icon(graphics={
            Ellipse(
              extent={{-50,-50},{50,50}},
              lineColor={255,127,0},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Line(points={{100,0},{50,0}}, color={255,127,0}),
            Line(points={{-50,0},{-100,0}}, color={255,127,0}),
            Line(points={{0,50},{0,-50}}, color={255,127,0}),
            Polygon(
              points={{80,0},{60,6},{60,-6},{80,0}},
              lineColor={255,128,0},
              fillColor={255,128,0},
              fillPattern=FillPattern.Solid)}),
        Documentation(info="<html>
<p>
Source of constant magnetic flux.
</p>

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Sources.ConstantMagneticPotentialDifference\">
   ConstantMagneticPotentialDifference</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Sources.SignalMagneticPotentialDifference\">
   SignalMagneticPotentialDifference</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Sources.SignalFlux\">SignalFlux</a>
</p>

</html>"));
    end ConstantFlux;

    model SignalFlux "Source of constant magnetic flux"
      extends Interfaces.PartialTwoPortElementary;

      Modelica.SIunits.ComplexMagneticPotentialDifference V_m
        "Complex magnetic potential difference";
      Modelica.ComplexBlocks.Interfaces.ComplexInput Phi
        "Complex signal input of magnetic flux" 
        annotation (Placement(transformation(
            origin={0,100},
            extent={{-20,-20},{20,20}},
            rotation=270)));

    equation
      // Flux into positive port
      port_p.V_m - port_n.V_m = V_m;

      // Magneto motive force
      port_p.Phi = Phi;

      // Local flux balance
      port_p.Phi + port_n.Phi = Complex(0,0);

      annotation (Diagram(graphics),
                           Icon(graphics={
            Ellipse(
              extent={{-50,-50},{50,50}},
              lineColor={255,127,0},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),
            Line(points={{100,0},{50,0}}, color={255,127,0}),
            Line(points={{-50,0},{-100,0}}, color={255,127,0}),
            Line(points={{0,50},{0,-50}}, color={255,127,0}),
            Polygon(
              points={{80,0},{60,6},{60,-6},{80,0}},
              lineColor={255,128,0},
              fillColor={255,128,0},
              fillPattern=FillPattern.Solid),
            Line(points={{0,100},{0,50}}, color={255,127,0})}),
        Documentation(info="<html>
<p>
Source of magnetic flux with complex signal input.
</p>

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Sources.ConstantMagneticPotentialDifference\">
   ConstantMagneticPotentialDifference</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Sources.SignalMagneticPotentialDifference\">
   SignalMagneticPotentialDifference</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Sources.ConstantFlux\">ConstantFlux</a>, 
</p>

</html>"));
    end SignalFlux;
  annotation (Documentation(info="<html>
<p>This package provides sources of magnetic potential difference and magnetic flux.</p>
</html>"));
  end Sources;

  package Sensors "Sensors to measure variables in magnetic networks"

    model MagneticFluxSensor "Sensor to measure magnetic flux"
      extends Modelica.Icons.RotationalSensor;
      extends Interfaces.PartialTwoPortElementary;

      Modelica.SIunits.ComplexMagneticPotentialDifference V_m
        "Complex magnetic potential difference";
      Modelica.ComplexBlocks.Interfaces.ComplexOutput Phi
        "Complex magnetic flux from por_ p to port_n as output signal" 
         annotation (Placement(transformation(
            origin={0,-100},
            extent={{10,-10},{-10,10}},
            rotation=90)));

    equation
      // Flux into positive port
      port_p.V_m - port_n.V_m = V_m;

      // Magneto motive force
      port_p.Phi = Phi;

      // Local flux balance
      port_p.Phi + port_n.Phi = Complex(0,0);

      // No magnetic potential difference at sensor
      V_m = Complex(0,0);

      annotation (
        Window(
          x=0.23,
          y=0.07,
          width=0.6,
          height=0.6),
        Icon(coordinateSystem(
            preserveAspectRatio=false,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Text(
              extent={{-29,-11},{30,-70}},
              lineColor={0,0,0},
              textString=
                   "Phi"),
            Line(points={{-70,0},{-90,0}}, color={0,0,0}),
            Text(extent={{-140,120},{140,80}}, textString=
                                                   "%name"),
            Line(points={{70,0},{90,0}}, color={0,0,0}),
            Line(points={{0,-90},{0,-70}})}),
        Diagram(coordinateSystem(
            preserveAspectRatio=false,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Line(points={{-70,0},{-100,0}}, color={0,0,0}),
            Line(points={{70,0},{100,0}}, color={0,0,0}),
            Line(points={{0,-90},{0,-70}})}),
        Documentation(info="<html>
<p>Sensor for magnetic flux.</p>

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Sensors.MagneticPotentialDifferenceSensor\">
   MagneticPotentialDifferenceSensor</a>
</p>
</html>"));
    end MagneticFluxSensor;

    model MagneticPotentialDifferenceSensor
      "Sensor to measure magnetic potential difference"
      extends Modelica.Icons.RotationalSensor;
      extends Interfaces.PartialTwoPortElementary;

      Modelica.ComplexBlocks.Interfaces.ComplexOutput V_m
        "Complex magnetic potential difference between port_p and port_n as output signal"
         annotation (Placement(transformation(
            origin={0,-100},
            extent={{10,-10},{-10,10}},
            rotation=90)));
      Modelica.SIunits.ComplexMagneticFlux Phi "Complex magnetic flux";

    equation
      // Flux into positive port
      port_p.V_m - port_n.V_m = V_m;

      // Magneto motive force
      port_p.Phi = Phi;

      // Local flux balance
      port_p.Phi + port_n.Phi = Complex(0,0);

      // No magnetic flux through sensor
      Phi = Complex(0,0);

      annotation (
        Window(
          x=0.28,
          y=0.29,
          width=0.6,
          height=0.6),
        Icon(coordinateSystem(
            preserveAspectRatio=false,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Text(
              extent={{-52,1},{48,-57}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid,
              textString=
                   "V_m"),
            Line(points={{-70,0},{-90,0}}, color={0,0,0}),
            Line(points={{70,0},{90,0}}, color={0,0,0}),
            Line(points={{0,-90},{0,-70}}),
            Text(extent={{-140,120},{140,80}}, textString=
                                                   "%name")}),
        Diagram(coordinateSystem(
            preserveAspectRatio=false,
            extent={{-100,-100},{100,100}},
            grid={2,2}), graphics={
            Line(points={{-70,0},{-100,0}}, color={0,0,0}),
            Line(points={{70,0},{100,0}}, color={0,0,0}),
            Line(points={{0,-90},{0,-70}})}),
        Documentation(info="<html>
<p>Sensor for magnetic potential difference.</p>

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Sensors.MagneticFluxSensor\">
   MagneticFluxSensor</a>
</p></html>"));
    end MagneticPotentialDifferenceSensor;
    annotation (Documentation(info="<html>
<p>
This package provides sensors for the magnetic potential difference and the magnetic flux in magnetic circuit.
</p>
</html>"));
  end Sensors;

  package Interfaces "Interfaces and partial models"

    connector MagneticPort "Complex magnetic port"

      Modelica.SIunits.ComplexMagneticPotentialDifference V_m
        "Complex magnetic potential difference";
      flow Modelica.SIunits.ComplexMagneticFlux Phi "Complex magnetic flux";

    annotation (Documentation(info="<html>
<p>
The potential quantity of the magnetic port is the complex magnetic potential difference <img src=\"../Images/Magnetic/FundamentalWave/V_m.png\">. The corresponding flow quantity is the magnetic flux <img src=\"../Images/Magnetic/FundamentalWave/Phi.png\">.
</p>

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort\">PositiveMagneticPort</a>,
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort\">NegativeMagneticPort</a>
</p>

</html>"));
    end MagneticPort;

    connector NegativeMagneticPort "Negative complex magnetic port"

      extends Modelica.Magnetic.FundamentalWave.Interfaces.MagneticPort;

      annotation (defaultName="port_n",
        Icon(graphics={Ellipse(
              extent={{-100,100},{100,-100}},
              lineColor={255,128,0},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid)}),
                                Diagram(graphics={Text(
              extent={{-60,100},{-60,60}},
              lineColor={255,128,0},
              textString=
                   "%name"), Ellipse(
              extent={{-50,50},{50,-50}},
              lineColor={255,128,0},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid)}),
      Documentation(info="<html>
<p>
Negative magnetic <a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Interfaces.MagneticPort\">port</a>.
</p>

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Interfaces.MagneticPort\">MagneticPort</a>,
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort\">PositiveMagneticPort</a>
</p>
</html>"));
    end NegativeMagneticPort;

    partial model PartialBasicInductionMachine
      "Partial model for induction machine"
      constant Modelica.SIunits.Angle pi=Modelica.Constants.pi;
      constant Integer m=3 "Number of phases";

      // Mechanical parameters
      parameter Modelica.SIunits.Inertia Jr(start=0.29) "Rotor inertia";
      parameter Boolean useSupport=false
        "Enable / disable (=fixed stator) support" 
        annotation(Evaluate=true);
      parameter Modelica.SIunits.Inertia Js(start=Jr) "Stator inertia" 
        annotation(Dialog(enable=useSupport));
      parameter Boolean useThermalPort=false
        "Enable / disable (=fixed temperatures) thermal port" 
        annotation(Evaluate=true);

      parameter Integer p(min=1, start=2) "Number of pole pairs (Integer)";
      parameter Modelica.SIunits.Frequency fsNominal(start=50)
        "Nominal frequency";
      parameter Modelica.SIunits.Temperature TsOperational(start=293.15)
        "Operational temperature of stator resistance" 
         annotation(Dialog(group="Operational temperatures", enable=not useThermalPort));
      parameter Modelica.SIunits.Resistance Rs(start=0.03)
        "Stator resistance per phase at TRef" 
         annotation(Dialog(tab="Nominal resistances and inductances"));
      parameter Modelica.SIunits.Temperature TsRef(start=293.15)
        "Reference temperature of stator resistance" 
         annotation(Dialog(tab="Nominal resistances and inductances"));
      parameter Modelica.Electrical.Machines.Thermal.Alpha20 alpha20s(start=0)
        "Temperature coefficient of stator resistance at 20 degC" 
         annotation(Dialog(tab="Nominal resistances and inductances"));
      parameter Real effectiveStatorTurns = 1
        "Effective number of stator turns";

      parameter Modelica.SIunits.Inductance Lssigma(start=3*(1 - sqrt(1 - 0.0667))/(2*pi*fsNominal))
        "Stator stray inductance per phase" 
         annotation(Dialog(tab="Nominal resistances and inductances"));
      parameter Modelica.Magnetic.FundamentalWave.Types.SalientInductance L0(d(start=1),q(start=1)) 
         annotation(Dialog(tab="Nominal resistances and inductances"));

      // Mechanical quantities
      output Modelica.SIunits.Angle phiMechanical = flange.phi-internalSupport.phi
        "Mechanical angle of rotor against stator";
      output Modelica.SIunits.AngularVelocity wMechanical(displayUnit="1/min") = der(phiMechanical)
        "Mechanical angular velocity of rotor against stator";
      output Modelica.SIunits.Torque tauElectrical = inertiaRotor.flange_a.tau
        "Electromagnetic torque";
      output Modelica.SIunits.Torque tauShaft = -flange.tau "Shaft torque";

      // Stator voltages and currents
      output Modelica.SIunits.Voltage vs[m] = plug_sp.pin.v - plug_sn.pin.v
        "Stator instantaneous voltages";
      output Modelica.SIunits.Current is[m] = plug_sp.pin.i
        "Stator instantaneous currents";

      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange "Shaft" 
        annotation (Placement(transformation(extent={{90,-10},{110,10}},
              rotation=0)));
      Modelica.Mechanics.Rotational.Components.Inertia inertiaRotor(final J=Jr) 
        annotation (Placement(transformation(
            origin={80,0},
            extent={{10,10},{-10,-10}},
            rotation=180)));
      Modelica.Mechanics.Rotational.Interfaces.Flange_a support if useSupport
        "Support at which the reaction torque is acting" 
           annotation (Placement(transformation(extent={{90,-110},{110,-90}},
              rotation=0)));
      Modelica.Mechanics.Rotational.Components.Inertia inertiaStator(final J=Js) if useSupport 
        annotation (Placement(transformation(
            origin={80,-100},
            extent={{10,10},{-10,-10}},
            rotation=180)));
      Modelica.Mechanics.Rotational.Components.Fixed fixed if  (not useSupport) 
        annotation (Placement(transformation(extent={{-10,-10},{10,10}},
              rotation=180,
            origin={70,-90})));

      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_sp(
        final m=m) 
        annotation (Placement(transformation(extent={{50,90},{70,110}},
              rotation=0)));
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_sn(
        final m=m) 
        annotation (Placement(transformation(extent={{-70,90},{-50,110}},
              rotation=0)));
      Modelica.Magnetic.FundamentalWave.Machines.Components.SymmetricMultiPhaseWinding
        statorWinding(
        final useHeatPort=true,
        final m=m,
        final RRef=Rs,
        final Lsigma=Lssigma,
        final effectiveTurns=effectiveStatorTurns,
        final TRef=TsRef,
        final TOperational=TsOperational,
        final alpha20=alpha20s)
        "Symmetric stator winding including resistances and stray inductances" 
        annotation (Placement(transformation(
            origin={0,30},
            extent={{-10,-10},{10,10}},
            rotation=270)));
      replaceable
        Electrical.Machines.Interfaces.PartialThermalAmbientInductionMachines
        thermalAmbient(
        final useTemperatureInputs=false, final Ts=TsOperational) if not useThermalPort annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=270,
            origin={-70,-90})));
      replaceable
        Electrical.Machines.Interfaces.PartialThermalPortInductionMachines
        thermalPort if useThermalPort 
        annotation (Placement(transformation(extent={{-10,-110},{10,-90}})));
    protected
      replaceable
        Electrical.Machines.Interfaces.PartialThermalPortInductionMachines
        internalThermalPort 
        annotation (Placement(transformation(extent={{-44,-94},{-36,-86}})));
      Mechanics.Rotational.Interfaces.Support internalSupport 
        annotation (Placement(transformation(extent={{56,-104},{64,-96}},
              rotation=0)));
    public
      Components.Ground groundS "Ground of stator magnetic circuit" 
        annotation (Placement(transformation(extent={{-40,0},{-20,20}}, rotation=0)));
    public
      Machines.Components.RotorSaliencyAirGap airGap(
        final p=p, final L0=L0) 
        annotation (Placement(transformation(
            origin={0,0},
            extent={{-10,-10},{10,10}},
            rotation=270)));
      Components.Ground groundR "Ground of rotor magnetic circuit" 
        annotation (Placement(transformation(extent={{-40,-30},{-20,-10}}, rotation=
               0)));
    equation
      connect(statorWinding.plug_n, plug_sn) annotation (Line(
          points={{-10,40},{-10,60},{-60,60},{-60,100}},
          color={0,0,255},
          smooth=Smooth.None));
      connect(plug_sp, statorWinding.plug_p) annotation (Line(
          points={{60,100},{60,60},{10,60},{10,40}},
          color={0,0,255},
          smooth=Smooth.None));
      annotation (Documentation(info="<HTML>
Partial model for induction machine models
</HTML>"),
        Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
                100}}),
                graphics),
        Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{
                100,100}}), graphics={
            Rectangle(
              extent={{80,-80},{120,-120}},
              lineColor={192,192,192},
              fillColor={192,192,192},
              fillPattern=FillPattern.Solid),
                                      Line(points={{-50,100},{-20,100},{-20,70}},
                color={0,0,255}), Line(points={{50,100},{20,100},{20,70}},
                color={0,0,255}),
            Rectangle(
              extent={{-40,60},{80,-60}},
              lineColor={0,0,0},
              fillPattern=FillPattern.HorizontalCylinder,
              fillColor={255,128,0}),
            Rectangle(
              extent={{-40,70},{40,50}},
              lineColor={95,95,95},
              fillColor={95,95,95},
              fillPattern=FillPattern.Solid),
            Polygon(
              points={{-50,-90},{-40,-90},{-10,-20},{40,-20},{70,-90},{80,-90},{80,-100},
                  {-50,-100},{-50,-90}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid),
            Rectangle(
              extent={{-40,60},{-60,-60}},
              lineColor={0,0,0},
              fillPattern=FillPattern.HorizontalCylinder,
              fillColor={128,128,128}),
            Rectangle(
              extent={{80,10},{100,-10}},
              lineColor={0,0,0},
              fillPattern=FillPattern.HorizontalCylinder,
              fillColor={95,95,95}),
            Text(
              extent={{-150,-120},{150,-180}},
              lineColor={0,0,255},
              textString="%name"),
            Line(
              visible=not useSupport,
              points={{80,-100},{120,-100}},
              color={0,0,0},
              smooth=Smooth.None),
            Line(
              visible=not useSupport,
              points={{90,-100},{80,-120}},
              color={0,0,0},
              smooth=Smooth.None),
            Line(
              visible=not useSupport,
              points={{100,-100},{90,-120}},
              color={0,0,0},
              smooth=Smooth.None),
            Line(
              visible=not useSupport,
              points={{110,-100},{100,-120}},
              color={0,0,0},
              smooth=Smooth.None),
            Line(
              visible=not useSupport,
              points={{120,-100},{110,-120}},
              color={0,0,0},
              smooth=Smooth.None)}));
      connect(thermalPort,internalThermalPort)  annotation (Line(
          points={{0,-100},{0,-90},{-40,-90}},
          color={199,0,0},
          smooth=Smooth.None));
      connect(thermalAmbient.thermalPort,internalThermalPort)  annotation (Line(
          points={{-60,-90},{-40,-90}},
          color={199,0,0},
          smooth=Smooth.None));
      connect(inertiaRotor.flange_b, flange) 
                                            annotation (Line(points={{90,
              -1.22465e-015},{102,-1.22465e-015},{102,0},{100,0}},
                                                               color={0,0,0}));
      connect(internalSupport, inertiaStator.flange_a) annotation (Line(
          points={{60,-100},{70,-100}},
          color={0,0,0},
          smooth=Smooth.None));
      connect(internalSupport, fixed.flange) annotation (Line(
          points={{60,-100},{60,-90},{70,-90}},
          color={0,0,0},
          smooth=Smooth.None));
      connect(inertiaStator.flange_b, support) 
        annotation (Line(points={{90,-100},{90,-100},{100,-100}},
                                                        color={0,0,0}));
      connect(groundS.port_p, statorWinding.port_n) annotation (Line(
          points={{-30,20},{-10,20}},
          color={255,128,0},
          smooth=Smooth.None));
      connect(statorWinding.port_n,airGap. port_sn) annotation (Line(points={{-10,20},
              {-10,17.5},{-10,10},{-10,10}},                     color={255,128,0}));
      connect(statorWinding.port_p,airGap. port_sp) annotation (Line(points={{10,20},
              {10,17.5},{10,10},{10,10}},
                                        color={255,128,0}));
      connect(airGap.flange_a, inertiaRotor.flange_a) annotation (Line(
          points={{10,-1.83697e-015},{40,-1.83697e-015},{40,1.22465e-015},{70,
              1.22465e-015}},
          color={0,0,0},
          smooth=Smooth.None));

      connect(airGap.support, internalSupport) annotation (Line(
          points={{-10,1.83697e-015},{-60,1.83697e-015},{-60,-68},{60,-68},{60,
              -100}},
          color={0,0,0},
          smooth=Smooth.None));

      connect(groundR.port_p,airGap. port_rn)         annotation (Line(points={{-30,-10},
              {-20,-10},{-20,-10},{-10,-10}},    color={255,128,0}));
    end PartialBasicInductionMachine;

    partial model PartialTwoPort "Two magnetic ports for textual modeling"

      extends
        Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortElementary;

      Modelica.SIunits.ComplexMagneticPotentialDifference V_m
        "Complex magnetic potential difference";
      Modelica.SIunits.ComplexMagneticFlux Phi "Complex magnetic flux";

    equation
      // Flux into positive port
      V_m = port_p.V_m - port_n.V_m;

      // Magneto motive force
      port_p.Phi = Phi;

      // Local flux balance
      port_p.Phi + port_n.Phi = Complex(0,0);

    annotation (Documentation(info="<html>
<p>
This magnetic two port element consists of a  
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort\">positive</a> and a
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort\">negative magnetic port</a> and
considers the flux balance of the two ports. Additionally the magnetic potential difference (of the positive and the negative port) and the magnetic flux (into the positive magnetic port) are defined. This model is mainly to used to extend from in order build more complex - graphical - models.
</p>

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort\">PositiveMagneticPort</a>,
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort\">NegativeMagneticPort</a>,
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortElementary\">PartialTwoPortElementary</a>
</p></html>"));
    end PartialTwoPort;

    partial model PartialTwoPortElementary
      "Two magnetic ports for textual modeling"

      PositiveMagneticPort port_p "Positive complex magnetic port" 
        annotation (Placement(transformation(extent={{-110,-10},{-90,10}}, rotation=
               0)));
      NegativeMagneticPort port_n "Negative complex magnetic port" 
        annotation (Placement(transformation(extent={{90,-10},{110,10}}, rotation=0)));

    annotation (Documentation(info="<html>
<p>
This magnetic two port element only consists of a  
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort\">positive</a> and a
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort\">negative magnetic port</a>. 
This model is mainly used to extend from in order build more complex - equation based - models.
</p>

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort\">PositiveMagneticPort</a>,
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort\">NegativeMagneticPort</a>,
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort\">PartialTwoPort</a>
</p>
</html>"));
    end PartialTwoPortElementary;

    connector PositiveMagneticPort "Positive complex magnetic port"

      extends Modelica.Magnetic.FundamentalWave.Interfaces.MagneticPort;
      annotation (defaultName="port_p",
        Icon(graphics={Ellipse(
              extent={{-100,100},{100,-100}},
              lineColor={255,128,0},
              fillColor={255,128,0},
              fillPattern=FillPattern.Solid)}),
                                Diagram(graphics={Text(
              extent={{-60,100},{-60,60}},
              lineColor={255,128,0},
              textString=
                   "%name"), Ellipse(
              extent={{-50,50},{50,-50}},
              lineColor={255,128,0},
              fillColor={255,128,0},
              fillPattern=FillPattern.Solid)}),
      Documentation(info="<html>
<p>
Positive magnetic <a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Interfaces.MagneticPort\">port</a>.
</p>

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Interfaces.MagneticPort\">MagneticPort</a>,
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort\">NegativeMagneticPort</a>
</p>

</html>"));
    end PositiveMagneticPort;
  annotation (Documentation(info="<html>
<p>
This package contains interface definitions of the magnetic ports as well as partial models.
</p>
</html>"));
  end Interfaces;

  package Types "Definition of salient types"

    record Salient "Base record of saliency with d and q component"
      Real d "Component of d (direct) axis, aligned to real part";
      Real q "Component of q (quadrature) axis, aligned to imaginary part";
    annotation (Documentation(info="<html>
<p>
Definition of saliency with respect to the orthogonal d- and q-axis. Saliency, however, refers to different properties in d- and q-axis and thus considers the anisotropic behavior.
</p>

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.SalientCurrent\">SalientCurrent</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.SalientVoltage\">SalientVoltage</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.SalientInductance\">SalientInductance</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.SalientReluctance\">SalientReluctance</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.SalientResistance\">SalientResistance</a>
</p>

</html>"));
    end Salient;

    record SalientCurrent = Salient (
      redeclare Modelica.SIunits.Current d,
      redeclare Modelica.SIunits.Current q) "Salient current" annotation (
        Documentation(info="<html>
<p>Type representing the d- and q-axis of a current phasor.</p>

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.Salient\">Salient</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.SalientVoltage\">SalientVoltage</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.SalientInductance\">SalientInductance</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.SalientReluctance\">SalientReluctance</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.SalientResistance\">SalientResistance</a>
</p>

</html>"));
    record SalientVoltage = Salient (
      redeclare Modelica.SIunits.Voltage d,
      redeclare Modelica.SIunits.Voltage q) "Salient voltage" annotation (
        Documentation(info="<html>
<p>Type representing the d- and q-axis of a voltage phasor.</p>

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.Salient\">Salient</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.SalientCurrent\">SalientCurrent</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.SalientInductance\">SalientInductance</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.SalientReluctance\">SalientReluctance</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.SalientResistance\">SalientResistance</a>
</p>

</html>"));
    record SalientInductance = Salient (
      redeclare Modelica.SIunits.Inductance d,
      redeclare Modelica.SIunits.Inductance q) "Salient inductance" annotation (
       Documentation(info="<html>
<p>Type representing the d- and q-axis of an inductance with respect to the fundamental wave.</p>

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.Salient\">Salient</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.SalientCurrent\">SalientCurrent</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.SalientVoltage\">SalientVoltage</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.SalientReluctance\">SalientReluctance</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.SalientResistance\">SalientResistance</a>
</p>

</html>"));
    record SalientReluctance = Salient (
      redeclare Modelica.SIunits.Reluctance d,
      redeclare Modelica.SIunits.Reluctance q) "Salient reluctance" annotation (
       Documentation(info="<html>
<p>Type representing the d- and q-axis of an reluctance with respect to the fundamental wave.</p>

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.Salient\">Salient</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.SalientCurrent\">SalientCurrent</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.SalientVoltage\">SalientVoltage</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.SalientInductance\">SalientInductance</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.SalientResistance\">SalientResistance</a>
</p>

</html>"));
    record SalientResistance = Salient (
      redeclare Modelica.SIunits.Resistance d,
      redeclare Modelica.SIunits.Resistance q) "Salient resistance" annotation (
       Documentation(info="<html>
<p>Type representing the d- and q-axis of an resistance with respect to the fundamental wave.</p>

<h4>See also</h4>
<p>
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.Salient\">Salient</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.SalientCurrent\">SalientCurrent</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.SalientVoltage\">SalientVoltage</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.SalientInductance\">SalientInductance</a>, 
<a href=\"Modelica://Modelica.Magnetic.FundamentalWave.Types.SalientReluctance\">SalientReluctance</a>
</p>

</html>"));
    annotation (Documentation(info="<html>
<p>This package provides types for modeling anisotropic saliency effects in electric machines. These saliencies are usually considered by a d- (direct) and q-axis (quadrature) components in the respective axis (of the rotor).</p>
</html>"));
  end Types;
  annotation (
    Documentation(revisions="<html>

<p>The table below refers to internal version numbers of the FundamentalWave library.</p>

<p>
<table border=\"1\" rules=\"groups\">
<thead>
<tr><td>Version</td> <td>Date</td> <td>Authors</td> <td>Comments</td></tr>
</thead>
<tbody>

<tr><td>1.1.0</td>  <td>2010-02-15</td>  <td>C. Kral</td>  <td>Added thermal connectors and temperature dependent resistances</td></tr>
<tr><td>1.0.0</td>  <td>2010-02-04</td>  <td>C. Kral</td>  <td>Integrated the libray into the MSL</td></tr>
<tr><td>0.4.0</td>  <td>2009-10-29</td>  <td>C. Kral<br>A.&nbsp;Haumer</td>  <td>Corrected bug in magnetic potential calculation</td></tr>
<tr><td>0.3.0</td>  <td>2009-10-28</td>  <td>C. Kral</td>  <td>Renamed number of turns and winding angles</td></tr>
<tr><td>0.2.0</td>  <td>2009-10-20</td>  <td>C. Kral</td>  <td>Added idle model</td></tr>
<tr><td>0.1.0</td>  <td>2009-07-22</td>  <td>C. Kral</td>  <td>First version based on the concept of the FluxTubes library and the Magnetics library of Michael Beuschel</td></tr>
</tbody>
</table>
</p>
</html>"));
end FundamentalWave;