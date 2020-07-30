<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="CardDeck">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the CardDeck class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="encapsulation.CardDeck"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the CardDeck class, to test it."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="encapsulation.CardDeck"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the CardDeck class, by running the CardDeckTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="encapsulation.CardDeckTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Using Eclipse">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580471149105" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="14" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:StringEdit" storedString="package encapsulation;&#xA;&#xA;import java.util.ArrayList;&#xA;&#xA;&#xA;public class CardDeck {&#xA;&#x9;&#xA;&#x9;ArrayList&lt;Card> cardDeck = new ArrayList&lt;Card>();&#xA;&#x9;&#xA;&#x9;public CardDeck(int n) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580473593842" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="53" errorCount="1" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="char[] cardTypes = {'S','H','D','C'};&#xA;&#x9;//ArrayList&lt;Card> cardDeck = new ArrayList&lt;Card>();&#xA;&#x9;&#xA;&#x9;//TODO: fyller cardDeck lista med&#xA;&#x9;//Sykt tungvint i java...&#xA;&#x9;public CardDeck(int n) {&#xA;&#x9;&#x9;//Card cardElement = new Card(0, n);&#xA;&#x9;&#x9;for(int i = 1; i &lt;= n; i++) {&#xA;&#x9;&#x9;&#x9;for(int j = 0; j &lt;= cardTypes.length; j++) {&#xA;&#x9;&#x9;&#x9;&#x9;cardDeck.addAll(cardElement(j,n));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//Returnerer størrelsen på kortstokken ved å bruke size()&#xA;&#x9;public int getCardCount() {&#xA;&#x9;&#x9;return cardDeck.size();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//TODO: bruker get() til å finne kortet med indexen&#xA;&#x9;public Card getCard(int n) {&#xA;&#x9;&#x9;if(n > 0 || n &lt; 54) {&#xA;&#x9;&#x9;&#x9;return cardDeck.get(n);&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Kortet finnes ikke!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void shufflePerfectly() {&#xA;&#x9;&#x9;ArrayList&lt;Card> cardDeckPart1 = new ArrayList&lt;Card>();&#xA;&#x9;&#x9;ArrayList&lt;Card> cardDeckPart2 = new ArrayList&lt;Card>();&#xA;&#x9;&#x9;for(int i = 0; i &lt; 27; i++) {&#xA;&#x9;&#x9;&#x9;cardDeckPart1.add(getCard(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;for(int i = 27; i &lt; 54; i++) {&#xA;&#x9;&#x9;&#x9;cardDeckPart2.add(getCard(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="134" end="-11"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="19" charStart="472" charEnd="483" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580475003889" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="60" errorCount="2" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//bruker da new Card('type',tall) for legge til et nytt element&#xA;&#x9;public CardDeck(int n) {&#xA;&#x9;&#x9;for(int i = 1; i &lt;= n; i++) {&#xA;&#x9;&#x9;&#x9;for(int j = 0; j &lt;= cardTypes.length; j++) {&#xA;&#x9;&#x9;&#x9;&#x9;cardDeck.add(new Card(cardTypes[j],i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//Returnerer størrelsen på kortstokken ved å bruke size()&#xA;&#x9;public int getCardCount() {&#xA;&#x9;&#x9;return cardDeck.size();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//TODO: bruker get() til å finne kortet med indexen&#xA;&#x9;public Card getCard(int n) {&#xA;&#x9;&#x9;if(n > 0 || n &lt; 54) {&#xA;&#x9;&#x9;&#x9;return cardDeck.get(n);&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Kortet finnes ikke!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void shufflePerfectly() {&#xA;&#x9;&#x9;ArrayList&lt;Card> cardDeckPart1 = new ArrayList&lt;Card>();&#xA;&#x9;&#x9;ArrayList&lt;Card> cardDeckPart2 = new ArrayList&lt;Card>();&#xA;&#x9;&#x9;//Deler opp cardDeck i 2 deler&#xA;&#x9;&#x9;for(int i = 0; i &lt; 27; i++) {&#xA;&#x9;&#x9;&#x9;cardDeckPart1.add(getCard(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;for(int i = 27; i &lt; 54; i++) {&#xA;&#x9;&#x9;&#x9;cardDeckPart2.add(getCard(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;//Flett sammen kortene&#xA;&#x9;&#x9;for(int i = 0; i &lt;= cardDeckPart1.size(); i++) {&#xA;&#x9;&#x9;&#x9;this.cardDeck.add(cardDeckPart1)&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="290" end="-14"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="53" charStart="1346" charEnd="1347" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580475140447" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="65" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;&#x9;for(int i = 27; i &lt; 54; i++) {&#xA;&#x9;&#x9;&#x9;cardDeckPart2.add(getCard(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;//Fjern elementene fra cardDeck&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;//Flett sammen kortene&#xA;&#x9;&#x9;for(int i = 0; i &lt;= cardDeckPart1.size(); i++) {&#xA;&#x9;&#x9;&#x9;this.cardDeck.add(cardDeckPart1.get(i));&#xA;&#x9;&#x9;&#x9;this.cardDeck.add(cardDeckPart2.get(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="1112" end="-11"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580475274577" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="65" errorCount="2" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="CardDeck cardDeck1 = new CardDeck()" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="1441" end="-8"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="62" charStart="1536" charEnd="1537" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580475322873" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="66" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="13);&#xA;&#x9;&#x9;System.out.println(cardDeck1);" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="1475" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580475404209" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="66" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" " edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="433" end="-1085"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580475615257" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="67" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="cardDeck1.getCard(1);&#xA;&#x9;&#x9;System.out.println(cardDeck1.getCard(1)" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="1481" end="-10"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580475652061" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="66" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="S" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="1481" end="-48"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580475797242" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="69" warningCount="2" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private static ArrayList&lt;Card> cardDeck = new ArrayList&lt;Card>();&#xA;&#x9;&#xA;&#x9;char[] cardTypes = {'S','H','D','C'};&#xA;&#x9;//ArrayList&lt;Card> cardDeck = new ArrayList&lt;Card>();&#xA;&#x9;&#xA;&#x9;//TODO: fyller cardDeck lista med&#xA;&#x9;//Sykt tungvint i java...&#xA;&#x9;//bruker da new Card('type',tall) for legge til et nytt element&#xA;&#x9;public CardDeck(int n) {&#xA;&#x9;&#x9;for(int i = 1; i &lt;= n; i++) {&#xA;&#x9;&#x9;&#x9;for(int j = 0; j &lt; cardTypes.length; j++) {&#xA;&#x9;&#x9;&#x9;&#x9;cardDeck.add(new Card(cardTypes[j],i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//Returnerer størrelsen på kortstokken ved å bruke size()&#xA;&#x9;public static int getCardCount() {&#xA;&#x9;&#x9;return cardDeck.size();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//TODO: bruker get() til å finne kortet med indexen&#xA;&#x9;public Card getCard(int n) {&#xA;&#x9;&#x9;if(n > 0 || n &lt; 54) {&#xA;&#x9;&#x9;&#x9;return cardDeck.get(n);&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Kortet finnes ikke!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void shufflePerfectly() {&#xA;&#x9;&#x9;ArrayList&lt;Card> cardDeckPart1 = new ArrayList&lt;Card>();&#xA;&#x9;&#x9;ArrayList&lt;Card> cardDeckPart2 = new ArrayList&lt;Card>();&#xA;&#x9;&#x9;//Deler opp cardDeck i 2 deler&#xA;&#x9;&#x9;for(int i = 0; i &lt; 27; i++) {&#xA;&#x9;&#x9;&#x9;cardDeckPart1.add(getCard(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;for(int i = 27; i &lt; 54; i++) {&#xA;&#x9;&#x9;&#x9;cardDeckPart2.add(getCard(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;//Fjern elementene fra cardDeck&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;//Flett sammen kortene&#xA;&#x9;&#x9;for(int i = 0; i &lt;= cardDeckPart1.size(); i++) {&#xA;&#x9;&#x9;&#x9;this.cardDeck.add(cardDeckPart1.get(i));&#xA;&#x9;&#x9;&#x9;this.cardDeck.add(cardDeckPart2.get(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;CardDeck cardDeck1 = new CardDeck(13);&#xA;&#x9;&#x9;for(int i = 0; i &lt;= getCardCount(); i++) {&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="81" end="-52"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="56" charStart="1425" charEnd="1433" severity="1" problemCategory="80" problemType="570425420"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580475816376" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="69" errorCount="1" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="A" edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="89" end="-1508"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="28" charStart="663" charEnd="671" severity="2" problemCategory="50" problemType="33554506"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580475871113" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="69" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="int getCardCount() {&#xA;&#x9;&#x9;return cardDeck.size();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//TODO: bruker get() til å finne kortet med indexen&#xA;&#x9;public Card getCard(int n) {&#xA;&#x9;&#x9;if(n > 0 || n &lt; 54) {&#xA;&#x9;&#x9;&#x9;return cardDeck.get(n);&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Kortet finnes ikke!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void shufflePerfectly() {&#xA;&#x9;&#x9;ArrayList&lt;Card> cardDeckPart1 = new ArrayList&lt;Card>();&#xA;&#x9;&#x9;ArrayList&lt;Card> cardDeckPart2 = new ArrayList&lt;Card>();&#xA;&#x9;&#x9;//Deler opp cardDeck i 2 deler&#xA;&#x9;&#x9;for(int i = 0; i &lt; 27; i++) {&#xA;&#x9;&#x9;&#x9;cardDeckPart1.add(getCard(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;for(int i = 27; i &lt; 54; i++) {&#xA;&#x9;&#x9;&#x9;cardDeckPart2.add(getCard(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;//Fjern elementene fra cardDeck&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;//Flett sammen kortene&#xA;&#x9;&#x9;for(int i = 0; i &lt;= cardDeckPart1.size(); i++) {&#xA;&#x9;&#x9;&#x9;this.cardDeck.add(cardDeckPart1.get(i));&#xA;&#x9;&#x9;&#x9;this.cardDeck.add(cardDeckPart2.get(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;CardDeck cardDeck1 = new CardDeck(13);&#xA;&#x9;&#x9;for(int i = 0; i &lt;= 54; i++) {&#xA;&#x9;&#x9;&#x9;System.out.println(cardDeck1.getCard(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.10/@edit" start="599" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580475906629" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="69" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="2" edit="/1/@proposals.0/@proposals.0/@attempts.11/@edit" start="1510" end="-68"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580475929008" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="69" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.12/@edit" start="1578"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580475997747" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="70" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;&#x9;for(int j = 0; j &lt; cardTypes.length; j++) {&#xA;&#x9;&#x9;&#x9;for(int i = 1; i &lt;= n; i++) {&#xA;&#x9;&#x9;&#x9;cardDeck.add(new Card(cardTypes[j],i));&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.13/@edit" start="390" end="-1067"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580476030015" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="70" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="1" edit="/1/@proposals.0/@proposals.0/@attempts.14/@edit" start="1511" end="-68"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580476588160" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="72" errorCount="1" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;cardDeck.add(new Card(cardTypes[j],i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//Returnerer størrelsen på kortstokken ved å bruke size()&#xA;&#x9;public int getCardCount() {&#xA;&#x9;&#x9;return cardDeck.size();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//TODO: bruker get() til å finne kortet med indexen&#xA;&#x9;public Card getCard(int n) {&#xA;&#x9;&#x9;if(n > 0 || n &lt; 54) {&#xA;&#x9;&#x9;&#x9;return cardDeck.get(n);&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Kortet finnes ikke!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void shufflePerfectly() {&#xA;&#x9;&#x9;ArrayList&lt;Card> cardDeckPart1 = new ArrayList&lt;Card>();&#xA;&#x9;&#x9;ArrayList&lt;Card> cardDeckPart2 = new ArrayList&lt;Card>();&#xA;&#x9;&#x9;//Deler opp cardDeck i 2 deler&#xA;&#x9;&#x9;for(int i = 0; i &lt; 27; i++) {&#xA;&#x9;&#x9;&#x9;cardDeckPart1.add(getCard(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;System.out.println(&quot;CardDeckPart1: &quot; + );&#xA;&#x9;&#x9;for(int i = 27; i &lt; 54; i++) {&#xA;&#x9;&#x9;&#x9;cardDeckPart2.add(getCard(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;//Fjern elementene fra cardDeck&#xA;&#x9;&#x9;this.cardDeck.clear();&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;//Flett sammen kortene&#xA;&#x9;&#x9;for(int i = 0; i &lt;= cardDeckPart1.size(); i++) {&#xA;&#x9;&#x9;&#x9;this.cardDeck.add(cardDeckPart1.get(i));&#xA;&#x9;&#x9;&#x9;this.cardDeck.add(cardDeckPart2.get(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;CardDeck cardDeck1 = new CardDeck(13);&#xA;&#x9;&#x9;for(int i = 0; i &lt;= 51; i++) {&#xA;&#x9;&#x9;&#x9;System.out.println(cardDeck1.getCard(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;cardDeck1.shufflePerfectly();&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.15/@edit" start="473" end="-11"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="47" charStart="1201" charEnd="1202" severity="2" problemCategory="20" problemType="1610612940"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580476743388" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="75" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.Arrays;&#xA;&#xA;&#xA;public class CardDeck {&#xA;&#x9;&#xA;&#x9;private ArrayList&lt;Card> cardDeck = new ArrayList&lt;Card>();&#xA;&#x9;&#xA;&#x9;char[] cardTypes = {'S','H','D','C'};&#xA;&#x9;//ArrayList&lt;Card> cardDeck = new ArrayList&lt;Card>();&#xA;&#x9;&#xA;&#x9;//TODO: fyller cardDeck lista med&#xA;&#x9;//Sykt tungvint i java...&#xA;&#x9;//bruker da new Card('type',tall) for legge til et nytt element&#xA;&#x9;public CardDeck(int n) {&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;for(int j = 0; j &lt; cardTypes.length; j++) {&#xA;&#x9;&#x9;&#x9;for(int i = 1; i &lt;= n; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;cardDeck.add(new Card(cardTypes[j],i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//Returnerer størrelsen på kortstokken ved å bruke size()&#xA;&#x9;public int getCardCount() {&#xA;&#x9;&#x9;return cardDeck.size();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//TODO: bruker get() til å finne kortet med indexen&#xA;&#x9;public Card getCard(int n) {&#xA;&#x9;&#x9;if(n > 0 || n &lt; 54) {&#xA;&#x9;&#x9;&#x9;return cardDeck.get(n);&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Kortet finnes ikke!&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void shufflePerfectly() {&#xA;&#x9;&#x9;ArrayList&lt;Card> cardDeckPart1 = new ArrayList&lt;Card>();&#xA;&#x9;&#x9;ArrayList&lt;Card> cardDeckPart2 = new ArrayList&lt;Card>();&#xA;&#x9;&#x9;//Deler opp cardDeck i 2 deler&#xA;&#x9;&#x9;for(int i = 0; i &lt; 27; i++) {&#xA;&#x9;&#x9;&#x9;cardDeckPart1.add(getCard(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;System.out.println(&quot;CardDeckPart1: &quot; + Arrays.toString(cardDeckPart1.toArray()));&#xA;&#x9;&#x9;for(int i = 27; i &lt; 54; i++) {&#xA;&#x9;&#x9;&#x9;cardDeckPart2.add(getCard(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;/*&#xA;&#x9;&#x9;//Fjern elementene fra cardDeck&#xA;&#x9;&#x9;this.cardDeck.clear();&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;//Flett sammen kortene&#xA;&#x9;&#x9;for(int i = 0; i &lt;= cardDeckPart1.size(); i++) {&#xA;&#x9;&#x9;&#x9;this.cardDeck.add(cardDeckPart1.get(i));&#xA;&#x9;&#x9;&#x9;this.cardDeck.add(cardDeckPart2.get(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;*/" edit="/1/@proposals.0/@proposals.0/@attempts.16/@edit" start="52" end="-219"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580476798243" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="76" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.17/@edit" start="1143" end="-611"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580476837257" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="77" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(&quot;CardDeckPart1: &quot; + Arrays.toString(cardDeckPart2.toArray()));&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.18/@edit" start="1301" end="-456"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580476863413" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="77" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="2" edit="/1/@proposals.0/@proposals.0/@attempts.19/@edit" start="1251" end="-589"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580476934040" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="77" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="6; i++) {&#xA;&#x9;&#x9;&#x9;cardDeckPart1.add(getCard(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;System.out.println(&quot;CardDeckPart1: &quot; + Arrays.toString(cardDeckPart1.toArray()));&#xA;&#x9;&#x9;for(int i = 26" edit="/1/@proposals.0/@proposals.0/@attempts.20/@edit" start="1093" end="-597"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580477087446" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="78" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;&#x9;//Fjern elementene fra cardDeck&#xA;&#x9;&#x9;this.cardDeck.clear();&#xA;&#x9;&#x9;System.out.println(&quot;Original CardDeck: &quot; + Arrays.toString(cardDeck.toArray()));&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;//Flett sammen kortene&#xA;&#x9;&#x9;for(int i = 0; i &lt;= cardDeckPart1.size(); i++) {&#xA;&#x9;&#x9;&#x9;this.cardDeck.add(cardDeckPart1.get(i));&#xA;&#x9;&#x9;&#x9;this.cardDeck.add(cardDeckPart2.get(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.21/@edit" start="1385" end="-219"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580477121227" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="78" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="-1" edit="/1/@proposals.0/@proposals.0/@attempts.22/@edit" start="1598" end="-322"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580477212088" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="79" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(Arrays.toString(cardDeck.toArray()) + &quot;This would be a perfect shuffle!&quot;);&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.23/@edit" start="1703" end="-219"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580477448488" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="77" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//&#xA;&#x9;&#x9;System.out.println(&quot;CardDeckPart1: &quot; + Arrays.toString(cardDeckPart1.toArray()));&#xA;&#x9;&#x9;for(int i = 26; i &lt; 52; i++) {&#xA;&#x9;&#x9;&#x9;cardDeckPart2.add(getCard(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;System.out.println(&quot;CardDeckPart1: &quot; + Arrays.toString(cardDeckPart2.toArray()));&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;//Fjern elementene fra cardDeck&#xA;&#x9;&#x9;this.cardDeck.clear();&#xA;&#x9;&#x9;System.out.println(&quot;Original CardDeck: &quot; + Arrays.toString(cardDeck.toArray()));&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;//Flett sammen kortene&#xA;&#x9;&#x9;for(int i = 0; i &lt;= cardDeckPart1.size()-1; i++) {&#xA;&#x9;&#x9;&#x9;this.cardDeck.add(cardDeckPart1.get(i));&#xA;&#x9;&#x9;&#x9;this.cardDeck.add(cardDeckPart2.get(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;System.out.println(&quot;Perfectly shuffled&quot; + Arrays.toString(cardDeck.toArray()));&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;CardDeck cardDeck1 = new CardDeck(13);&#xA;&#x9;&#x9;System.out.println(Arrays.toString(cardDeck1.cardDeck.toArray()));" edit="/1/@proposals.0/@proposals.0/@attempts.24/@edit" start="1143" end="-46"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580477893948" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="77" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="cardDeck.size()/2; i++) {&#xA;&#x9;&#x9;&#x9;cardDeckPart1.add(getCard(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;//&#xA;&#x9;&#x9;System.out.println(&quot;CardDeckPart1: &quot; + Arrays.toString(cardDeckPart1.toArray()));&#xA;&#x9;&#x9;for(int i = cardDeck.size()/2; i &lt; cardDeck.size()" edit="/1/@proposals.0/@proposals.0/@attempts.25/@edit" start="1092" end="-739"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580478227733" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="81" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="/**&#xA; * EZ&#xA; * @author jorge&#xA; *&#xA; */" edit="/1/@proposals.0/@proposals.0/@attempts.26/@edit" start="77" end="-1959"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580480532316" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="78" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;//Dobbel interer gjennom for å legge til kort i riktig rekkefølge, istedenfor å gjøre dette manuelt 4 ganger.&#xA;&#x9;//Sykt tungvint i java...&#xA;&#x9;//bruker da new Card('type',tall) for legge til et nytt element&#xA;&#x9;public CardDeck(int n) {&#xA;&#x9;&#x9;for(int j = 0; j &lt; cardTypes.length; j++) {&#xA;&#x9;&#x9;&#x9;for(int i = 1; i &lt;= n; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;cardDeck.add(new Card(cardTypes[j],i));&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//Returnerer størrelsen på kortstokken ved å bruke size()&#xA;&#x9;public int getCardCount() {&#xA;&#x9;&#x9;return cardDeck.size();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//Bruker get() til å finne kortet med indexen hvis det er&#xA;&#x9;public Card getCard(int n) {&#xA;&#x9;&#x9;if(n > 0 || n &lt; 53" edit="/1/@proposals.0/@proposals.0/@attempts.27/@edit" start="239" end="-1258"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580480561822" resourcePath="/ovinger/src/encapsulation/CardDeck.java" sizeMeasure="78" className="encapsulation.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//System.out.println(&quot;CardDeckPart1: &quot; + Arrays.toString(cardDeckPart1.toArray()));&#xA;&#x9;&#x9;for(int i = cardDeck.size()/2; i &lt; cardDeck.size(); i++) {&#xA;&#x9;&#x9;&#x9;cardDeckPart2.add(getCard(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;//System.out.println(&quot;CardDeckPart1: &quot; + Arrays.toString(cardDeckPart2.toArray()));&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;//Fjern elementene fra cardDeck&#xA;&#x9;&#x9;this.cardDeck.clear();&#xA;&#x9;&#x9;//System.out.println(&quot;Original CardDeck: &quot; + Arrays.toString(cardDeck.toArray()));&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;//Flett sammen kortene&#xA;&#x9;&#x9;for(int i = 0; i &lt;= cardDeckPart1.size()-1; i++) {&#xA;&#x9;&#x9;&#x9;this.cardDeck.add(cardDeckPart1.get(i));&#xA;&#x9;&#x9;&#x9;this.cardDeck.add(cardDeckPart2.get(i));&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;//" edit="/1/@proposals.0/@proposals.0/@attempts.28/@edit" start="1219" end="-288"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580475359638" mode="run" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.ArrayIndexOutOfBoundsException: Array index out of range: 4&#xD;
	at ovinger/encapsulation.CardDeck.&lt;init>(CardDeck.java:19)&#xD;
	at ovinger/encapsulation.CardDeck.main(CardDeck.java:62)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580475424249" mode="run" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>encapsulation.CardDeck@809e1a5e&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580475430233" mode="run" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>encapsulation.CardDeck@e428c297&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580475655374" mode="run" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>H1&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580475874096" mode="run" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>S1&#xD;
