from django.db import models

# Create your models here.

class TblGeneros(models.Model):
    idtbl_generos = models.IntegerField(db_column='idTBL_generos', primary_key=True)  # Field name made lowercase.
    tipo_genero = models.CharField(max_length=45)

    class Meta:
        db_table = 'tbl_generos'

class TblRoles(models.Model):
    idtbl_roles = models.AutoField(db_column='idTBL_roles', primary_key=True)  # Field name made lowercase.
    tipo_de_rol = models.CharField(max_length=45)

    class Meta:
        db_table = 'tbl_roles'

class TblNacionalidad(models.Model):
    idtbl_nacionalidad = models.AutoField(db_column='idTBL_nacionalidad', primary_key=True)  # Field name made lowercase.
    nacionalidad = models.CharField(max_length=200)

    class Meta:
        db_table = 'tbl_nacionalidad'

class TblTipoDeIdentificacion(models.Model):
    idtbl_tipo_de_cedula = models.AutoField(db_column='idTBL_tipo_de_cedula', primary_key=True)  # Field name made lowercase.
    tipo = models.CharField(max_length=200)

    class Meta:
        db_table = 'tbl_tipo_de_identificacion'

class TblTipoDePersonas(models.Model):
    idtbl_tipo_de_personas = models.AutoField(db_column='idTBL_tipo_de_personas', primary_key=True)  # Field name made lowercase.
    tipo = models.CharField(max_length=200)

    class Meta:
        db_table = 'tbl_tipo_de_personas'

class TblGeneros(models.Model):
    idtbl_generos = models.IntegerField(db_column='idTBL_generos', primary_key=True)  # Field name made lowercase.
    tipo_genero = models.CharField(max_length=45)

    class Meta:
        db_table = 'tbl_generos'
 
class TblPersonas(models.Model):
    idtbl_personas = models.AutoField(db_column='idTBL_personas', primary_key=True)  # Field name made lowercase.
    nombre = models.CharField(max_length=200)
    apellido = models.CharField(max_length=200)
    cedula = models.CharField(max_length=45, blank=False, unique=True)
    fecha_creado = models.DateTimeField(blank=True, null=True)
    fecha_actualizado = models.DateTimeField(blank=True, null=True)
    tbl_tipo_de_identificacion_idtbl_tipo_de_cedula = models.ForeignKey('TblTipoDeIdentificacion', on_delete=models.CASCADE, db_column='TBL_tipo_de_identificacion_idTBL_tipo_de_cedula')  # Field name made lowercase.
    tbl_nacionalidad_idtbl_nacionalidad = models.ForeignKey(TblNacionalidad, on_delete=models.CASCADE, db_column='TBL_nacionalidad_idTBL_nacionalidad')  # Field name made lowercase.
    tbl_tipo_de_personas_idtbl_tipo_de_personas = models.ForeignKey('TblTipoDePersonas', on_delete=models.CASCADE, db_column='TBL_tipo_de_personas_idTBL_tipo_de_personas')  # Field name made lowercase.
    tbl_generos_idtbl_generos = models.ForeignKey(TblGeneros, on_delete=models.CASCADE, db_column='TBL_generos_idTBL_generos')  # Field name made lowercase.

    class Meta:
        db_table = 'tbl_personas'
        unique_together = (('idtbl_personas', 'tbl_tipo_de_identificacion_idtbl_tipo_de_cedula', 'tbl_nacionalidad_idtbl_nacionalidad', 'tbl_tipo_de_personas_idtbl_tipo_de_personas', 'tbl_generos_idtbl_generos'),)

class TblUsuario(models.Model):
    idtbl_usuario = models.AutoField(db_column='idtbL_usuario', primary_key=True)  # Field name made lowercase.
    email = models.CharField(max_length=200)
    password = models.CharField(max_length=200)
    estado = models.CharField(max_length=8)
    fecha_creado = models.DateTimeField(blank=True, null=True)
    fecha_actualizado = models.DateTimeField(blank=True, null=True)
    tbl_personas_idtbl_personas = models.ForeignKey(TblPersonas, on_delete=models.CASCADE, db_column='TBL_personas_idTBL_personas')  # Field name made lowercase.
    tbl_roles_idtbl_roles = models.ForeignKey(TblRoles, on_delete=models.CASCADE, db_column='TBL_roles_idTBL_roles')  # Field name made lowercase.

    class Meta:
        db_table = 'tbl_usuario'
        unique_together = (('idtbl_usuario', 'tbl_personas_idtbl_personas', 'tbl_roles_idtbl_roles'),)
