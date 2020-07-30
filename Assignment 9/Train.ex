<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Train">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the TrainCar superclass."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.TrainCar"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the TrainCar class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.TrainCar"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the CargoCar class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.CargoCar"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the CargoCar class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.CargoCar"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the PassengerCar class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.PassengerCar"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the PassengerCar class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.PassengerCar"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the Train class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.Train"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Train class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.Train"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the TrainCarTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.TrainCarTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the PassengerCarTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.PassengerCarTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the CargoCarTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.CargoCarTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the TrainTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.TrainTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code in *Car classes."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="inheritance.*Car" action="suspend.breakpoint"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code in the Train class."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="inheritance.Train" action="suspend.breakpoint"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the debug command Step Over"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the debug command Step Into"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the Variables view"/>
        <a xsi:type="workbench:PartTaskAnswer" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
      </tasks>
    </parts>
  </exercise:Exercise>
  <exercise:ExerciseProposals exercise="/0">
    <proposals exercisePart="/0/@parts.0">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.0/@q" answer="/0/@parts.0/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585736808343" resourcePath="/ovinger/src/inheritance/TrainCar.java" sizeMeasure="27" className="inheritance.TrainCar">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class TrainCar {&#xA;&#x9;&#xA;&#x9;private int deadWeight;&#xA;&#x9;private int totalWeight;&#xA;&#x9;&#xA;&#x9;public TrainCar(int weight) {&#xA;&#x9;&#x9;this.totalWeight = weight + deadWeight;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getTotalWeight() {&#xA;&#x9;&#x9;return totalWeight;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setDeadWeight(int weight) {&#xA;&#x9;&#x9;this.deadWeight = weight;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getDeadWeight() {&#xA;&#x9;&#x9;return deadWeight;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;&#xA;&#xA;}&#xA;"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a"/>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585736701005" resourcePath="/ovinger/src/inheritance/CargoCar.java" sizeMeasure="21" className="inheritance.CargoCar">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class CargoCar extends TrainCar {&#xA;&#x9;&#xA;&#x9;private int cargoWeight;&#xA;&#x9;&#xA;&#x9;public CargoCar(int deadWeight, int cargoWeight) {&#xA;&#x9;&#x9;super(cargoWeight);&#xA;&#x9;&#x9;this.cargoWeight = cargoWeight;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getCargoWeight() {&#xA;&#x9;&#x9;System.out.println(cargoWeight);&#xA;&#x9;&#x9;return cargoWeight;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setCargoWeight(int cargoWeight) {&#xA;&#x9;&#x9;System.out.println(cargoWeight);&#xA;&#x9;&#x9;this.cargoWeight = cargoWeight;&#xA;&#x9;}&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585736743284" resourcePath="/ovinger/src/inheritance/CargoCar.java" sizeMeasure="21" className="inheritance.CargoCar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="deadWeight);&#xA;&#x9;&#x9;this.cargoWeight = cargoWeight + dead" edit="/1/@proposals.0/@proposals.2/@attempts.0/@edit" start="153" end="-228"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.3/@q" answer="/0/@parts.0/@tasks.3/@a"/>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.4/@q" answer="/0/@parts.0/@tasks.4/@a"/>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.5/@q" answer="/0/@parts.0/@tasks.5/@a"/>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.6/@q" answer="/0/@parts.0/@tasks.6/@a"/>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.7/@q" answer="/0/@parts.0/@tasks.7/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.8/@q" answer="/0/@parts.0/@tasks.8/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585486878132" completion="0.0" testRunName="inheritance.TrainCarTest" failureCount="1">
          <failureTests>testCheckWeight</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585736780245" completion="0.0" testRunName="inheritance.TrainCarTest" failureCount="1">
          <failureTests>testCheckWeight</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585736822022" completion="0.0" testRunName="inheritance.TrainCarTest" failureCount="1">
          <failureTests>testCheckWeight</failureTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.9/@q" answer="/0/@parts.0/@tasks.9/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585486902682" completion="0.0" testRunName="inheritance.PassengerCarTest" failureCount="1">
          <failureTests>testCheckWeight</failureTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.10/@q" answer="/0/@parts.0/@tasks.10/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585486853393" completion="0.0" testRunName="inheritance.CargoCarTest" failureCount="1">
          <failureTests>testCheckWeight</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585736647550" completion="0.0" testRunName="inheritance.CargoCarTest" failureCount="1">
          <failureTests>testCheckWeight</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585736708606" completion="0.0" testRunName="inheritance.CargoCarTest" failureCount="1">
          <failureTests>testCheckWeight</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585736748959" completion="0.0" testRunName="inheritance.CargoCarTest" failureCount="1">
          <failureTests>testCheckWeight</failureTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.11/@q" answer="/0/@parts.0/@tasks.11/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585486973642" completion="0.25" testRunName="inheritance.TrainTest" successCount="1" failureCount="3">
          <successTests>testAddCarToTrain</successTests>
          <failureTests>testCheckTotalTrainWeight</failureTests>
          <failureTests>testCheckCargoWeight</failureTests>
          <failureTests>testCheckPassengerCount</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585736601558" completion="0.25" testRunName="inheritance.TrainTest" successCount="1" failureCount="3">
          <successTests>testAddCarToTrain</successTests>
          <failureTests>testCheckTotalTrainWeight</failureTests>
          <failureTests>testCheckCargoWeight</failureTests>
          <failureTests>testCheckPassengerCount</failureTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.4/@q" answer="/0/@parts.1/@tasks.4/@a"/>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
