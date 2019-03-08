Use dbrwchvhmm;

DELIMITER $$
 CREATE PROCEDURE PA_Set_Usu_Persona(
in _DNI int(8),
in _Nombre varchar(45),
in _Apec date,
in _IdDistrito int,
in _Direccion varchar(45),
in _Celular  varchar(13),
in _Opcion varchar(1)

 
 )
BEGIN
 if _Opcion='I' then 
   
   Insert into usu_persona (DNI,Nombre,Ape_Pa,Ape_Ma,Fecha_Nac,IdDistrito,Direccion,Celular) values (_DNI,_Nombre,_Ape_Pa,_Ape_Ma,_Fecha_Nac,_IdDistrito,_Direccion,_Celular);
   
   End IF;
   

   if _Opcion='U' then 
   
   Update usu_persona set Nombre=_Nombre,Ape_Pa=_Ape_Pa,Ape_Ma=_Ape_Ma,Fecha_Nac=_Fecha_Nac,IdDistrito=_IdDistrito,Direccion=_Direccion,Celular=_Celular where DNI=_DNI ;
   
   End If;
   
    if _Opcion='D' then 
   
    delete from usu_persona  where usu_persona ;
   
   End If; 
   END
   $$
   
   DELIMITER $$
 CREATE PROCEDURE PA_Get_Usu_Persona(

in _DNI varchar(9),
 in _Opcion varchar(1)
 
 )
BEGIN
 if _Opcion='B' then 
   
  SELECT        dbrwchvhmm.usu_persona.DNI, dbrwchvhmm.usu_persona.Nombre, dbrwchvhmm.usu_persona.Ape_Pa, dbrwchvhmm.usu_persona.Ape_Ma, dbrwchvhmm.usu_persona.Fecha_Nac, dbrwchvhmm.usu_persona.IdDistrito, 
                         dbrwchvhmm.ubi_distrito.Distrito, dbrwchvhmm.usu_persona.Direccion, dbrwchvhmm.usu_persona.Celular
FROM            dbrwchvhmm.usu_persona INNER JOIN
                         dbrwchvhmm.ubi_distrito ON dbrwchvhmm.usu_persona.IdDistrito = dbrwchvhmm.ubi_distrito.IdDistrito 
                         where usu_persona.DNI=_DNI;
   
   End IF;
   
   END
   $$