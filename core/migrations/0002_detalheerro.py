# Generated by Django 5.0.3 on 2024-03-25 17:41

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='DetalheErro',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('mensagem', models.TextField(max_length=5000)),
                ('status', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='detalhes', to='core.statusnotificacao')),
            ],
        ),
    ]
