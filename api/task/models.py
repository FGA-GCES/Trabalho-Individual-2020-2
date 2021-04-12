from django.db import models

class Task(models.Model):
    title = models.CharField("Title", max_length=240)
    description = models.CharField("Title", max_length=240)
    created = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.name
