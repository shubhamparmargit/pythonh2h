# Generated by Django 4.2.14 on 2024-08-31 09:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('hospital', '0009_alter_bedbooking_status'),
    ]

    operations = [
        migrations.AlterField(
            model_name='bedbooking',
            name='status',
            field=models.CharField(choices=[('pending', 'Pending'), ('reject', 'Reject'), ('accepted', 'Accepted')], default='pending', max_length=10),
        ),
    ]