H1&#xD;
D1&#xD;
C1&#xD;
S2&#xD;
H2&#xD;
D2&#xD;
C2&#xD;
S3&#xD;
H3&#xD;
D3&#xD;
C3&#xD;
S4&#xD;
H4&#xD;
D4&#xD;
C4&#xD;
S5&#xD;
H5&#xD;
D5&#xD;
C5&#xD;
S6&#xD;
H6&#xD;
D6&#xD;
C6&#xD;
S7&#xD;
H7&#xD;
D7&#xD;
C7&#xD;
S8&#xD;
H8&#xD;
D8&#xD;
C8&#xD;
S9&#xD;
H9&#xD;
D9&#xD;
C9&#xD;
S10&#xD;
H10&#xD;
D10&#xD;
C10&#xD;
S11&#xD;
H11&#xD;
D11&#xD;
C11&#xD;
S12&#xD;
H12&#xD;
D12&#xD;
C12&#xD;
S13&#xD;
H13&#xD;
D13&#xD;
C13&#xD;
Exception in thread &quot;main&quot; java.lang.IndexOutOfBoundsException: Index 52 out of bounds for length 52&#xD;
	at java.base/jdk.internal.util.Preconditions.outOfBounds(Preconditions.java:64)&#xD;
	at java.base/jdk.internal.util.Preconditions.outOfBoundsCheckIndex(Preconditions.java:70)&#xD;
	at java.base/jdk.internal.util.Preconditions.checkIndex(Preconditions.java:248)&#xD;
	at java.base/java.util.Objects.checkIndex(Objects.java:373)&#xD;
	at java.base/java.util.ArrayList.get(ArrayList.java:425)&#xD;
	at ovinger/encapsulation.CardDeck.getCard(CardDeck.java:34)&#xD;
	at ovinger/encapsulation.CardDeck.main(CardDeck.java:64)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580475931758" mode="run" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>S1&#xD;
