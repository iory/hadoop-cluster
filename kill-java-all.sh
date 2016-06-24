#!/bin/bash -eu

ssh hadoop@cluster-slave01 'killall java'
ssh hadoop@cluster-slave02 'killall java'
ssh hadoop@cluster01-slave03 'killall java'
ssh hadoop@cluster01-slave04 'killall java'
