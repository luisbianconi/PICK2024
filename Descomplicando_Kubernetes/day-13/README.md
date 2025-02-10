## Escalonamento Automático de Réplicas

O escalonamento automático de réplicas pode ser calculado usando a seguinte fórmula:

```math
\text{desiredReplicas} = \left\lfloor \text{currentReplicas} \times \left( \frac{\text{currentMetricValue}}{\text{desiredMetricValue}} \right) \right\rfloor
```

### Exemplos com Valores Específicos

#### 1. Exemplo de Escala para Cima:
- Réplicas atuais: **2**
- Valor atual da métrica (CPU): **80%**
- Valor desejado da métrica (CPU): **50%**
- Cálculo: 
  ```math
  2 \times \left( \frac{80}{50} \right) = 3.2 \Rightarrow \lfloor 4 \rfloor = 4 
  ```
- Resultado: **4 réplicas**

#### 2. Exemplo de Escala para Baixo:
- Réplicas atuais: **5**
- Valor atual da métrica (CPU): **30%**
- Valor desejado da métrica (CPU): **50%**
- Cálculo:
  ```math
  5 \times \left( \frac{30}{50} \right) = 3 \Rightarrow \lfloor 3 \rfloor = 3
  ```
- Resultado: **3 réplicas**