H1&#xD;
D1&#xD;
C1&#xD;
S2&#xD;
H2&#xD;
D2&#xD;
C2&#xD;
S3&#xD;
H3&#xD;
D3&#xD;
C3&#xD;
S4&#xD;
H4&#xD;
D4&#xD;
C4&#xD;
S5&#xD;
H5&#xD;
D5&#xD;
C5&#xD;
S6&#xD;
H6&#xD;
D6&#xD;
C6&#xD;
S7&#xD;
H7&#xD;
D7&#xD;
C7&#xD;
S8&#xD;
H8&#xD;
D8&#xD;
C8&#xD;
S9&#xD;
H9&#xD;
D9&#xD;
C9&#xD;
S10&#xD;
H10&#xD;
D10&#xD;
C10&#xD;
S11&#xD;
H11&#xD;
D11&#xD;
C11&#xD;
S12&#xD;
H12&#xD;
D12&#xD;
C12&#xD;
S13&#xD;
H13&#xD;
D13&#xD;
C13&#xD;
Exception in thread &quot;main&quot; java.lang.IndexOutOfBoundsException: Index 52 out of bounds for length 52&#xD;
	at java.base/jdk.internal.util.Preconditions.outOfBounds(Preconditions.java:64)&#xD;
	at java.base/jdk.internal.util.Preconditions.outOfBoundsCheckIndex(Preconditions.java:70)&#xD;
	at java.base/jdk.internal.util.Preconditions.checkIndex(Preconditions.java:248)&#xD;
	at java.base/java.util.Objects.checkIndex(Objects.java:373)&#xD;
	at java.base/java.util.ArrayList.get(ArrayList.java:425)&#xD;
	at ovinger/encapsulation.CardDeck.getCard(CardDeck.java:34)&#xD;
	at ovinger/encapsulation.CardDeck.main(CardDeck.java:64)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580476006520" mode="run" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>S1&#xD;
