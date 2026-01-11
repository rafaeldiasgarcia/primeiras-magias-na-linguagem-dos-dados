-- Selecione produtos que contêm ‘churn’ no nome

SELECT *

FROM produtos

-- WHERE DescNomeProduto = 'Churn_10pp'
-- OR DescNomeProduto = 'Churn_2pp'
-- OR DescNomeProduto = 'Churn_5pp'

-- WHERE DescNomeProduto IN ('Churn_10pp', 'Churn_2pp', 'Churn_5pp')
-- % = coringa

-- WHERE DescNomeProduto LIKE 'Churn%' 

WHERE DescCategoriaProduto = 'churn_model'

