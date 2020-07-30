<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="CardContainer">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Card class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="interfaces.Card"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the CardComparator class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="interfaces.CardComparator"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Card class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="interfaces.Card"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the CardComparator class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="interfaces.CardComparator"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the CardComparatorTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="interfaces.CardComparatorTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="interfaces.Card*" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583743017735" resourcePath="/ovinger/src/interfaces/Card.java" sizeMeasure="68" className="interfaces.Card">
          <edit xsi:type="exercise:StringEdit" storedString="package interfaces;&#xA;&#xA;&#xA;public class Card implements Comparable&lt;Card>{&#xA;&#xA;&#x9;private char suit;&#xA;&#x9;private int face;&#xA;&#x9;&#xA;&#x9;//Sjekker da om suit er S, H, D eller C og om face er mellom 1 og 13 for å sette tilstand&#xA;&#x9;//Hvis dette er false kaster vi en IllegalArgumentException&#xA;&#x9;public Card(char suit, int face) {&#xA;&#x9;&#x9;if((suit == 'S' || suit == 'H' || suit == 'D' || suit == 'C')&#xA;&#x9;&#x9;&#x9;&#x9;&amp;&amp; (face &lt; 14 &amp;&amp; face > 0)) {&#xA;&#x9;&#x9;&#x9;this.suit = suit;&#xA;&#x9;&#x9;&#x9;this.face = face;&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Ulovlig kort&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//Returnerer suit&#xA;&#x9;public char getSuit() {&#xA;&#x9;&#x9;return suit;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//Returnerer face&#xA;&#x9;public int getFace() {&#xA;&#x9;&#x9;return face;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//Returnerer suit og face som en streng&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return &quot;&quot; + suit + face + &quot;&quot;;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Card myCard = new Card('S',13);&#xA;&#x9;&#x9;System.out.println(myCard.toString()); &#xA;&#x9;&#x9;&#xA;&#x9;&#x9;System.out.println(myCard.getFace());&#xA;&#x9;&#x9;System.out.println(myCard.getSuit());&#xA;&#x9;&#xA;&#x9;}&#xA;&#xA;&#x9;public int compareTo(Card card) {&#xA;&#x9;&#x9;char thisSuit = this.getSuit();&#xA;&#x9;&#x9;int compareSuit = this.getSuit();&#xA;&#x9;&#x9;if (thisSuit != compareSuit){&#xA;&#x9;&#x9;&#x9;return thisSuit - compareSuit;&#xA;&#x9;&#x9;} else if (thisSuit == compareSuit){&#xA;&#x9;&#x9;&#x9;&#x9;return this.getFace() - card.getFace();&#xA;&#x9;&#x9;} return face;&#xA;&#x9;&#x9;/*&#xA;&#x9;&#x9;//Sjekker om et kort har like type og hvem som er størst&#xA;&#x9;&#x9;if(card1.getSuit() == card2.getSuit()) {&#xA;&#x9;&#x9;&#x9;if(card1.getFace() > card2.getFace()) {&#xA;&#x9;&#x9;&#x9;&#x9;return card1;&#xA;&#x9;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;&#x9;return card2;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;return card1;&#xA;&#x9;&#x9;*/&#xA;&#x9;}&#xA;&#x9;&#xA;}&#xA;&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583743223979" resourcePath="/ovinger/src/interfaces/Card.java" sizeMeasure="73" className="interfaces.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#xA;&#x9;public int compareTo(Card card) {&#xA;&#x9;&#x9;char thisSuit = this.getSuit();&#xA;&#x9;&#x9;int compareSuit = this.getSuit();&#xA;&#x9;&#x9;if (thisSuit != compareSuit){&#xA;&#x9;&#x9;&#x9;return thisSuit - compareSuit;&#xA;&#x9;&#x9;} else if (thisSuit == compareSuit){&#xA;&#x9;&#x9;&#x9;&#x9;return this.getFace() - card.getFace();&#xA;&#x9;&#x9;} return face;&#xA;&#x9;&#x9;/*&#xA;&#x9;&#x9;//Sjekker om et kort har like type og hvem som er størst&#xA;&#x9;&#x9;if(card1.getSuit() == card2.getSuit()) {&#xA;&#x9;&#x9;&#x9;if(card1.getFace() > card2.getFace()) {&#xA;&#x9;&#x9;&#x9;&#x9;return card1;&#xA;&#x9;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;&#x9;return card2;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;return card1;&#xA;&#x9;&#x9;*/&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Card card1 = new Card('H',13);&#xA;&#x9;&#x9;Card card2 = new Card('H', 12);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;System.out.println(card1.compareTo(card2));&#xA;&#x9;&#x9;&#xA;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="747" end="-7"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583743248723" resourcePath="/ovinger/src/interfaces/Card.java" sizeMeasure="73" className="interfaces.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="3" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="1360" end="-73"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583743277099" resourcePath="/ovinger/src/interfaces/Card.java" sizeMeasure="73" className="interfaces.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=")" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="1360" end="-72"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583743317872" resourcePath="/ovinger/src/interfaces/Card.java" sizeMeasure="73" className="interfaces.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="C" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="1355" end="-77"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583746053176" resourcePath="/ovinger/src/interfaces/Card.java" sizeMeasure="68" errorCount="1" className="interfaces.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="/*&#xA;&#x9;&#x9;char thisSuit = this.getSuit();&#xA;&#x9;&#x9;int compareSuit = this.getSuit();&#xA;&#x9;&#x9;if (thisSuit != compareSuit){&#xA;&#x9;&#x9;&#x9;return thisSuit - compareSuit;&#xA;&#x9;&#x9;} else if (thisSuit == compareSuit){&#xA;&#x9;&#x9;&#x9;&#x9;return this.getFace() - card.getFace();&#xA;&#x9;&#x9;} return face;&#xA;&#x9;&#x9;*/&#xA;&#x9;&#x9;//Sjekker om et kort har like type og hvem som er størst&#xA;&#x9;&#xA;&#x9;&#x9;return 0;&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="782" end="-184"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="38" charStart="817" charEnd="818" severity="2" problemCategory="20" problemType="1610612967"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583746149761" resourcePath="/ovinger/src/interfaces/Card.java" sizeMeasure="68" errorCount="1" className="interfaces.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="{&#xA;&#x9;&#x9;/*&#xA;&#x9;&#x9;char thisSuit = this.getSuit();&#xA;&#x9;&#x9;int compareSuit = this.getSuit();&#xA;&#x9;&#x9;if (thisSuit != compareSuit){&#xA;&#x9;&#x9;&#x9;return thisSuit - compareSuit;&#xA;&#x9;&#x9;} else if (thisSuit == compareSuit){&#xA;&#x9;&#x9;&#x9;&#x9;return this.getFace() - card.getFace();&#xA;&#x9;&#x9;} return face;&#xA;&#x9;&#x9;*/&#xA;&#x9;&#x9;//Sjekker om et kort har like type og hvem som er størst&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="782" end="-193"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="38" charStart="798" charEnd="818" severity="2" problemCategory="50" problemType="603979884"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583746577934" resourcePath="/ovinger/src/interfaces/Card.java" sizeMeasure="78" errorCount="1" className="interfaces.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;&#x9;//Sjekker om et kort har like type og hvem som er størst&#xA;&#x9;&#x9;if(card1.getSuit() == card2.getSuit()) {&#xA;&#x9;&#x9;&#x9;if(card1.getFace() > card2.getFace()) {&#xA;&#x9;&#x9;&#x9;&#x9;return card1;&#xA;&#x9;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;&#x9;return card2;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;return card1;&#xA;&#x9;&#x9;*/&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Card card1 = new Card('H',13);&#xA;&#x9;&#x9;Card card2 = new Card('C', 1);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;System.out.println(card1.compareTo(card2));&#xA;&#x9;&#x9;System.out.println('a'-'b'" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="1027" end="-21"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="38" charStart="798" charEnd="818" severity="2" problemCategory="50" problemType="603979884"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583746604226" resourcePath="/ovinger/src/interfaces/Card.java" sizeMeasure="78" errorCount="1" warningCount="2" className="interfaces.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="1383" end="-93"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="66" charStart="1414" charEnd="1419" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583746615121" resourcePath="/ovinger/src/interfaces/Card.java" sizeMeasure="78" errorCount="1" warningCount="2" className="interfaces.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="a" edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="1455" end="-22"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="66" charStart="1414" charEnd="1419" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583746688598" resourcePath="/ovinger/src/interfaces/Card.java" sizeMeasure="78" errorCount="1" warningCount="2" className="interfaces.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="c" edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="1451" end="-26"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="65" charStart="1380" charEnd="1385" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583746701641" resourcePath="/ovinger/src/interfaces/Card.java" sizeMeasure="78" errorCount="1" warningCount="2" className="interfaces.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="z" edit="/1/@proposals.0/@proposals.0/@attempts.10/@edit" start="1451" end="-26"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="66" charStart="1414" charEnd="1419" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583747472107" resourcePath="/ovinger/src/interfaces/Card.java" sizeMeasure="87" errorCount="1" warningCount="2" className="interfaces.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//Sjekke om de er like&#xA;&#x9;&#x9;char firstSuit = this.getSuit();&#xA;&#x9;&#x9;System.out.println(firstSuit);&#xA;&#x9;&#x9;int firstFace = this.getFace();&#xA;&#x9;&#x9;System.out.println(firstFace);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(firstSuit == card.getSuit()) {&#xA;&#x9;&#x9;&#x9;return firstFace - card.getFace();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.11/@edit" start="1255" end="-223"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="38" charStart="798" charEnd="818" severity="2" problemCategory="50" problemType="603979884"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583747509473" resourcePath="/ovinger/src/interfaces/Card.java" sizeMeasure="87" errorCount="1" className="interfaces.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="H', 1);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.12/@edit" start="1608" end="-93"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="38" charStart="798" charEnd="818" severity="2" problemCategory="50" problemType="603979884"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583747544260" resourcePath="/ovinger/src/interfaces/Card.java" sizeMeasure="88" className="interfaces.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="return card.getFace();&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.13/@edit" start="1496" end="-221"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583747824949" resourcePath="/ovinger/src/interfaces/Card.java" sizeMeasure="91" className="interfaces.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(firstSuit == card.getSuit()) {&#xA;&#x9;&#x9;&#x9;return firstFace - card.getFace();&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;return firstFace - card.getFace();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Card card1 = new Card('H',13);&#xA;&#x9;&#x9;Card card2 = new Card('C', 1);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;System.out.println(card1.compareTo(card2));&#xA;&#x9;&#x9;//" edit="/1/@proposals.0/@proposals.0/@attempts.14/@edit" start="1418" end="-47"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583747913156" resourcePath="/ovinger/src/interfaces/Card.java" sizeMeasure="91" className="interfaces.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Suit - card.getSuit" edit="/1/@proposals.0/@proposals.0/@attempts.15/@edit" start="1521" end="-233"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583742699130" resourcePath="/ovinger/src/interfaces/CardComparator.java" sizeMeasure="5" className="interfaces.CardComparator">
          <edit xsi:type="exercise:StringEdit" storedString="package interfaces;&#xA;&#xA;public class CardComparator {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583743235408" resourcePath="/ovinger/src/interfaces/CardComparator.java" sizeMeasure="18" className="interfaces.CardComparator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.Comparator;&#xA;&#xA;public class CardComparator implements Comparator&lt;Card> {&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public CardComparator(boolean value, char character) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;&#x9;public int compare(Card card1, Card card2) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return 0;&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.1/@attempts.0/@edit" start="21" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1583744032696" resourcePath="/ovinger/src/interfaces/CardComparator.java" sizeMeasure="24" warningCount="2" className="interfaces.CardComparator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rivate boolean value;&#xA;&#x9;private char character;&#xA;&#xA;&#x9;public CardComparator(boolean value, char character) {&#xA;&#x9;&#x9;this.value = value;&#xA;&#x9;&#x9;if(character == 'H' || character == 'S' || character == 'D' || character == 'C') {&#xA;&#x9;&#x9;&#x9;this.character = character;&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.1/@edit" start="115" end="-109"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="9" charStart="159" charEnd="168" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583743234173" mode="run" className="interfaces.Card">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.Card</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>1&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583743251457" mode="run" className="interfaces.Card">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.Card</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583743296721" mode="run" className="interfaces.Card">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.Card</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>12&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583743322494" mode="run" className="interfaces.Card">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.Card</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>12&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583746588446" mode="run" className="interfaces.Card">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.Card</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.Error: Unresolved compilation problem: 
	This method must return a result of type int
&#xD;
	at ovinger/interfaces.Card.compareTo(Card.java:38)&#xD;
	at ovinger/interfaces.Card.main(Card.java:69)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583746606876" mode="run" className="interfaces.Card">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.Card</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>-1&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583746624851" mode="run" className="interfaces.Card">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.Card</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583746693056" mode="run" className="interfaces.Card">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.Card</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>2&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583746704380" mode="run" className="interfaces.Card">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.Card</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>25&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583747547336" mode="run" className="interfaces.Card">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.Card</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>H&#xD;
13&#xD;
12&#xD;
25&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583747838096" mode="run" className="interfaces.Card">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.Card</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>H&#xD;
13&#xD;
12&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1583747917651" mode="run" className="interfaces.Card">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>interfaces.Card</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>H&#xD;
13&#xD;
5&#xD;
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.3/@q" answer="/0/@parts.0/@tasks.3/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.4/@q" answer="/0/@parts.0/@tasks.4/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1583748143689" completion="0.0" testRunName="interfaces.CardComparatorTest" failureCount="3">
          <failureTests>testAceIsHighest</failureTests>
          <failureTests>testDiamondIsTrumph</failureTests>
          <failureTests>testNormal</failureTests>
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