S2&#xD;
S3&#xD;
S4&#xD;
S5&#xD;
S6&#xD;
S7&#xD;
S8&#xD;
S9&#xD;
S10&#xD;
S11&#xD;
S12&#xD;
S13&#xD;
H1&#xD;
H2&#xD;
H3&#xD;
H4&#xD;
H5&#xD;
H6&#xD;
H7&#xD;
H8&#xD;
H9&#xD;
H10&#xD;
H11&#xD;
H12&#xD;
H13&#xD;
D1&#xD;
D2&#xD;
D3&#xD;
D4&#xD;
D5&#xD;
D6&#xD;
D7&#xD;
D8&#xD;
D9&#xD;
D10&#xD;
D11&#xD;
D12&#xD;
D13&#xD;
C1&#xD;
C2&#xD;
C3&#xD;
C4&#xD;
C5&#xD;
C6&#xD;
C7&#xD;
C8&#xD;
C9&#xD;
C10&#xD;
C11&#xD;
C12&#xD;
C13&#xD;
Exception in thread &quot;main&quot; java.lang.IndexOutOfBoundsException: Index 52 out of bounds for length 52&#xD;
	at java.base/jdk.internal.util.Preconditions.outOfBounds(Preconditions.java:64)&#xD;
	at java.base/jdk.internal.util.Preconditions.outOfBoundsCheckIndex(Preconditions.java:70)&#xD;
	at java.base/jdk.internal.util.Preconditions.checkIndex(Preconditions.java:248)&#xD;
	at java.base/java.util.Objects.checkIndex(Objects.java:373)&#xD;
	at java.base/java.util.ArrayList.get(ArrayList.java:425)&#xD;
	at ovinger/encapsulation.CardDeck.getCard(CardDeck.java:35)&#xD;
	at ovinger/encapsulation.CardDeck.main(CardDeck.java:65)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580476032718" mode="run" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>S1&#xD;
