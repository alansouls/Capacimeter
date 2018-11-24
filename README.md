# Capacimeter
## Integrantes:
  Alan Oliveira Maia <br />
  Edilgleydson Souza  <br />
  Pedro Ivo Gallão Brito <br />
  Gabriel Barros Pereira  <br />

## Descrição:
<p>
  A ideia do projeto é desenvolver, utilizando o microcontrolador STM32F030F4P6, um dispositivo capaz de medir a capacitância de capacitores e indutância de indutores a partir da medição da voltagem inicial no capacitor e do tempo que leva para o dispositivo descarregar, ou seja, ter seu potêncial de volta a 0. Para o indutor, o processo é análogo, porém ao invés de considerar a voltagem em si, devemos analizar os valores de corrente que nada mais é que a relação de voltagem com uma certa resistência.
 </p> 
 <p>
  O projeto consiste de um circuito RC e um circuito RL em que haverá o espaço para inserir o capacitor ou indutor, o microcontrolador receberá como entrada valores de tensão, quando a tensão de entrada for igual a tensão da alimentação do circuito RX (X sendo C ou L), o microcontrolador deverá abrir o circuito para que X fique isolado com a resistência R proporcionando assim uma dicipação de energia e descarregando X, enquanto o processo de descarga ocorre, o microcontrolador terá um timer em contagem, dessa forma quando a tensão de entrada chegar em 0, tem-se o tempo de descarga e com ele pode-se obter o valor da capacitância ou da indutância.
  </p>
  <p>
  A saída do projeto consiste em mostrar em um lcd o valor de X medido com sua respectiva ordem de grandeza e unidade, indicando assim se o valor medido é de um capacitor ou de um indutor. Haverá também um botão para "esquecer" a ultima medição para que se possa realizar outra.
  
  ## Description:
  <p>
  The idea of the project is to develop, using a STM32F030F4P6 microcontroller, a device capable of measure capacitor's capacitance and indutor's inductance from the initial voltage measure in the capacitor and the time that the device takes to discharge, that is, having it's potential back to zero. For the inductor, the process is analogue, but instead of considering voltage, we must analyze current values wich is nothing more than a relation between voltage and a certain resistance.
  </p>
  <p>
  The project consist in a RC circuit and a RL circuit that will both have spaces to insert a capacitor or an inductor, the microcontroller must recieve voltage values as input, when the input voltage is equal to the supply voltage of the RX circuit (X being C or L), the microcontroller should open the circuit, disconnecting the resistance and X from the supply, resulting that way in energy being dissipated and discharging X, in the meanwile, the microcontroller will time tha process, this way, when the input voltage becomes 0, we'll have the discharge time and with that we can compute the capacitance or inductance value.
  </p>
  <p>
  The project's output consist in showing through an lcd the value of X measured along with it's order of magnitude and unit, pointing that way, if the measured value is from a capacitor or an inductor. There'll be also a push button to "forget" the last measure and then making the device ready to another one.
  
