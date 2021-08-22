from django.test import TestCase
from task.models import Task
class TestModels(TestCase):
    def test_task_creation(self):
        task_title = "Task title"
        task_description = "Task description"
        task = Task.objects.create(title=task_title, description=task_description)
        self.assertEqual(task.title, task_title)
        self.assertEqual(task.description, task_description)
