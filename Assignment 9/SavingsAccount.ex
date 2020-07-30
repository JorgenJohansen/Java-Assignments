<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="SavingsAccount">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Get the source code for the Account interface from the wiki."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.Account"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the SavingsAccount superclass."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.SavingsAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the SavingsAccount class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.SavingsAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the BSU class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.BSU"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the BSU class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.BSU"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the ForeldreSpar class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.ForeldreSpar"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the ForeldreSpar class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.ForeldreSpar"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the SavingsAccount JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.SavingsAccountTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the BSU JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.BSUTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the ForeldreSpar JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.ForeldreSparTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code in the SavingsAccount class."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="inheritance.SavingsAccount" action="suspend.breakpoint"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code in the BSU class."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="inheritance.BSU" action="suspend.breakpoint"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code in the ForeldreSpar class."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="inheritance.ForeldreSpar" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585737190167" resourcePath="/ovinger/src/inheritance/Account.java" sizeMeasure="5" className="inheritance.Account">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public interface Account {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585737217865" resourcePath="/ovinger/src/inheritance/Account.java" sizeMeasure="9" className="inheritance.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;public void deposit(double amount);&#xA;&#x9;public void withdraw(double amount);&#xA;&#x9;public double getBalance();&#xA;&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="50" end="-3"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585737121365" resourcePath="/ovinger/src/inheritance/SavingsAccount.java" sizeMeasure="5" className="inheritance.SavingsAccount">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class SavingsAccount {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585737829862" resourcePath="/ovinger/src/inheritance/SavingsAccount.java" sizeMeasure="50" className="inheritance.SavingsAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="implements Account {&#xA;&#x9;&#xA;&#x9;protected double balance;&#xA;&#x9;protected double interestRate;&#xA;&#x9;&#xA;&#x9;public SavingsAccount(double interestRate) {&#xA;&#x9;&#x9;this.interestRate = interestRate;&#xA;&#x9;&#x9;balance = 0;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void deposit(double amount) {&#xA;&#x9;&#x9;if(amount > 0) {&#xA;&#x9;&#x9;&#x9;balance += amount;&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Det som settes inn må være positivt&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void withdraw(double amount) {&#xA;&#x9;&#x9;if(amount &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Uttaket må være positivt&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if(amount > balance) {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Uttaket kan ikke være større enn hva som er på kontoen&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public double getBalance() {&#xA;&#x9;&#x9;return balance;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void endYearUpdate() {&#xA;&#x9;&#x9;balance *= interestRate;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;SavingsAccount brukskonto = new SavingsAccount(0.05);&#xA;&#x9;&#x9;brukskonto.deposit(1000);&#xA;&#x9;&#x9;brukskonto.endYearUpdate();&#xA;&#x9;&#x9;System.out.println(brukskonto.getBalance());&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.0/@edit" start="50" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585737873397" resourcePath="/ovinger/src/inheritance/SavingsAccount.java" sizeMeasure="50" className="inheritance.SavingsAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="= balance + balance *" edit="/1/@proposals.0/@proposals.1/@attempts.1/@edit" start="799" end="-230"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585737929891" resourcePath="/ovinger/src/inheritance/SavingsAccount.java" sizeMeasure="50" className="inheritance.SavingsAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="*= interestRate + balanc" edit="/1/@proposals.0/@proposals.1/@attempts.2/@edit" start="799" end="-218"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585737965098" resourcePath="/ovinger/src/inheritance/SavingsAccount.java" sizeMeasure="50" className="inheritance.SavingsAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="= balance + balance * interestRat" edit="/1/@proposals.0/@proposals.1/@attempts.3/@edit" start="799" end="-218"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585738081108" resourcePath="/ovinger/src/inheritance/SavingsAccount.java" sizeMeasure="51" className="inheritance.SavingsAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="balance -= amount;&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.1/@attempts.4/@edit" start="689" end="-361"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585737836994" mode="run" className="inheritance.SavingsAccount">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>inheritance.SavingsAccount</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>50.0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585737933716" mode="run" className="inheritance.SavingsAccount">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>inheritance.SavingsAccount</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1000050.0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585737967034" mode="run" className="inheritance.SavingsAccount">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>inheritance.SavingsAccount</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1050.0&#xD;
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.3/@q" answer="/0/@parts.0/@tasks.3/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585738228689" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="5" className="inheritance.BSU">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class BSU {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585738422764" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="15" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="extends SavingsAccount {&#xA;&#xA;&#x9;&#xA;&#x9;public BSU(double interestRate, double amount) {&#xA;&#x9;&#x9;super(interestRate);&#xA;&#x9;&#x9;// TODO Auto-generated constructor stub&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getTaxDeduction() {&#xA;&#x9;&#x9;return getBalance() * 0.2;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.3/@attempts.0/@edit" start="39" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585738476199" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="18" warningCount="1" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private double amount;&#xA;&#x9;&#xA;&#x9;public BSU(double interestRate, double amount) {&#xA;&#x9;&#x9;super(interestRate);&#xA;&#x9;&#x9;// TODO Auto-generated constructor stub&#xA;&#x9;&#x9;this.interestRate = interestRate;&#xA;&#x9;&#x9;this.amount = amount;" edit="/1/@proposals.0/@proposals.3/@attempts.1/@edit" start="66" end="-77"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="5" charStart="85" charEnd="91" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585738577540" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="18" warningCount="1" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="0" edit="/1/@proposals.0/@proposals.3/@attempts.2/@edit" start="333" end="-9"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="5" charStart="85" charEnd="91" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585739010716" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="33" errorCount="1" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="balance;&#xA;&#x9;&#xA;&#x9;public BSU(double interestRate, double balance) {&#xA;&#x9;&#x9;super(interestRate);&#xA;&#x9;&#x9;// TODO Auto-generated constructor stub&#xA;&#x9;&#x9;this.interestRate = interestRate;&#xA;&#x9;&#x9;this.balance = balance;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getTaxDeduction() {&#xA;&#x9;&#x9;return getBalance() * 0.20;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void deposit(double amount) {&#xA;&#x9;&#x9;if(amount &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Det som settes inn må være positivt&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(amount > balance) {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Det som settes inn kan ikke være større enn det fastsatte beløpet&quot;)&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void withdraw(double amount) {&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.3/@attempts.3/@edit" start="81" end="-8"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="24" charStart="637" charEnd="638" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585739024047" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="33" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=";" edit="/1/@proposals.0/@proposals.3/@attempts.4/@edit" start="615" end="-62"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585739043601" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="34" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="balance += amount;&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.3/@attempts.5/@edit" start="623" end="-55"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585739095277" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="34" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="balance" edit="/1/@proposals.0/@proposals.3/@attempts.6/@edit" start="319" end="-368"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585739228696" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="36" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if(amount &lt; balance) {&#xA;&#x9;&#x9;&#x9;balance -= amount;&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.3/@attempts.7/@edit" start="686" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585739370950" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="39" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(&quot;getTaxDeduction call: &quot; + balance);&#xA;&#x9;&#x9;return balance * 0.20;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void deposit(double amount) {&#xA;&#x9;&#x9;System.out.println(&quot;Deposit call: &quot;+amount);&#xA;&#x9;&#x9;if(amount &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Det som settes inn må være positivt&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(amount > balance) {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Det som settes inn kan ikke være større enn det fastsatte beløpet&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;balance += amount;&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void withdraw(double amount) {&#xA;&#x9;&#x9;System.out.println(&quot;withdraw call: &quot; + amount);" edit="/1/@proposals.0/@proposals.3/@attempts.8/@edit" start="312" end="-59"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585739377833" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="39" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="d" edit="/1/@proposals.0/@proposals.3/@attempts.9/@edit" start="458" end="-438"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585739458036" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="40" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" balance: &quot; + balance);&#xA;&#x9;&#x9;return balance * 0.20;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void deposit(double amount) {&#xA;&#x9;&#x9;System.out.println(&quot;deposit call amount: &quot;+amount);&#xA;&#x9;&#x9;if(amount &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Det som settes inn må være positivt&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(amount > balance) {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Det som settes inn kan ikke være større enn det fastsatte beløpet&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;balance += amount;&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void withdraw(double amount) {&#xA;&#x9;&#x9;System.out.println(&quot;withdraw call amount: &quot; + amount);&#xA;&#x9;&#x9;System.out.println(&quot;withdraw call balance: &quot; + balance" edit="/1/@proposals.0/@proposals.3/@attempts.10/@edit" start="352" end="-61"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585739573711" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="41" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(&quot;getTaxDeduction call taxDeduction: &quot; + balance*0.2);&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.3/@attempts.11/@edit" start="378" end="-600"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585758687185" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="36" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//private double balance;&#xA;&#x9;&#xA;&#x9;public BSU(double interestRate, double balance) {&#xA;&#x9;&#x9;super(interestRate);&#xA;&#x9;&#x9;// TODO Auto-generated constructor stub&#xA;&#x9;&#x9;this.interestRate = interestRate;&#xA;&#x9;&#x9;this.balance = balance;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getTaxDeduction() {&#xA;&#x9;&#x9;System.out.println(&quot;getTaxDeduction call balance: &quot; + balance);&#xA;&#x9;&#x9;System.out.println(&quot;getTaxDeduction call taxDeduction: &quot; + balance*0.2);&#xA;&#x9;&#x9;return balance * 0.20;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void deposit(double amount) {&#xA;&#x9;&#x9;if(amount &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Det som settes inn må være positiv" edit="/1/@proposals.0/@proposals.3/@attempts.12/@edit" start="66" end="-251"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585759587373" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="41" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;BSU bsu = new BSU(0.05,25000);&#xA;&#x9;&#x9;bsu.deposit(30000);&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.3/@attempts.13/@edit" start="860" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585759761550" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="45" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private double limit;&#xA;&#x9;&#xA;&#x9;public BSU(double interestRate, double limit) {&#xA;&#x9;&#x9;super(interestRate);&#xA;&#x9;&#x9;// TODO Auto-generated constructor stub&#xA;&#x9;&#x9;this.interestRate = interestRate;&#xA;&#x9;&#x9;this.limit = limit;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getTaxDeduction() {&#xA;&#x9;&#x9;System.out.println(&quot;getTaxDeduction call balance: &quot; + balance);&#xA;&#x9;&#x9;System.out.println(&quot;getTaxDeduction call taxDeduction: &quot; + balance*0.2);&#xA;&#x9;&#x9;return balance * 0.20;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void deposit(double amount) {&#xA;&#x9;&#x9;if(amount &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Det som settes inn må være positivt&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if(balance + amount > limit) {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Vi kan ikke sette inne et beløp som er over grensa" edit="/1/@proposals.0/@proposals.3/@attempts.14/@edit" start="93" end="-352"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585759959984" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="48" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Det vi trekker ifra må være positivt!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if(amount &lt; " edit="/1/@proposals.0/@proposals.3/@attempts.15/@edit" start="964" end="-146"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585760057982" resourcePath="/ovinger/src/inheritance/BSU.java" sizeMeasure="49" className="inheritance.BSU">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="> balance) {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Utdraget kan ikke være større enn det vi har på kontoen&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;balance -= amount;" edit="/1/@proposals.0/@proposals.3/@attempts.16/@edit" start="1065" end="-110"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.4/@q" answer="/0/@parts.0/@tasks.4/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585759606232" mode="run" className="inheritance.BSU">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>inheritance.BSU</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585759773705" mode="run" className="inheritance.BSU">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>inheritance.BSU</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.IllegalStateException: Vi kan ikke sette inne et beløp som er over grensa&#xD;
	at ovinger/inheritance.BSU.deposit(BSU.java:26)&#xD;
	at ovinger/inheritance.BSU.main(BSU.java:42)&#xD;
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.5/@q" answer="/0/@parts.0/@tasks.5/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585758702855" resourcePath="/ovinger/src/inheritance/ForeldreSpar.java" sizeMeasure="42" className="inheritance.ForeldreSpar">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class ForeldreSpar extends SavingsAccount {&#xA;&#x9;&#xA;&#x9;private int remainingWithdrawals;&#xA;&#xA;&#x9;public ForeldreSpar(double interestRate, int remainingWithdrawals) {&#xA;&#x9;&#x9;super(interestRate);&#xA;&#x9;&#x9;this.interestRate = interestRate;&#xA;&#x9;&#x9;this.remainingWithdrawals = remainingWithdrawals;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public void deposit(double amount) {&#xA;&#x9;&#x9;if(amount &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Det som settes inn kan ikke være negativt!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;balance += amount;&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void withdraw(double amount) {&#xA;&#x9;&#x9;if(amount &lt; 0 ) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Det vi trekker ifra må være positivt!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if(amount > balance) {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Det må være mer på kontoen enn det vi trekker ut!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if(remainingWithdrawals > 0) {&#xA;&#x9;&#x9;&#x9;remainingWithdrawals--;&#xA;&#x9;&#x9;&#x9;balance -= amount;&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Du er tom for trekk&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getRemainingWithdrawals() {&#xA;&#x9;&#x9;return remainingWithdrawals;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585758900848" resourcePath="/ovinger/src/inheritance/ForeldreSpar.java" sizeMeasure="42" className="inheritance.ForeldreSpar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="StateException(&quot;Du kan ikke gjøre uttrekk fra kontoen." edit="/1/@proposals.0/@proposals.5/@attempts.0/@edit" start="849" end="-91"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585759054530" resourcePath="/ovinger/src/inheritance/ForeldreSpar.java" sizeMeasure="48" className="inheritance.ForeldreSpar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;ForeldreSpar fs = new ForeldreSpar(0.05,0);&#xA;&#x9;&#x9;fs.deposit(1000);&#xA;&#x9;&#x9;fs.getRemainingWithdrawals();&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.5/@attempts.1/@edit" start="990" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585759078556" resourcePath="/ovinger/src/inheritance/ForeldreSpar.java" sizeMeasure="49" className="inheritance.ForeldreSpar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(fs.getRemainingWithdrawals());&#xA;&#x9;&#x9;System.out.println" edit="/1/@proposals.0/@proposals.5/@attempts.2/@edit" start="1102" end="-11"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585759126606" resourcePath="/ovinger/src/inheritance/ForeldreSpar.java" sizeMeasure="49" className="inheritance.ForeldreSpar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="fs.withdraw(1000" edit="/1/@proposals.0/@proposals.5/@attempts.3/@edit" start="1154" end="-10"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585759171406" resourcePath="/ovinger/src/inheritance/ForeldreSpar.java" sizeMeasure="47" className="inheritance.ForeldreSpar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="p" edit="/1/@proposals.0/@proposals.5/@attempts.4/@edit" start="298" end="-877"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585759272202" resourcePath="/ovinger/src/inheritance/ForeldreSpar.java" sizeMeasure="47" className="inheritance.ForeldreSpar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Du kan ikke gjøre uttrekk fra kontoen.&quot;);&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;remainingWithdrawals--;&#xA;&#x9;&#x9;&#x9;balance -= amount" edit="/1/@proposals.0/@proposals.5/@attempts.5/@edit" start="759" end="-275"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585759393412" resourcePath="/ovinger/src/inheritance/ForeldreSpar.java" sizeMeasure="49" className="inheritance.ForeldreSpar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;&#x9;remainingWithdrawals--;&#xA;&#x9;&#x9;balance -= amount;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getRemainingWithdrawals() {&#xA;&#x9;&#x9;if(remainingWithdrawals &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Du kan ikke gjøre uttrekk fra kontoen.&quot;);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.5/@attempts.6/@edit" start="847" end="-225"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.6/@q" answer="/0/@parts.0/@tasks.6/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585759094216" mode="run" className="inheritance.ForeldreSpar">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>inheritance.ForeldreSpar</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>0&#xD;
&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585759141373" mode="run" className="inheritance.ForeldreSpar">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>inheritance.ForeldreSpar</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>0&#xD;
Exception in thread &quot;main&quot; java.lang.IllegalStateException: Du kan ikke gjøre uttrekk fra kontoen.&#xD;
	at ovinger/inheritance.ForeldreSpar.withdraw(ForeldreSpar.java:34)&#xD;
	at ovinger/inheritance.ForeldreSpar.main(ForeldreSpar.java:46)&#xD;
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.7/@q" answer="/0/@parts.0/@tasks.7/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585738010604" completion="0.75" testRunName="inheritance.SavingsAccountTest" successCount="3" failureCount="1">
          <successTests>testDepositAndWithdrawIllegalStateOrInput</successTests>
          <successTests>testBalanceField</successTests>
          <successTests>testEndYearUpdate</successTests>
          <failureTests>testDepositAndWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585738090385" completion="1.0" testRunName="inheritance.SavingsAccountTest" successCount="4">
          <successTests>testDepositAndWithdrawIllegalStateOrInput</successTests>
          <successTests>testBalanceField</successTests>
          <successTests>testEndYearUpdate</successTests>
          <successTests>testDepositAndWithdraw</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.8/@q" answer="/0/@parts.0/@tasks.8/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585738660078" completion="0.0" testRunName="inheritance.BSUTest" failureCount="3">
          <failureTests>testGetTaxDeduction</failureTests>
          <failureTests>testWithdraw</failureTests>
          <failureTests>testDeposit</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585739050978" completion="0.0" testRunName="inheritance.BSUTest" failureCount="3">
          <failureTests>testGetTaxDeduction</failureTests>
          <failureTests>testWithdraw</failureTests>
          <failureTests>testDeposit</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585739108270" completion="0.0" testRunName="inheritance.BSUTest" failureCount="3">
          <failureTests>testGetTaxDeduction</failureTests>
          <failureTests>testWithdraw</failureTests>
          <failureTests>testDeposit</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585739239277" completion="0.0" testRunName="inheritance.BSUTest" failureCount="3">
          <failureTests>testGetTaxDeduction</failureTests>
          <failureTests>testWithdraw</failureTests>
          <failureTests>testDeposit</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585739384868" completion="0.0" testRunName="inheritance.BSUTest" failureCount="3">
          <failureTests>testGetTaxDeduction</failureTests>
          <failureTests>testWithdraw</failureTests>
          <failureTests>testDeposit</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585739465737" completion="0.0" testRunName="inheritance.BSUTest" failureCount="3">
          <failureTests>testGetTaxDeduction</failureTests>
          <failureTests>testWithdraw</failureTests>
          <failureTests>testDeposit</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585758714575" completion="0.0" testRunName="inheritance.BSUTest" failureCount="3">
          <failureTests>testGetTaxDeduction</failureTests>
          <failureTests>testWithdraw</failureTests>
          <failureTests>testDeposit</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585759465144" completion="0.0" testRunName="inheritance.BSUTest" failureCount="3">
          <failureTests>testGetTaxDeduction</failureTests>
          <failureTests>testWithdraw</failureTests>
          <failureTests>testDeposit</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585759812272" completion="0.0" testRunName="inheritance.BSUTest" failureCount="1" errorCount="2">
          <failureTests>testWithdraw</failureTests>
          <errorTests>testGetTaxDeduction</errorTests>
          <errorTests>testDeposit</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585759966305" completion="0.0" testRunName="inheritance.BSUTest" failureCount="1" errorCount="2">
          <failureTests>testWithdraw</failureTests>
          <errorTests>testGetTaxDeduction</errorTests>
          <errorTests>testDeposit</errorTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.9/@q" answer="/0/@parts.0/@tasks.9/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585758542865" completion="0.0" testRunName="inheritance.ForeldreSparTest" errorCount="2">
          <errorTests>testWithdraw</errorTests>
          <errorTests>testGetRemainingWithdrawals</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585758842269" completion="0.0" testRunName="inheritance.ForeldreSparTest" failureCount="2">
          <failureTests>testWithdraw</failureTests>
          <failureTests>testGetRemainingWithdrawals</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585758907209" completion="0.0" testRunName="inheritance.ForeldreSparTest" failureCount="1" errorCount="1">
          <failureTests>testGetRemainingWithdrawals</failureTests>
          <errorTests>testWithdraw</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585759178483" completion="0.0" testRunName="inheritance.ForeldreSparTest" failureCount="1" errorCount="1">
          <failureTests>testGetRemainingWithdrawals</failureTests>
          <errorTests>testWithdraw</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585759277083" completion="0.0" testRunName="inheritance.ForeldreSparTest" failureCount="2">
          <failureTests>testWithdraw</failureTests>
          <failureTests>testGetRemainingWithdrawals</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585759399024" completion="0.0" testRunName="inheritance.ForeldreSparTest" failureCount="2">
          <failureTests>testWithdraw</failureTests>
          <failureTests>testGetRemainingWithdrawals</failureTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.4/@q" answer="/0/@parts.1/@tasks.4/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.5/@q" answer="/0/@parts.1/@tasks.5/@a"/>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
