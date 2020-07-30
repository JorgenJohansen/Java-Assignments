<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Stock class and StockListener interface">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the StockListener interface."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.observable.StockListener"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Stock class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.observable.Stock"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Stock class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="patterns.observable.Stock"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Stock JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="patterns.observable.StockTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="StockIndex implements StockListener">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the StockIndex class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.observable.StockIndex"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the StockIndex class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="patterns.observable.StockIndex"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the StockIndex JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="patterns.observable.StockIndexTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Extra assignments">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the SmartStock class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.observable.SmartStock"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the SmartStock class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="patterns.observable.SmartStock"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the SmartStock JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="patterns.observable.SmartStockTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="patterns.observable.*Stock*" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584953251645" resourcePath="/ovinger/src/patterns/observable/StockListener.java" sizeMeasure="5" className="patterns.observable.StockListener">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.observable;&#xA;&#xA;public interface StockListener {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584953288840" resourcePath="/ovinger/src/patterns/observable/StockListener.java" sizeMeasure="6" className="patterns.observable.StockListener">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;void stockPriceChanges(Stock stock, double oldValue, double newValue);&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="64" end="-3"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584952757464" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="5" className="patterns.observable.Stock">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.observable;&#xA;&#xA;public class Stock {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584952889387" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="16" warningCount="2" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;private String ticker;&#xA;&#x9;private double price;&#xA;&#x9;public Stock(String ticker, double price) {&#xA;&#x9;&#x9;this.ticker = ticker;&#xA;&#x9;&#x9;this.price = price;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setPrice(double price) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.1/@attempts.0/@edit" start="51" end="-4"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="5" charStart="73" charEnd="79" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584953061345" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="28" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if(price &lt; 1) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;The price has to be bigger then 0!&quot;);&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;this.price = price;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getTicker() {&#xA;&#x9;&#x9;return ticker;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getPrice() {&#xA;&#x9;&#x9;return price;" edit="/1/@proposals.0/@proposals.1/@attempts.1/@edit" start="236" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584953587858" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="36" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public void addStockListener(StockListener stockListener) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void removeStockListener(StockListener stockListener) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.1/@attempts.2/@edit" start="469" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584953740828" resourcePath="/ovinger/src/patterns/observable/Stock.java" sizeMeasure="43" className="patterns.observable.Stock">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.ArrayList;&#xA;import java.util.Collection;&#xA;&#xA;public class Stock {&#xA;&#x9;&#xA;&#x9;private String ticker;&#xA;&#x9;private double price;&#xA;&#x9;private Collection&lt;StockListener> stockListenerList = new ArrayList&lt;>();&#xA;&#x9;public Stock(String ticker, double price) {&#xA;&#x9;&#x9;this.ticker = ticker;&#xA;&#x9;&#x9;this.price = price;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setPrice(double price) {&#xA;&#x9;&#x9;if(price &lt; 1) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;The price has to be bigger then 0!&quot;);&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;this.price = price;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getTicker() {&#xA;&#x9;&#x9;return ticker;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getPrice() {&#xA;&#x9;&#x9;return price;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void addStockListener(StockListener stockListener) {&#xA;&#x9;&#x9;stockListenerList.add(stockListener);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void removeStockListener(StockListener stockListener) {&#xA;&#x9;&#x9;if(stockListenerList.size() > 0) {&#xA;&#x9;&#x9;&#x9;stockListenerList.remove(stockListener);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.3/@edit" start="30" end="-11"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.3/@q" answer="/0/@parts.0/@tasks.3/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584954715505" completion="0.5" testRunName="patterns.observable.StockTest" successCount="1" failureCount="1">
          <successTests>testConstructor</successTests>
          <failureTests>testStockListener</failureTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584954078125" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="5" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.observable;&#xA;&#xA;public class StockIndex {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584954350527" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="30" warningCount="1" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.ArrayList;&#xA;import java.util.Collection;&#xA;&#xA;public class StockIndex {&#xA;&#x9;&#xA;&#x9;private String name;&#xA;&#x9;private double index;&#xA;&#x9;private Collection&lt;Stock> stockList = new ArrayList&lt;>();&#xA;&#x9;&#xA;&#x9;public StockIndex(String name, Stock ...stocks) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void addStock(Stock stock) {&#xA;&#x9;&#x9;stockList.add(stock);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void removeStock(Stock stock) {&#xA;&#x9;&#x9;if(stockList.size() > 0) {&#xA;&#x9;&#x9;&#x9;stockList.remove(stock);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getIndex(){&#xA;&#x9;&#x9;return index;&#xA;&#x9;}" edit="/1/@proposals.1/@proposals.0/@attempts.0/@edit" start="30" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="8" charStart="139" charEnd="143" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1584954625606" resourcePath="/ovinger/src/patterns/observable/StockIndex.java" sizeMeasure="37" warningCount="1" className="patterns.observable.StockIndex">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="implements StockListener {&#xA;&#x9;&#xA;&#x9;private String name;&#xA;&#x9;private double index;&#xA;&#x9;private Collection&lt;Stock> stockList = new ArrayList&lt;>();&#xA;&#x9;&#xA;&#x9;public StockIndex(String name, Stock ...stocks) {&#xA;&#x9;&#x9;this.name = name;&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void addStock(Stock stock) {&#xA;&#x9;&#x9;stockList.add(stock);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void removeStock(Stock stock) {&#xA;&#x9;&#x9;if(stockList.size() > 0) {&#xA;&#x9;&#x9;&#x9;stockList.remove(stock);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getIndex(){&#xA;&#x9;&#x9;return index;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void stockPriceChanges(Stock stock, double oldValue, double newValue) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;" edit="/1/@proposals.1/@proposals.0/@attempts.1/@edit" start="112" end="-8"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="8" charStart="164" charEnd="168" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1584954739560" completion="0.0" testRunName="patterns.observable.StockIndexTest" failureCount="4">
          <failureTests>testRemoveStock</failureTests>
          <failureTests>testAddStock</failureTests>
          <failureTests>testChangePrice</failureTests>
          <failureTests>testConstructor</failureTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.2">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.2/@tasks.0/@q" answer="/0/@parts.2/@tasks.0/@a"/>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.2/@tasks.1/@q" answer="/0/@parts.2/@tasks.1/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.2/@tasks.2/@q" answer="/0/@parts.2/@tasks.2/@a"/>
    </proposals>
    <proposals exercisePart="/0/@parts.3">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.3/@tasks.0/@q" answer="/0/@parts.3/@tasks.0/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.3/@tasks.1/@q" answer="/0/@parts.3/@tasks.1/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.3/@tasks.2/@q" answer="/0/@parts.3/@tasks.2/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.3/@tasks.3/@q" answer="/0/@parts.3/@tasks.3/@a"/>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
