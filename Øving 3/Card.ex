<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Card">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Card class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="encapsulation.Card"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Card class, to test it."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="encapsulation.Card"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Card class, by running the CardTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="encapsulation.CardTest"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580468404869" resourcePath="/ovinger/src/encapsulation/Card.java" sizeMeasure="39" className="encapsulation.Card">
          <edit xsi:type="exercise:StringEdit" storedString="package encapsulation;&#xA;&#xA;public class Card {&#xA;&#x9;&#xA;&#x9;private char suit;&#xA;&#x9;private int face;&#xA;&#x9;&#xA;&#x9;public Card(char suit, int face) {&#xA;&#x9;&#x9;if(suit == 'S' || suit == 'H' || suit == 'D' || suit == 'C'&#xA;&#x9;&#x9;&#x9;&#x9;&amp;&amp; face &lt;= 13 || face >= 1) {&#xA;&#x9;&#x9;&#x9;this.suit = suit;&#xA;&#x9;&#x9;&#x9;this.face = face;&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Ulovlig kort&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public char getSuit() {&#xA;&#x9;&#x9;return suit;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getFace() {&#xA;&#x9;&#x9;return face;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;suit = getSuit();&#xA;&#x9;&#x9;face = getFace();&#xA;&#x9;&#x9;return &quot;&quot; + suit + face + &quot;&quot;;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Card myCard = new Card('S',13);&#xA;&#x9;&#x9;System.out.println(myCard.toString()); &#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580468489847" resourcePath="/ovinger/src/encapsulation/Card.java" sizeMeasure="43" className="encapsulation.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;&#x9;System.out.println(myCard.getFace() == 13);&#xA;&#x9;&#x9;System.out.println(myCard.getSuit() == 'S');&#xA;&#x9;&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="648" end="-10"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580468506531" resourcePath="/ovinger/src/encapsulation/Card.java" sizeMeasure="43" className="encapsulation.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=");&#xA;&#x9;&#x9;System.out.println(myCard.getSuit()" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="687" end="-16"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580473692538" resourcePath="/ovinger/src/encapsulation/Card.java" sizeMeasure="43" className="encapsulation.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="||" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="189" end="-552"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580473770984" resourcePath="/ovinger/src/encapsulation/Card.java" sizeMeasure="43" className="encapsulation.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="(suit == 'S' || suit == 'H' || suit == 'D' || suit == 'C')&#xA;&#x9;&#x9;&#x9;&#x9;&amp;&amp;" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="128" end="-552"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580473803937" resourcePath="/ovinger/src/encapsulation/Card.java" sizeMeasure="43" className="encapsulation.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="X" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="599" end="-145"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580473837716" resourcePath="/ovinger/src/encapsulation/Card.java" sizeMeasure="43" className="encapsulation.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="4" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="603" end="-141"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580473947897" resourcePath="/ovinger/src/encapsulation/Card.java" sizeMeasure="43" className="encapsulation.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="(face &lt; 14 || face >= 0)" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="194" end="-528"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580473974173" resourcePath="/ovinger/src/encapsulation/Card.java" sizeMeasure="44" className="encapsulation.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//TODO: fiks if setningen her!&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="125" end="-621"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580474005741" resourcePath="/ovinger/src/encapsulation/Card.java" sizeMeasure="44" className="encapsulation.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="3" edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="637" end="-141"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580474045964" resourcePath="/ovinger/src/encapsulation/Card.java" sizeMeasure="44" className="encapsulation.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="3 || face >= 0)) {&#xA;&#x9;&#x9;&#x9;this.suit = suit;&#xA;&#x9;&#x9;&#x9;this.face = face;&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Ulovlig kort&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public char getSuit() {&#xA;&#x9;&#x9;return suit;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getFace() {&#xA;&#x9;&#x9;return face;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;suit = getSuit();&#xA;&#x9;&#x9;face = getFace();&#xA;&#x9;&#x9;return &quot;&quot; + suit + face + &quot;&quot;;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Card myCard = new Card('S',12" edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="236" end="-141"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580474054979" resourcePath="/ovinger/src/encapsulation/Card.java" sizeMeasure="44" className="encapsulation.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="3" edit="/1/@proposals.0/@proposals.0/@attempts.10/@edit" start="637" end="-141"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580474081929" resourcePath="/ovinger/src/encapsulation/Card.java" sizeMeasure="44" className="encapsulation.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&amp;&amp;" edit="/1/@proposals.0/@proposals.0/@attempts.11/@edit" start="238" end="-539"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580474175489" resourcePath="/ovinger/src/encapsulation/Card.java" sizeMeasure="42" className="encapsulation.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="r" edit="/1/@proposals.0/@proposals.0/@attempts.12/@edit" start="490" end="-248"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580474244229" resourcePath="/ovinger/src/encapsulation/Card.java" sizeMeasure="42" className="encapsulation.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="4" edit="/1/@proposals.0/@proposals.0/@attempts.13/@edit" start="236" end="-502"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580474285394" resourcePath="/ovinger/src/encapsulation/Card.java" sizeMeasure="42" className="encapsulation.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" " edit="/1/@proposals.0/@proposals.0/@attempts.14/@edit" start="247" end="-490"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580478217413" resourcePath="/ovinger/src/encapsulation/Card.java" sizeMeasure="46" className="encapsulation.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="/**&#xA; * EZ&#xA; * @author jorge&#xA; *&#xA; */" edit="/1/@proposals.0/@proposals.0/@attempts.15/@edit" start="23" end="-715"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580478233193" resourcePath="/ovinger/src/encapsulation/Card.java" sizeMeasure="47" className="encapsulation.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.16/@edit" start="23" end="-748"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1580478454174" resourcePath="/ovinger/src/encapsulation/Card.java" sizeMeasure="51" className="encapsulation.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//Sjekker da om suit er S, H, D eller C og om face er mellom 1 og 13 for å sette tilstand&#xA;&#x9;//Hvis dette er false kaster vi en IllegalArgumentException&#xA;&#x9;public Card(char suit, int face) {&#xA;&#x9;&#x9;if((suit == 'S' || suit == 'H' || suit == 'D' || suit == 'C')&#xA;&#x9;&#x9;&#x9;&#x9;&amp;&amp; (face &lt; 14 &amp;&amp; face > 0)) {&#xA;&#x9;&#x9;&#x9;this.suit = suit;&#xA;&#x9;&#x9;&#x9;this.face = face;&#xA;&#x9;&#x9;}else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Ulovlig kort&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//Returnerer suit&#xA;&#x9;public char getSuit() {&#xA;&#x9;&#x9;return suit;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//Returnerer face&#xA;&#x9;public int getFace() {&#xA;&#x9;&#x9;return face;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//Returnerer suit og face som en streng" edit="/1/@proposals.0/@proposals.0/@attempts.17/@edit" start="122" end="-280"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580468414301" mode="run" className="encapsulation.Card">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Card</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>S13&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580468493842" mode="run" className="encapsulation.Card">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Card</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>S13&#xD;