S2&#xD;
S3&#xD;
S4&#xD;
S5&#xD;
S6&#xD;
S7&#xD;
S8&#xD;
S9&#xD;
S10&#xD;
S11&#xD;
S12&#xD;
S13&#xD;
H1&#xD;
H2&#xD;
H3&#xD;
H4&#xD;
H5&#xD;
H6&#xD;
H7&#xD;
H8&#xD;
H9&#xD;
H10&#xD;
H11&#xD;
H12&#xD;
H13&#xD;
D1&#xD;
D2&#xD;
D3&#xD;
D4&#xD;
D5&#xD;
D6&#xD;
D7&#xD;
D8&#xD;
D9&#xD;
D10&#xD;
D11&#xD;
D12&#xD;
D13&#xD;
C1&#xD;
C2&#xD;
C3&#xD;
C4&#xD;
C5&#xD;
C6&#xD;
C7&#xD;
C8&#xD;
C9&#xD;
C10&#xD;
C11&#xD;
C12&#xD;
C13&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580476840216" mode="run" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>S1&#xD;
S2&#xD;
S3&#xD;
S4&#xD;
S5&#xD;
S6&#xD;
S7&#xD;
S8&#xD;
S9&#xD;
S10&#xD;
S11&#xD;
S12&#xD;
S13&#xD;
H1&#xD;
H2&#xD;
H3&#xD;
H4&#xD;
H5&#xD;
H6&#xD;
H7&#xD;
H8&#xD;
H9&#xD;
H10&#xD;
H11&#xD;
H12&#xD;
H13&#xD;
D1&#xD;
D2&#xD;
D3&#xD;
D4&#xD;
D5&#xD;
D6&#xD;
D7&#xD;
D8&#xD;
D9&#xD;
D10&#xD;
D11&#xD;
D12&#xD;
D13&#xD;
C1&#xD;
C2&#xD;
C3&#xD;
C4&#xD;
C5&#xD;
C6&#xD;
C7&#xD;
C8&#xD;
C9&#xD;
C10&#xD;
C11&#xD;
C12&#xD;
C13&#xD;
CardDeckPart1: [S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, H1, H2, H3, H4, H5, H6, H7, H8, H9, H10, H11, H12, H13, D1]&#xD;
Exception in thread &quot;main&quot; java.lang.IndexOutOfBoundsException: Index 52 out of bounds for length 52&#xD;
	at java.base/jdk.internal.util.Preconditions.outOfBounds(Preconditions.java:64)&#xD;
	at java.base/jdk.internal.util.Preconditions.outOfBoundsCheckIndex(Preconditions.java:70)&#xD;
	at java.base/jdk.internal.util.Preconditions.checkIndex(Preconditions.java:248)&#xD;
	at java.base/java.util.Objects.checkIndex(Objects.java:373)&#xD;
	at java.base/java.util.ArrayList.get(ArrayList.java:425)&#xD;
	at ovinger/encapsulation.CardDeck.getCard(CardDeck.java:35)&#xD;
	at ovinger/encapsulation.CardDeck.shufflePerfectly(CardDeck.java:51)&#xD;
	at ovinger/encapsulation.CardDeck.main(CardDeck.java:72)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580476866253" mode="run" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>S1&#xD;
