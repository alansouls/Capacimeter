%With serial port enabled and open in s
a = input('Select C(1) or L(2)');
if a == 1
    %Send ready byte to stm32 via bluetooth
    fwrite('b',s);
    %Gets the value of time constant
    value = fgets(s);
    %Gets scale of the value
    scale = fgets(s);
    %Adjuste read value
    if scale == 0
        value = value*(10^(-6))
    else 
        value = value*(10^(-9))
    end
    %Define range to Plot
    t = [0:0.0001:100000]
    %Acquire voltage values
    valueArray = 3.3*(exp(-t/(value)));
    %Plot descharge 
    plot(t,valueArray);
    hold on 
    plot(value,1.08);
    title('Descarga do Capacitor')
    xlabel('Tempo(Segundos)')
    ylabel('Tensão do Capacitor(Volts)')
else
    %Send ready byte to stm32 via bluetooth
    fwrite('b',s);
    %Gets the value of time constant
    value = fgets(s);
    %Gets scale of the value
    scale = fgets(s);
    %Adjuste read value
    if scale == 0
        value = value*(10^(-3))
    else 
        value = value*(10^(-6))
    end
    %Define range to Plot
    t = [0:0.0001:100000]
    %Acquire voltage values
    valueArray = 3.3*(exp(-t/(value)));
    %Plot descharge 
    plot(t,valueArray);
    hold on 
    plot(value,1.08);
    title('Descarga do Indutor')
    xlabel('Tempo(Segundos)')
    ylabel('Tensão no Capacitor(Volts)')
end






