<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="AbstractAccount">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the abstract AbstractAccount class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.AbstractAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the DebitAccount class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.DebitAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the DebitAccount class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.DebitAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the CreditAccount class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.CreditAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the CreditAccount class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.CreditAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the SavingsAccount2 class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.SavingsAccount2"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the SavingsAccount2 class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.SavingsAccount2"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the DebitAccountTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.DebitAccountTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the CreditAccountTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.CreditAccountTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the SavingsAccount2Test JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.SavingsAccount2Test"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="inheritance.*Account*" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585487224403" resourcePath="/ovinger/src/inheritance/AbstractAccount.java" sizeMeasure="5" className="inheritance.AbstractAccount">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class AbstractAccount {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585487674326" resourcePath="/ovinger/src/inheritance/AbstractAccount.java" sizeMeasure="31" errorCount="3" className="inheritance.AbstractAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;private double balance;&#xA;&#x9;&#xA;&#x9;public void deposit(double deposit) {&#xA;&#x9;&#x9;if(deposit > 0) {&#xA;&#x9;&#x9;&#x9;balance += deposit;&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Deposit must be positive&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void withdraw(double withdraw) {&#xA;&#x9;&#x9;if(withdraw > 0) {&#xA;&#x9;&#x9;&#x9;internalWithdraw(withdraw);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#xA;&#x9;public abstract void internalWithdraw(double withdraw) {&#xA;&#x9;&#x9;if(balance > withdraw &amp;&amp; withdraw > 0) {&#xA;&#x9;&#x9;&#x9;balance -= withdraw;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getBalance() {&#xA;&#x9;&#x9;return balance;&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="53" end="-4"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="37" charEnd="52" severity="2" problemCategory="40" problemType="16777549"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585487737106" resourcePath="/ovinger/src/inheritance/AbstractAccount.java" sizeMeasure="35" errorCount="3" className="inheritance.AbstractAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="otected double balance;&#xA;&#x9;&#xA;&#x9;public AbstractAccount() {&#xA;&#x9;&#x9;this.balance = 0;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="58" end="-461"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="25" charStart="452" charEnd="485" severity="2" problemCategory="50" problemType="603979889"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585488424043" resourcePath="/ovinger/src/inheritance/AbstractAccount.java" sizeMeasure="37" errorCount="5" className="inheritance.AbstractAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="/*public abstract void internalWithdraw(double withdraw) {&#xA;&#x9;&#x9;if(balance > withdraw &amp;&amp; withdraw > 0) {&#xA;&#x9;&#x9;&#x9;balance -= withdraw;&#xA;&#x9;&#x9;}&#xA;&#x9;}*/&#xA;&#x9;&#xA;&#x9;public abstract void interalWithdraw(double withdraw)" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="407" end="-58"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="31" charStart="627" charEnd="628" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585488440350" resourcePath="/ovinger/src/inheritance/AbstractAccount.java" sizeMeasure="37" errorCount="5" className="inheritance.AbstractAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=")" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="582" end="-58"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="31" charStart="596" charEnd="613" severity="2" problemCategory="50" problemType="603979889"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585488447412" resourcePath="/ovinger/src/inheritance/AbstractAccount.java" sizeMeasure="37" errorCount="5" className="inheritance.AbstractAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=")" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="387" end="-245"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="31" charStart="604" charEnd="605" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585488475815" resourcePath="/ovinger/src/inheritance/AbstractAccount.java" sizeMeasure="37" className="inheritance.AbstractAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="abstract class AbstractAccount {&#xA;&#x9;&#xA;&#x9;protected double balance;&#xA;&#x9;&#xA;&#x9;public AbstractAccount() {&#xA;&#x9;&#x9;this.balance = 0;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void deposit(double deposit) {&#xA;&#x9;&#x9;if(deposit > 0) {&#xA;&#x9;&#x9;&#x9;balance += deposit;&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Deposit must be positive&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void withdraw(double withdraw) {&#xA;&#x9;&#x9;if(withdraw > 0) {&#xA;&#x9;&#x9;&#x9;//internalWithdraw();&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#xA;&#x9;/*public abstract void internalWithdraw(double withdraw) {&#xA;&#x9;&#x9;if(balance > withdraw &amp;&amp; withdraw > 0) {&#xA;&#x9;&#x9;&#x9;balance -= withdraw;&#xA;&#x9;&#x9;}&#xA;&#x9;}*/&#xA;&#x9;&#xA;&#x9;public abstract void interalWithdraw();" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="29" end="-58"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585489797573" resourcePath="/ovinger/src/inheritance/AbstractAccount.java" sizeMeasure="41" className="inheritance.AbstractAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public void setBalance(double balance) {&#xA;&#x9;&#x9;this.balance = balance;&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="641" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585553008596" resourcePath="/ovinger/src/inheritance/AbstractAccount.java" sizeMeasure="39" className="inheritance.AbstractAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="nteralWithdraw();" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="358" end="-314"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585553482683" resourcePath="/ovinger/src/inheritance/AbstractAccount.java" sizeMeasure="34" className="inheritance.AbstractAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="amount;&#xA;&#x9;&#xA;&#x9;public AbstractAccount() {&#xA;&#x9;&#x9;this.amount = 0;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void deposit(double deposit) {&#xA;&#x9;&#x9;if(deposit > 0) {&#xA;&#x9;&#x9;&#x9;amount += deposit;&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Deposit must be positive&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void withdraw(double withdraw) {&#xA;&#x9;&#x9;interalWithdraw(amount);&#xA;&#x9;}&#xA;&#xA;&#x9;&#xA;&#x9;public abstract void interalWithdraw(double amount);&#xA;&#x9;&#xA;&#x9;public double getBalance() {&#xA;&#x9;&#x9;return amount;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setBalance(double amount) {&#xA;&#x9;&#x9;this.amount = amount" edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="82" end="-9"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585554156626" resourcePath="/ovinger/src/inheritance/AbstractAccount.java" sizeMeasure="34" className="inheritance.AbstractAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="withdraw" edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="370" end="-189"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585488299660" resourcePath="/ovinger/src/inheritance/DebitAccount.java" sizeMeasure="5" className="inheritance.DebitAccount">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class DebitAccount {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585488339358" resourcePath="/ovinger/src/inheritance/DebitAccount.java" sizeMeasure="6" className="inheritance.DebitAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="extends AbstractAccount {&#xA;&#xA;&#x9;" edit="/1/@proposals.0/@proposals.1/@attempts.0/@edit" start="48" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585488505959" resourcePath="/ovinger/src/inheritance/DebitAccount.java" sizeMeasure="12" className="inheritance.DebitAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="@Override&#xA;&#x9;public void interalWithdraw() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;&#x9;" edit="/1/@proposals.0/@proposals.1/@attempts.1/@edit" start="76" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585735159454" resourcePath="/ovinger/src/inheritance/DebitAccount.java" sizeMeasure="21" className="inheritance.DebitAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="double amount) {&#xA;&#x9;&#x9;//Sjekker at amount er positivt&#xA;&#x9;&#x9;if(amount &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Det vi trekker ifra kan ikke være negativt&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;//Sjekker at vi har har større beløp enn det vi trekker ut&#xA;&#x9;&#x9;if(this.amount >= amount) {&#xA;&#x9;&#x9;&#x9;this.amount -= amount;&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Kontobeløpet må være større enn det vi trekker ifra&quot;);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.2/@edit" start="115" end="-13"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a"/>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.3/@q" answer="/0/@parts.0/@tasks.3/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585488351643" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="5" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class CreditAccount {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585488509604" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="5" errorCount="1" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="extends AbstractAccount " edit="/1/@proposals.0/@proposals.3/@attempts.0/@edit" start="49" end="-6"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="37" charEnd="50" severity="2" problemCategory="50" problemType="67109264"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585488527521" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="11" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;@Override&#xA;&#x9;public void interalWithdraw() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;" edit="/1/@proposals.0/@proposals.3/@attempts.1/@edit" start="76" end="-3"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585489071604" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="30" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;private double creditLine;&#xA;&#x9;&#xA;&#x9;public CreditAccount(double creditLine) {&#xA;&#x9;&#x9;if(creditLine >= 0) {&#xA;&#x9;&#x9;&#x9;this.creditLine = creditLine;&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Creditline can't be negative&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getCreditLine() {&#xA;&#x9;&#x9;return creditLine;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setCreditLine(double creditLine) {&#xA;&#x9;&#x9;this.creditLine = creditLine;&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.3/@attempts.2/@edit" start="75" end="-92"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585489429299" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="35" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if(creditLine >= Math.abs(getBalance())) {&#xA;&#x9;&#x9;&#x9;this.creditLine = creditLine;&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Creditline must cover balance&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.3/@attempts.3/@edit" start="409" end="-96"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585554441952" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="36" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;@Override&#xA;&#x9;public void interalWithdraw(double amount" edit="/1/@proposals.0/@proposals.3/@attempts.4/@edit" start="575" end="-51"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585554529100" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="39" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="getBalance() &lt; 0) {&#xA;&#x9;&#x9;&#x9;if(creditLine >= Math.abs(getBalance())) {&#xA;&#x9;&#x9;&#x9;&#x9;this.creditLine = creditLine;&#xA;&#x9;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Creditline must cover balance&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.3/@attempts.5/@edit" start="412" end="-113"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585733019746" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="45" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;if(amount &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Det vi trekker ifra kan ikke være negativt&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if(this.amount + creditLine > amount) {&#xA;&#x9;&#x9;&#x9;this.amount += creditLine - amount;&#xA;&#x9;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.3/@attempts.6/@edit" start="711" end="-6"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585733115766" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="45" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="-" edit="/1/@proposals.0/@proposals.3/@attempts.7/@edit" start="878" end="-20"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585733203184" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="47" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="else {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Det vi tar ut kan ikke være større enn beløpet og kredittlinjen&quot;);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.3/@attempts.8/@edit" start="891" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585733255976" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="48" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="/*if(getBalance() &lt; 0) {&#xA;&#x9;&#x9;&#x9;if(creditLine >= Math.abs(getBalance())) {&#xA;&#x9;&#x9;&#x9;&#x9;this.creditLine = creditLine;&#xA;&#x9;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Creditline must cover balance&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}*/&#xA;&#x9;&#x9;this.creditLine = creditLine;" edit="/1/@proposals.0/@proposals.3/@attempts.9/@edit" start="409" end="-411"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585733327301" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="51" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if(creditLine &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Kredittlinjen må være positiv.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.3/@attempts.10/@edit" start="608" end="-440"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585733330375" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="51" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="!" edit="/1/@proposals.0/@proposals.3/@attempts.11/@edit" start="697" end="-450"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585733437670" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="54" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if(creditLine &lt; getBalance()) {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Kredittlinjen må være større enn beløpet&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.3/@attempts.12/@edit" start="708" end="-440"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585733463027" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="54" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.amount" edit="/1/@proposals.0/@proposals.3/@attempts.13/@edit" start="724" end="-530"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585734105799" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="62" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private double balance;&#xA;&#x9;&#xA;&#x9;public CreditAccount(double creditLine) {&#xA;&#x9;&#x9;if(creditLine >= 0) {&#xA;&#x9;&#x9;&#x9;this.creditLine = creditLine;&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Creditline can't be negative&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getBalance() {&#xA;&#x9;&#x9;return balance;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setBalance(double balance) {&#xA;&#x9;&#x9;this.balance = balance;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getCreditLine() {&#xA;&#x9;&#x9;return creditLine;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setCreditLine(double creditLine) {&#xA;&#x9;&#x9;/*if(getBalance() &lt; 0) {&#xA;&#x9;&#x9;&#x9;if(creditLine >= Math.abs(getBalance())) {&#xA;&#x9;&#x9;&#x9;&#x9;this.creditLine = creditLine;&#xA;&#x9;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Creditline must cover balance&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}*/&#xA;&#x9;&#x9;if(creditLine &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Kredittlinjen må være positiv!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if(creditLine &lt; balance" edit="/1/@proposals.0/@proposals.3/@attempts.14/@edit" start="106" end="-530"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585734135543" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="62" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="/*&#xA;&#x9;public double getBalance() {&#xA;&#x9;&#x9;return balance;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setBalance(double balance) {&#xA;&#x9;&#x9;this.balance = balance;&#xA;&#x9;}*/" edit="/1/@proposals.0/@proposals.3/@attempts.15/@edit" start="321" end="-964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585734166003" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="62" warningCount="1" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.getBalance()" edit="/1/@proposals.0/@proposals.3/@attempts.16/@edit" start="876" end="-530"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="126" charEnd="133" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585734243003" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="62" warningCount="1" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="g" edit="/1/@proposals.0/@proposals.3/@attempts.17/@edit" start="876" end="-541"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="126" charEnd="133" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585734592156" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="62" warningCount="1" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.amount" edit="/1/@proposals.0/@proposals.3/@attempts.18/@edit" start="876" end="-530"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="126" charEnd="133" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585734664398" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="63" warningCount="1" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(this.amount);&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.3/@attempts.19/@edit" start="860" end="-557"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="126" charEnd="133" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585734676554" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="64" warningCount="1" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(getBalance());&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.3/@attempts.20/@edit" start="895" end="-557"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="126" charEnd="133" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585734720167" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="65" warningCount="1" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" == getBalance());&#xA;&#x9;&#x9;System.out.println(getBalance());&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.3/@attempts.21/@edit" start="890" end="-560"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="126" charEnd="133" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585734747071" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="66" warningCount="1" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(creditLine);&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.3/@attempts.22/@edit" start="947" end="-560"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="126" charEnd="133" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585734814214" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="67" errorCount="1" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(creditLine &lt;);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(creditLine &lt; Math.abs(this.amount)" edit="/1/@proposals.0/@proposals.3/@attempts.23/@edit" start="981" end="-530"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="42" charStart="1052" charEnd="1053" severity="2" problemCategory="20" problemType="1610612967"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585734830475" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="67" warningCount="1" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=")" edit="/1/@proposals.0/@proposals.3/@attempts.24/@edit" start="1010" end="-574"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="6" charStart="126" charEnd="133" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585735101183" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="50" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;public CreditAccount(double creditLine) {&#xA;&#x9;&#x9;//Sjekker at vi instanserer en positiv creditLine når vi lager objektet.&#xA;&#x9;&#x9;if(creditLine >= 0) {&#xA;&#x9;&#x9;&#x9;this.creditLine = creditLine;&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Creditline can't be negative&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public double getCreditLine() {&#xA;&#x9;&#x9;return creditLine;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setCreditLine(double creditLine) {&#xA;&#x9;&#x9;//Sjekker at creditLine er positivt&#xA;&#x9;&#x9;if(creditLine &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Kredittlinjen må være positiv!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;//Sjekker om creditLine er større enn absoluttverdien til this.amount&#xA;&#x9;&#x9;if(creditLine &lt; Math.abs(this.amount)) {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Kredittlinjen må være større enn beløpet&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;this.creditLine = creditLine;&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void interalWithdraw(double amount) {&#xA;&#x9;&#x9;//Sjekker om amount er positivt&#xA;&#x9;&#x9;if(amount &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Det vi trekker ifra kan ikke være negativt&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;//Sjekker om this.amount og creditLine enn det som trekkes ifra" edit="/1/@proposals.0/@proposals.3/@attempts.25/@edit" start="106" end="-195"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.4/@q" answer="/0/@parts.0/@tasks.4/@a"/>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.5/@q" answer="/0/@parts.0/@tasks.5/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585488578314" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="5" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class SavingsAccount2 {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585488601692" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="5" errorCount="1" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="extends AbstractAccount " edit="/1/@proposals.0/@proposals.5/@attempts.0/@edit" start="51" end="-6"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="37" charEnd="52" severity="2" problemCategory="50" problemType="67109264"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585488609677" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="11" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;@Override&#xA;&#x9;public void interalWithdraw() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;" edit="/1/@proposals.0/@proposals.5/@attempts.1/@edit" start="78" end="-3"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585489827236" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="22" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private int withdrawals;&#xA;&#x9;private double fee;&#xA;&#x9;&#xA;&#x9;public SavingsAccount2(int withdrawals, double fee) {&#xA;&#x9;&#x9;this.withdrawals = withdrawals;&#xA;&#x9;&#x9;this.fee = fee;&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public void interalWithdraw() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;double balance = 0;&#xA;&#x9;&#x9;if(withdrawals &lt; 0) {&#xA;&#x9;&#x9;&#x9;balance = getBalance() - fee;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;setBalance(balance);" edit="/1/@proposals.0/@proposals.5/@attempts.2/@edit" start="79" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585553488273" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="24" errorCount="2" warningCount="1" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="double amount) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;//double balance = 0;&#xA;&#x9;&#x9;if(withdrawals > 0) {&#xA;&#x9;&#x9;&#x9;withdrawals--;&#xA;&#x9;&#x9;&#x9;balance = getBalance();&#xA;&#x9;&#x9;&#x9;setBalance(balance);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.5/@attempts.3/@edit" start="277" end="-8"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="19" charStart="456" charEnd="463" severity="2" problemCategory="50" problemType="33554515"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585553664564" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="25" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.amount -= amount;&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;this.amount -= (amount + fe" edit="/1/@proposals.0/@proposals.5/@attempts.4/@edit" start="400" end="-18"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585553732598" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="26" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="super();&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.5/@attempts.5/@edit" start="184" end="-297"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585553825370" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="27" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="setBalance(this.amount);&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.5/@attempts.6/@edit" start="484" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585554034856" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="34" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;SavingsAccount2 superSpar = new SavingsAccount2(10,100);&#xA;&#x9;&#x9;superSpar.deposit(10000);&#xA;&#x9;&#x9;superSpar.interalWithdraw(2000);&#xA;&#x9;&#x9;System.out.println(superSpar.getBalance());&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.5/@attempts.7/@edit" start="515" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585554087655" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="34" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="0" edit="/1/@proposals.0/@proposals.5/@attempts.8/@edit" start="609" end="-123"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585554104466" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="34" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//" edit="/1/@proposals.0/@proposals.5/@attempts.9/@edit" start="484" end="-249"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585554249807" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="37" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="amount &lt; 0 || amount > this.amount) {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if(" edit="/1/@proposals.0/@proposals.5/@attempts.10/@edit" start="371" end="-364"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585554262375" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="37" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Dette går ikke!" edit="/1/@proposals.0/@proposals.5/@attempts.11/@edit" start="445" end="-377"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585554283699" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="37" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Argument" edit="/1/@proposals.0/@proposals.5/@attempts.12/@edit" start="429" end="-403"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585554318742" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="40" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=") {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Dette går ikke!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if(amount > this.amount) {&#xA;&#x9;&#x9;&#x9;throw new IllegalState" edit="/1/@proposals.0/@proposals.5/@attempts.13/@edit" start="382" end="-403"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585554410035" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="46" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;&#x9;if(withdrawals > 0) {&#xA;&#x9;&#x9;&#x9;withdrawals--;&#xA;&#x9;&#x9;&#x9;this.amount -= amount;&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;if(amount + fee &lt; this.amount) {&#xA;&#x9;&#x9;&#x9;&#x9;this.amount -= (amount + fee);&#xA;&#x9;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Dette går ikke&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.5/@attempts.14/@edit" start="538" end="-258"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585735161490" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="44" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="i" edit="/1/@proposals.0/@proposals.5/@attempts.15/@edit" start="307" end="-651"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585735337367" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="45" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" vi trekker ifra må være positivt&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if(amount > this.amount) {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Det vi trekker ut er større enn det vi har på kontoen.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;//Sjekker om vi har støtte for uttak og deretter tar ut beløpet,&#xA;&#x9;&#x9;//Hvis vi ikke har flere&#xA;&#x9;&#x9;if(withdrawals > 0) {&#xA;&#x9;&#x9;&#x9;withdrawals--;&#xA;&#x9;&#x9;&#x9;this.amount -= amount;&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;if(this.amount > amount + fee) {&#xA;&#x9;&#x9;&#x9;&#x9;this.amount -= (amount + fee);&#xA;&#x9;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Sjekker at det vi har på kontoen er større enn det vi trekker ut + gebyr" edit="/1/@proposals.0/@proposals.5/@attempts.16/@edit" start="367" end="-270"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585735359255" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="45" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if(amount > this.amount) {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Det må være mer på kontoen enn det vi trekker ut!" edit="/1/@proposals.0/@proposals.5/@attempts.17/@edit" start="400" end="-641"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585735382224" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="45" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" uttak, blir kontoeier ilagt et gebyr" edit="/1/@proposals.0/@proposals.5/@attempts.18/@edit" start="624" end="-540"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585735397849" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="43" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}" edit="/1/@proposals.0/@proposals.5/@attempts.19/@edit" start="942" end="-225"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1585735416773" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="44" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//Testkode for klassen&#xA;&#x9;&#x9;/*SavingsAccount2 superSpar = new SavingsAccount2(0,100);&#xA;&#x9;&#x9;superSpar.deposit(10000);&#xA;&#x9;&#x9;superSpar.interalWithdraw(2000);&#xA;&#x9;&#x9;System.out.println(superSpar.getBalance());*/" edit="/1/@proposals.0/@proposals.5/@attempts.20/@edit" start="996" end="-8"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.6/@q" answer="/0/@parts.0/@tasks.6/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585554047449" mode="run" className="inheritance.SavingsAccount2">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>inheritance.SavingsAccount2</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>8000.0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585554095375" mode="run" className="inheritance.SavingsAccount2">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>inheritance.SavingsAccount2</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>7900.0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1585554106179" mode="run" className="inheritance.SavingsAccount2">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>inheritance.SavingsAccount2</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>7900.0&#xD;
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.7/@q" answer="/0/@parts.0/@tasks.7/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585490800363" completion="0.5" testRunName="inheritance.DebitAccountTest" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585735449541" completion="1.0" testRunName="inheritance.DebitAccountTest" successCount="2">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.8/@q" answer="/0/@parts.0/@tasks.8/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585490780998" completion="0.3333333333333333" testRunName="inheritance.CreditAccountTest" successCount="1" failureCount="2">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
          <failureTests>testSetCreditLine</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585733026449" completion="0.3333333333333333" testRunName="inheritance.CreditAccountTest" successCount="1" failureCount="2">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
          <failureTests>testSetCreditLine</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585733121197" completion="0.3333333333333333" testRunName="inheritance.CreditAccountTest" successCount="1" failureCount="2">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
          <failureTests>testSetCreditLine</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585733208412" completion="0.6666666666666666" testRunName="inheritance.CreditAccountTest" successCount="2" failureCount="1">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
          <failureTests>testSetCreditLine</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585733261495" completion="0.6666666666666666" testRunName="inheritance.CreditAccountTest" successCount="2" failureCount="1">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
          <failureTests>testSetCreditLine</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585733335661" completion="0.6666666666666666" testRunName="inheritance.CreditAccountTest" successCount="2" failureCount="1">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
          <failureTests>testSetCreditLine</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585733446874" completion="0.6666666666666666" testRunName="inheritance.CreditAccountTest" successCount="2" failureCount="1">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
          <failureTests>testSetCreditLine</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585733467448" completion="0.6666666666666666" testRunName="inheritance.CreditAccountTest" successCount="2" failureCount="1">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
          <failureTests>testSetCreditLine</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585734112259" completion="0.0" testRunName="inheritance.CreditAccountTest" failureCount="3">
          <failureTests>testWithdraw</failureTests>
          <failureTests>testDeposit</failureTests>
          <failureTests>testSetCreditLine</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585734141203" completion="0.6666666666666666" testRunName="inheritance.CreditAccountTest" successCount="2" failureCount="1">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
          <failureTests>testSetCreditLine</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585734171841" completion="0.6666666666666666" testRunName="inheritance.CreditAccountTest" successCount="2" failureCount="1">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
          <failureTests>testSetCreditLine</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585734256935" completion="0.6666666666666666" testRunName="inheritance.CreditAccountTest" successCount="2" failureCount="1">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
          <failureTests>testSetCreditLine</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585734599230" completion="0.6666666666666666" testRunName="inheritance.CreditAccountTest" successCount="2" failureCount="1">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
          <failureTests>testSetCreditLine</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585734680846" completion="0.6666666666666666" testRunName="inheritance.CreditAccountTest" successCount="2" failureCount="1">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
          <failureTests>testSetCreditLine</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585734724606" completion="0.6666666666666666" testRunName="inheritance.CreditAccountTest" successCount="2" failureCount="1">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
          <failureTests>testSetCreditLine</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585734754969" completion="0.6666666666666666" testRunName="inheritance.CreditAccountTest" successCount="2" failureCount="1">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
          <failureTests>testSetCreditLine</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585734836341" completion="1.0" testRunName="inheritance.CreditAccountTest" successCount="3">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
          <successTests>testSetCreditLine</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585735442299" completion="1.0" testRunName="inheritance.CreditAccountTest" successCount="3">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
          <successTests>testSetCreditLine</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.9/@q" answer="/0/@parts.0/@tasks.9/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585490811055" completion="0.5" testRunName="inheritance.SavingsAccount2Test" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585553680745" completion="0.5" testRunName="inheritance.SavingsAccount2Test" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585553741191" completion="0.5" testRunName="inheritance.SavingsAccount2Test" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585553883133" completion="0.5" testRunName="inheritance.SavingsAccount2Test" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585554169813" completion="0.5" testRunName="inheritance.SavingsAccount2Test" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585554269270" completion="0.5" testRunName="inheritance.SavingsAccount2Test" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585554323986" completion="0.5" testRunName="inheritance.SavingsAccount2Test" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1585554417802" completion="1.0" testRunName="inheritance.SavingsAccount2Test" successCount="2">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
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