S2&#xD;
S3&#xD;
S4&#xD;
S5&#xD;
S6&#xD;
S7&#xD;
S8&#xD;
S9&#xD;
S10&#xD;
S11&#xD;
S12&#xD;
S13&#xD;
H1&#xD;
H2&#xD;
H3&#xD;
H4&#xD;
H5&#xD;
H6&#xD;
H7&#xD;
H8&#xD;
H9&#xD;
H10&#xD;
H11&#xD;
H12&#xD;
H13&#xD;
D1&#xD;
D2&#xD;
D3&#xD;
D4&#xD;
D5&#xD;
D6&#xD;
D7&#xD;
D8&#xD;
D9&#xD;
D10&#xD;
D11&#xD;
D12&#xD;
D13&#xD;
C1&#xD;
C2&#xD;
C3&#xD;
C4&#xD;
C5&#xD;
C6&#xD;
C7&#xD;
C8&#xD;
C9&#xD;
C10&#xD;
C11&#xD;
C12&#xD;
C13&#xD;
CardDeckPart1: [S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, H1, H2, H3, H4, H5, H6, H7, H8, H9, H10, H11, H12, H13, D1]&#xD;
CardDeckPart1: [D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13]&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580476937508" mode="run" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>S1&#xD;
S2&#xD;
S3&#xD;
S4&#xD;
S5&#xD;
S6&#xD;
S7&#xD;
S8&#xD;
S9&#xD;
S10&#xD;
S11&#xD;
S12&#xD;
S13&#xD;
H1&#xD;
H2&#xD;
H3&#xD;
H4&#xD;
H5&#xD;
H6&#xD;
H7&#xD;
H8&#xD;
H9&#xD;
H10&#xD;
H11&#xD;
H12&#xD;
H13&#xD;
D1&#xD;
D2&#xD;
D3&#xD;
D4&#xD;
D5&#xD;
D6&#xD;
D7&#xD;
D8&#xD;
D9&#xD;
D10&#xD;
D11&#xD;
D12&#xD;
D13&#xD;
C1&#xD;
C2&#xD;
C3&#xD;
C4&#xD;
C5&#xD;
C6&#xD;
C7&#xD;
C8&#xD;
C9&#xD;
C10&#xD;
C11&#xD;
C12&#xD;
C13&#xD;
CardDeckPart1: [S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, H1, H2, H3, H4, H5, H6, H7, H8, H9, H10, H11, H12, H13]&#xD;
CardDeckPart1: [D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13]&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580477096630" mode="run" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>S1&#xD;
S2&#xD;
S3&#xD;
S4&#xD;
S5&#xD;
S6&#xD;
S7&#xD;
S8&#xD;
S9&#xD;
S10&#xD;
S11&#xD;
S12&#xD;
S13&#xD;
H1&#xD;
H2&#xD;
H3&#xD;
H4&#xD;
H5&#xD;
H6&#xD;
H7&#xD;
H8&#xD;
H9&#xD;
H10&#xD;
H11&#xD;
H12&#xD;
H13&#xD;
D1&#xD;
D2&#xD;
D3&#xD;
D4&#xD;
D5&#xD;
D6&#xD;
D7&#xD;
D8&#xD;
D9&#xD;
D10&#xD;
D11&#xD;
D12&#xD;
D13&#xD;
C1&#xD;
C2&#xD;
C3&#xD;
C4&#xD;
C5&#xD;
C6&#xD;
C7&#xD;
C8&#xD;
C9&#xD;
C10&#xD;
C11&#xD;
C12&#xD;
C13&#xD;
CardDeckPart1: [S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, H1, H2, H3, H4, H5, H6, H7, H8, H9, H10, H11, H12, H13]&#xD;
CardDeckPart1: [D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13]&#xD;
Original CardDeck: []&#xD;
Exception in thread &quot;main&quot; java.lang.IndexOutOfBoundsException: Index 26 out of bounds for length 26&#xD;
	at java.base/jdk.internal.util.Preconditions.outOfBounds(Preconditions.java:64)&#xD;
	at java.base/jdk.internal.util.Preconditions.outOfBoundsCheckIndex(Preconditions.java:70)&#xD;
	at java.base/jdk.internal.util.Preconditions.checkIndex(Preconditions.java:248)&#xD;
	at java.base/java.util.Objects.checkIndex(Objects.java:373)&#xD;
	at java.base/java.util.ArrayList.get(ArrayList.java:425)&#xD;
	at ovinger/encapsulation.CardDeck.shufflePerfectly(CardDeck.java:61)&#xD;
	at ovinger/encapsulation.CardDeck.main(CardDeck.java:73)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580477128777" mode="run" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>S1&#xD;
