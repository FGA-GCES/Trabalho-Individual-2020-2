from django.urls import path
from .views import TaskCreate, TaskList, TaskDetail, TaskUpdate, TaskDelete

urlpatterns = [
    path('create/', TaskCreate.as_view(), name='create-task'),
    path('', TaskList.as_view()),
    path('<int:pk>/', TaskDetail.as_view(), name='retrieve-task'),
    path('update/<int:pk>/', TaskUpdate.as_view(), name='update-task'),
    path('delete/<int:pk>/', TaskDelete.as_view(), name='delete-task')
]
