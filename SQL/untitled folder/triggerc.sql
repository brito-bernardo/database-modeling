DROP TRIGGER IF EXISTIS validaPecasReparacao;

CREATE TRIGGER validaPecasReparacao BEFORE INSERT ON ReparacaoPeca FOR EACH ROW WHEN NOT EXISTS ( SELECT * FROM Reparacao JOIN Carro ON Reparacao.idCarro = Carro.idCarro JOIN PecaModelo USING )

END;