S2&#xD;
S3&#xD;
S4&#xD;
S5&#xD;
S6&#xD;
S7&#xD;
S8&#xD;
S9&#xD;
S10&#xD;
S11&#xD;
S12&#xD;
S13&#xD;
H1&#xD;
H2&#xD;
H3&#xD;
H4&#xD;
H5&#xD;
H6&#xD;
H7&#xD;
H8&#xD;
H9&#xD;
H10&#xD;
H11&#xD;
H12&#xD;
H13&#xD;
D1&#xD;
D2&#xD;
D3&#xD;
D4&#xD;
D5&#xD;
D6&#xD;
D7&#xD;
D8&#xD;
D9&#xD;
D10&#xD;
D11&#xD;
D12&#xD;
D13&#xD;
C1&#xD;
C2&#xD;
C3&#xD;
C4&#xD;
C5&#xD;
C6&#xD;
C7&#xD;
C8&#xD;
C9&#xD;
C10&#xD;
C11&#xD;
C12&#xD;
C13&#xD;
CardDeckPart1: [S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, H1, H2, H3, H4, H5, H6, H7, H8, H9, H10, H11, H12, H13]&#xD;
CardDeckPart1: [D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13]&#xD;
Original CardDeck: []&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580477215891" mode="run" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>S1&#xD;
S2&#xD;
S3&#xD;
S4&#xD;
S5&#xD;
S6&#xD;
S7&#xD;
S8&#xD;
S9&#xD;
S10&#xD;
S11&#xD;
S12&#xD;
S13&#xD;
H1&#xD;
H2&#xD;
H3&#xD;
H4&#xD;
H5&#xD;
H6&#xD;
H7&#xD;
H8&#xD;
H9&#xD;
H10&#xD;
H11&#xD;
H12&#xD;
H13&#xD;
D1&#xD;
D2&#xD;
D3&#xD;
D4&#xD;
D5&#xD;
D6&#xD;
D7&#xD;
D8&#xD;
D9&#xD;
D10&#xD;
D11&#xD;
D12&#xD;
D13&#xD;
C1&#xD;
C2&#xD;
C3&#xD;
C4&#xD;
C5&#xD;
C6&#xD;
C7&#xD;
C8&#xD;
C9&#xD;
C10&#xD;
C11&#xD;
C12&#xD;
C13&#xD;
CardDeckPart1: [S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, H1, H2, H3, H4, H5, H6, H7, H8, H9, H10, H11, H12, H13]&#xD;
CardDeckPart1: [D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13]&#xD;
Original CardDeck: []&#xD;
[S1, D1, S2, D2, S3, D3, S4, D4, S5, D5, S6, D6, S7, D7, S8, D8, S9, D9, S10, D10, S11, D11, S12, D12, S13, D13, H1, C1, H2, C2, H3, C3, H4, C4, H5, C5, H6, C6, H7, C7, H8, C8, H9, C9, H10, C10, H11, C11, H12, C12, H13, C13]This would be a perfect shuffle!&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580477629569" mode="run" className="encapsulation.CardDeck">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.CardDeck</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>[S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, H1, H2, H3, H4, H5, H6, H7, H8, H9, H10, H11, H12, H13, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13]&#xD;
CardDeckPart1: [S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, H1, H2, H3, H4, H5, H6, H7, H8, H9, H10, H11, H12, H13]&#xD;
CardDeckPart1: [D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13]&#xD;
Original CardDeck: []&#xD;
Perfectly shuffled[S1, D1, S2, D2, S3, D3, S4, D4, S5, D5, S6, D6, S7, D7, S8, D8, S9, D9, S10, D10, S11, D11, S12, D12, S13, D13, H1, C1, H2, C2, H3, C3, H4, C4, H5, C5, H6, C6, H7, C7, H8, C8, H9, C9, H10, C10, H11, C11, H12, C12, H13, C13]&#xD;
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1580477721646" completion="0.5" testRunName="encapsulation.CardDeckTest" successCount="1" errorCount="1">
          <successTests>testConstructor</successTests>
          <errorTests>testShufflePerfectly</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1580477907345" completion="1.0" testRunName="encapsulation.CardDeckTest" successCount="2">
          <successTests>testShufflePerfectly</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1580480538637" completion="1.0" testRunName="encapsulation.CardDeckTest" successCount="2">
          <successTests>testShufflePerfectly</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1580480568334" completion="1.0" testRunName="encapsulation.CardDeckTest" successCount="2">
          <successTests>testShufflePerfectly</successTests>
          <successTests>testConstructor</successTests>
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
