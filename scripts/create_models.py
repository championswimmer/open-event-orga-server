#!/usr/bin/env python

from open_event import app
from open_event.models import db

with app.app_context():
	db.create_all()