true&#xD;
true&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580468509462" mode="run" className="encapsulation.Card">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Card</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>S13&#xD;
13&#xD;
S&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580473808252" mode="run" className="encapsulation.Card">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Card</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>X13&#xD;
13&#xD;
X&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580473842326" mode="run" className="encapsulation.Card">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Card</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>X14&#xD;
14&#xD;
X&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580473979372" mode="run" className="encapsulation.Card">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Card</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.IllegalArgumentException: Ulovlig kort&#xD;
	at ovinger/encapsulation.Card.&lt;init>(Card.java:15)&#xD;
	at ovinger/encapsulation.Card.main(Card.java:34)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580474008384" mode="run" className="encapsulation.Card">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Card</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.IllegalArgumentException: Ulovlig kort&#xD;
	at ovinger/encapsulation.Card.&lt;init>(Card.java:15)&#xD;
	at ovinger/encapsulation.Card.main(Card.java:34)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580474048420" mode="run" className="encapsulation.Card">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Card</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>S12&#xD;
12&#xD;
S&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580474056957" mode="run" className="encapsulation.Card">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Card</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>S13&#xD;
13&#xD;
S&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580474086344" mode="run" className="encapsulation.Card">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Card</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.IllegalArgumentException: Ulovlig kort&#xD;
	at ovinger/encapsulation.Card.&lt;init>(Card.java:15)&#xD;
	at ovinger/encapsulation.Card.main(Card.java:34)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580474217259" mode="run" className="encapsulation.Card">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Card</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.IllegalArgumentException: Ulovlig kort&#xD;
	at ovinger/encapsulation.Card.&lt;init>(Card.java:15)&#xD;
	at ovinger/encapsulation.Card.main(Card.java:32)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1580474258436" mode="run" className="encapsulation.Card">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Card</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>S13&#xD;
13&#xD;
S&#xD;
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1580473654009" completion="0.5" testRunName="encapsulation.CardTest" successCount="1" failureCount="1">
          <successTests>testToString</successTests>
          <failureTests>testConstructor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1580473704443" completion="0.5" testRunName="encapsulation.CardTest" successCount="1" failureCount="1">
          <successTests>testToString</successTests>
          <failureTests>testConstructor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1580474099684" completion="0.0" testRunName="encapsulation.CardTest" errorCount="2">
          <errorTests>testToString</errorTests>
          <errorTests>testConstructor</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1580474182750" completion="0.0" testRunName="encapsulation.CardTest" errorCount="2">
          <errorTests>testToString</errorTests>
          <errorTests>testConstructor</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1580474267801" completion="0.5" testRunName="encapsulation.CardTest" successCount="1" failureCount="1">
          <successTests>testToString</successTests>
          <failureTests>testConstructor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1580474291242" completion="1.0" testRunName="encapsulation.CardTest" successCount="2">
          <successTests>testToString</successTests>
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
