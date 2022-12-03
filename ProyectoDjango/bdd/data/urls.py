from rest_framework import routers 
from .api import *

routers = routers.DefaultRouter()

# routers.register('api/persona', Generosviewset, 'persona')
routers.register('api/persona', Personaviewset, 'persona')
routers.register('api/Usuario', Usuarioviewset, 'Usuario')


urlpatterns = routers.urls