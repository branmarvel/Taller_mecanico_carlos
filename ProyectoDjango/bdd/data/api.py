from .models import *
from rest_framework import viewsets, permissions
from .serializers import * 

class Generosviewset(viewsets.ModelViewSet):
    queryset= TblGeneros.objects.all()
    permission_classes = [permissions.AllowAny]
    serializer_class = GenerosSerializer
class Rolesviewset(viewsets.ModelViewSet):
    queryset= TblRoles.objects.all()
    permission_classes = [permissions.AllowAny]
    serializer_class = RolesSerializer
class Personaviewset(viewsets.ModelViewSet):
    queryset= TblPersonas.objects.all()
    permission_classes = [permissions.AllowAny]
    serializer_class = PersonaSerializer
class Usuarioviewset(viewsets.ModelViewSet):
    queryset= TblUsuario.objects.all()
    permission_classes = [permissions.AllowAny]
    serializer_class = UsuarioSerializer