#
# Copyright 2016 Dennis Vriend
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#!/bin/bash
export CODACY_PROJECT_TOKEN=$SPARK_TEST_CODACY_TOKEN

echo "project token: $CODACY_PROJECT_TOKEN"
sbt clean coverage
sbt coverageReport
sbt coverageAggregate
sbt codacyCoverage