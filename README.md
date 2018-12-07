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
  The project consist in a RC circuit and a RL circuit that will both have spaces to insert a capacitor or an inductor, the microcontroller must receive voltage values as input, when the input voltage is equal to the supply voltage of the RX circuit (X being C or L), the microcontroller should open the circuit, disconnecting the resistance and X from the supply, resulting that way in energy being dissipated and discharging X, in the meanwile, the microcontroller will time the process, this way, when the input voltage becomes 0, we'll have the discharge time and with that we can compute the capacitance or inductance value.
  </p>
  <p>
  The project's output consist in showing through an lcd the value of X measured along with it's order of magnitude and unit, pointing that way, if the measured value is from a capacitor or an inductor. There'll be also a push button to "forget" the last measure and then making the device ready to another one.
 
### Lista de Materiais:
* 4x Resistores de 1M;
* 2x Resistores de 10k;
* 3x push buttons;
* 1x Microcontrolador Stm32F030F4P6;
* 1x Display LCD 16x02;
* 1x Módulo I2C para display LCD 16x02;
* 1x Módulo bluetooth HC-05;
* Diversos Jumpers para conexões.

## Configuração: 
<p>
    O microcontrolador foi configurado no Cube com um pino de ADC, dois para UART(Tx e Rx), 1 GPIO_OUTPUT (Para controlar a fonte de tensão que alimenta o circuito RC e RL), e 2 pinos de input com pull-down, que serão os botões para controlar o dispositivo, um para capacitor e um para indutor.  Além desses, requer também 2 pinos de I2C(SDA e SCL) para realizar a conexão do microcontrolador e o módulo i2c, para assim fazer o controle do LCD.
  </p>
  <p>
  No circuito RC, usa-se 4 resistores em paralelo de 1 Mega Ohm nominais, que resultam em uma resistência equivalente de aproximadamente 253600 Ohms. Esse valor foi escolhido para que fosse obtido uma constante de tempo RC suficientemente grande, de modo que o microcontrolador fosse capaz de contar o tempo passado de forma útil. Já para o circuito RL, usamos uma resistência bem menor, 2 resistores em paralelo de 10K, assim obtém-se na prática uma resistência de 4950 Ohms, o ideal para uma constante de tempo L/R que não seja tão pequena, sendo assim possível que microcontrolador seja capaz de medir.
  
  
  ## Comunicação com MATLAB:
  <p>
    Para realizar a comunicação entre o microcontrolador e o MATLAB é necessário conectar o hc-05 no computador via bluetooth, dessa forma os dados podem ser recebidos e transferidos para o hc-05 pela porta serial do computador. Assim, podemos usar a classe Serial do MATLAB para enviar ao bluetooth e receber do bluetooth. Porém, não é tão trivial realizar essas operações, visto que precisa-se definir o bit de término da tranmissão e controlar o quanto é transmitido pelo stm32 e recebido pelo MATLAB de maneira funcional.
  </p>
  <p>
  Para resolver o problema citado anterior, vamos, após realizar a medição, manter o programa parado esperando um byte para iniciar a transmissão, assim o microcontrolador envia, via UART, o valor de C ou de L e sua ordem de grandeza, micro ou nano para capacitores e mili ou micro para indutores.
  </p>
  <p>
  Após obter o valor do dispositivo medido, o código do MATLAB irá gerar um gráfico indicando o processo de descarga do Capacitor ou Indutor, mostrando assim o ponto em que o microcontrolador para a contagem do tempo para realizar, o calculo da capacitância ou da indutância. Esse processo é realizado para tentar representar visualmente o funcionamento do Capacimeter.
  
  
  ## Limitações:
  <p>
    As limitações conhecidas do projeto se resumem a um bug no driver do LCD que diminui a visibilidade do display e limitação na medição de certos valores de C, visto que se forem muito altos a medição demora bastante tempo, e se forem muito baixos, a medição é imprecisa porque o tempo é na ordem de microssegundos e o stm32 do jeito que está o código só lê na ordem de milissegundos.
  
  ## Uso de Código de Terceiros:
  <p>
  Para esse projeto, foi utilizado o driver para LCD usando I2C para stm32 do Site ControllersTech.com, abaixo, segue o link da configuração que o site forneceu:
  https://controllerstech.blogspot.com/2017/07/i2c-lcd-in-stm32.html
  
  
