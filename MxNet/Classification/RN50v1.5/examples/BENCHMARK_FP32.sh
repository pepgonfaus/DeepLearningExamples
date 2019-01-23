# Copyright (c) 2019, NVIDIA CORPORATION. All rights reserved.
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


# This script launches ResNet50 benchmark in FP32 on 1,4,8 GPUs with 32,64,96 batch size
# Usage ./BENCHMARK_FP32.sh <additionals flags>

python benchmark.py -n 1,4,8 -b 32,64,96 -e 2 -w 1 -i 100 --dtype float32 -o report.json $@
