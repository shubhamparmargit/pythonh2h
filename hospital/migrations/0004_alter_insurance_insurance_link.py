# Generated by Django 4.2.14 on 2024-08-23 13:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('hospital', '0003_insurance'),
    ]

    operations = [
        migrations.AlterField(
            model_name='insurance',
            name='insurance_link',
            field=models.CharField(max_length=500),
        ),
    ]
