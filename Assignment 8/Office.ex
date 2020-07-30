<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Employee">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Employee Interface."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.delegation.office.Employee"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Clerk Class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.delegation.office.Clerk"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Clerk class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="patterns.delegation.office.Clerk"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Clerk JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="patterns.delegation.office.ClerkTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Printer Class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.delegation.office.Printer"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Printer class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="patterns.delegation.office.Printer"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Printer JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="patterns.delegation.office.PrinterTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Manager Class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.delegation.office.Manager"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Manager class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="patterns.delegation.office.Manager"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Manager JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="patterns.delegation.office.ManagerTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="patterns.delegation.office.*" action="suspend.breakpoint"/>
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
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.0/@q" answer="/0/@parts.0/@tasks.0/@a"/>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584885742249" resourcePath="/ovinger/src/patterns/delegation/office/Clerk.java" sizeMeasure="40" warningCount="1" className="patterns.delegation.office.Clerk">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.delegation.office;&#xA;&#xA;import java.util.function.BinaryOperator;&#xA;&#xA;public class Clerk implements Employee {&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;private Printer printer;&#xA;&#xA;&#x9;public Clerk(Printer printer) {&#xA;&#x9;&#x9;this.printer = printer;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public double doCalculations(BinaryOperator&lt;Double> operation, double value1, double value2) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return operation.apply(value1, value2);&#xA;&#x9;&#x9;//return 0;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void printDocument(String document) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;System.out.println(document);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int getTaskCount() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int getResourceCount() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 1;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="8" charStart="149" charEnd="156" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584950980623" resourcePath="/ovinger/src/patterns/delegation/office/Clerk.java" sizeMeasure="44" warningCount="1" className="patterns.delegation.office.Clerk">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;private int task;&#xA;&#xA;&#x9;public Clerk(Printer printer) {&#xA;&#x9;&#x9;this.printer = printer;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public double doCalculations(BinaryOperator&lt;Double> operation, double value1, double value2) {&#xA;&#x9;&#x9;//Increment task&#xA;&#x9;&#x9;task++;&#xA;&#x9;&#x9;return operation.apply(value1, value2);&#xA;&#x9;&#x9;//return 0;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void printDocument(String document) {&#xA;&#x9;&#x9;//Increments task&#xA;&#x9;&#x9;task++;&#xA;&#x9;&#x9;System.out.println(document);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int getTaskCount() {&#xA;&#x9;&#x9;//returner hvor mange ganger doCalculation og print er kalt&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return task" edit="/1/@proposals.0/@proposals.1/@attempts.0/@edit" start="151" end="-106"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="8" charStart="149" charEnd="156" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.3/@q" answer="/0/@parts.0/@tasks.3/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584951050439" completion="0.75" testRunName="patterns.delegation.office.ClerkTest" successCount="3" errorCount="1">
          <successTests>testDoCalculations</successTests>
          <successTests>testResourceCount</successTests>
          <successTests>testTaskCount</successTests>
          <errorTests>testPrintDocuments</errorTests>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.4/@q" answer="/0/@parts.0/@tasks.4/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584885352264" resourcePath="/ovinger/src/patterns/delegation/office/Printer.java" sizeMeasure="20" className="patterns.delegation.office.Printer">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.delegation.office;&#xA;&#xA;import java.util.HashMap;&#xA;import java.util.List;&#xA;import java.util.Map;&#xA;&#xA;public class Printer {&#xA;&#x9;&#xA;&#x9;Map&lt;Employee, List&lt;String>> history = new HashMap&lt;>();&#xA;&#x9;public void printDocument(String document, Employee employee) {&#xA;&#x9;&#x9;System.out.println(document);&#xA;&#x9;&#x9;history.get(employee).add(document);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;List&lt;String> getPrintHistory(Employee employee){&#xA;&#x9;&#x9;return history.get(employee);&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584885675403" resourcePath="/ovinger/src/patterns/delegation/office/Printer.java" sizeMeasure="25" errorCount="2" className="patterns.delegation.office.Printer">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Clerk damon = new Clerk(Printer printer1);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.4/@attempts.0/@edit" start="419" end="-4"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="21" charStart="517" charEnd="525" severity="2" problemCategory="20" problemType="1610612968"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584885739607" resourcePath="/ovinger/src/patterns/delegation/office/Printer.java" sizeMeasure="25" className="patterns.delegation.office.Printer">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.4/@attempts.1/@edit" start="465" end="-10"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584885827046" resourcePath="/ovinger/src/patterns/delegation/office/Printer.java" sizeMeasure="27" className="patterns.delegation.office.Printer">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ArrayList;&#xA;import java.util.HashMap;&#xA;import java.util.List;&#xA;import java.util.Map;&#xA;&#xA;public class Printer {&#xA;&#x9;&#xA;&#x9;Map&lt;Employee, List&lt;String>> history = new HashMap&lt;>();&#xA;&#x9;public void printDocument(String document, Employee employee) {&#xA;&#x9;&#x9;System.out.println(document);&#xA;&#x9;&#x9;history.put(employee, new ArrayList&lt;String>()" edit="/1/@proposals.0/@proposals.4/@attempts.2/@edit" start="54" end="-192"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584951334567" resourcePath="/ovinger/src/patterns/delegation/office/Printer.java" sizeMeasure="30" className="patterns.delegation.office.Printer">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//Sjekk om det er noe &quot;history der fra før&quot;&#xA;&#x9;&#x9;System.out.println(document);&#xA;&#x9;&#x9;if(history.get(employee).size() &lt; 1) {&#xA;&#x9;&#x9;&#x9;history.put(employee, new ArrayList&lt;String>());&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;history.get(employee).add(document);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.4/@attempts.3/@edit" start="285" end="-148"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.5/@q" answer="/0/@parts.0/@tasks.5/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.6/@q" answer="/0/@parts.0/@tasks.6/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584884286059" completion="0.0" testRunName="patterns.delegation.office.PrinterTest" failureCount="3">
          <failureTests>testPrintHistoryModification</failureTests>
          <failureTests>testPrintSingleClerk</failureTests>
          <failureTests>testPrintMulipleClerks</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584885360108" completion="0.0" testRunName="patterns.delegation.office.PrinterTest" errorCount="3">
          <errorTests>testPrintHistoryModification</errorTests>
          <errorTests>testPrintSingleClerk</errorTests>
          <errorTests>testPrintMulipleClerks</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584885860350" completion="0.0" testRunName="patterns.delegation.office.PrinterTest" failureCount="1" errorCount="2">
          <failureTests>testPrintHistoryModification</failureTests>
          <errorTests>testPrintSingleClerk</errorTests>
          <errorTests>testPrintMulipleClerks</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584951117693" completion="0.0" testRunName="patterns.delegation.office.PrinterTest" errorCount="3">
          <errorTests>testPrintHistoryModification</errorTests>
          <errorTests>testPrintSingleClerk</errorTests>
          <errorTests>testPrintMulipleClerks</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584951362184" completion="0.0" testRunName="patterns.delegation.office.PrinterTest" errorCount="3">
          <errorTests>testPrintHistoryModification</errorTests>
          <errorTests>testPrintSingleClerk</errorTests>
          <errorTests>testPrintMulipleClerks</errorTests>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.7/@q" answer="/0/@parts.0/@tasks.7/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584884610236" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="40" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.delegation.office;&#xA;&#xA;import java.util.Collection;&#xA;import java.util.function.BinaryOperator;&#xA;&#xA;public class Manager implements Employee {&#xA;&#xA;&#xA;&#x9;public Manager(Collection&lt;Employee> employees) {&#xA;&#x9;&#x9;if(employees.size() &lt; 1) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;A manager must have employees&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public double doCalculations(BinaryOperator&lt;Double> operation, double value1, double value2) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return operation.apply(value1, value2);&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void printDocument(String document) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;System.out.println(document);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int getTaskCount() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int getResourceCount() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584884633427" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="40" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="1" edit="/1/@proposals.0/@proposals.7/@attempts.0/@edit" start="819" end="-10"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584950944475" resourcePath="/ovinger/src/patterns/delegation/office/Manager.java" sizeMeasure="51" className="patterns.delegation.office.Manager">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;private int task;&#xA;&#x9;private Collection&lt;Employee> employees;&#xA;&#x9;public Manager(Collection&lt;Employee> employees) {&#xA;&#x9;&#x9;if(employees.size() &lt; 1) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;A manager must have employees&quot;);&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;this.employees = employees;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public double doCalculations(BinaryOperator&lt;Double> operation, double value1, double value2) {&#xA;&#x9;&#x9;//Increment task&#xA;&#x9;&#x9;task++;&#xA;&#x9;&#x9;return operation.apply(value1, value2);&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void printDocument(String document) {&#xA;&#x9;&#x9;//Increment task&#xA;&#x9;&#x9;task++;&#xA;&#x9;&#x9;System.out.println(document);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int getTaskCount() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return task;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int getResourceCount() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return employees.size() + 1;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;//Clerk assistantToTheRegionalManager = new Clerk(Printer printer1);&#xA;&#x9;&#x9;//Manager regionalManager = new Manager(Clerk(Printer printer1)))" edit="/1/@proposals.0/@proposals.7/@attempts.1/@edit" start="153" end="-9"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.8/@q" answer="/0/@parts.0/@tasks.8/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.9/@q" answer="/0/@parts.0/@tasks.9/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584884635617" completion="0.14285714285714285" testRunName="patterns.delegation.office.ManagerTest" successCount="1" failureCount="5" errorCount="1">
          <successTests>testNoEmployeesConstructor</successTests>
          <failureTests>testDoCalculations</failureTests>
          <failureTests>testResourceCount</failureTests>
          <failureTests>testSeveralClerks</failureTests>
          <failureTests>testMiddleManagementResourceCounts</failureTests>
          <failureTests>testTaskCount</failureTests>
          <errorTests>testPrintDocuments</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584951080410" completion="0.2857142857142857" testRunName="patterns.delegation.office.ManagerTest" successCount="2" failureCount="4" errorCount="1">
          <successTests>testResourceCount</successTests>
          <successTests>testNoEmployeesConstructor</successTests>
          <failureTests>testDoCalculations</failureTests>
          <failureTests>testSeveralClerks</failureTests>
          <failureTests>testMiddleManagementResourceCounts</failureTests>
          <failureTests>testTaskCount</failureTests>
          <errorTests>testPrintDocuments</errorTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a"/>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
