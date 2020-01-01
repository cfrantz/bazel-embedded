# MIT License
#
# Copyright (c) 2019 Nathaniel Brough
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

def gcc_device_config(toolchain_target_prefix, cpu, fpu, float_abi, endian):
    if type(cpu) is not "string":
        fail("Should be of type string", "cpu")
    if type(fpu) is not "string":
        fail("Should be of type string", "fpu")
    if type(float_abi) is not "string":
        fail("Should be of type string", "float_abi")
    if type(float_abi) is not "string":
        fail("Should be of type string", "endian")
    if type(toolchain_target_prefix) is not "Label":
        fail("Should be of type label", "toolchain_target")

    return struct(
        toolchain_target_prefix = toolchain_target_prefix,
        cpu = cpu,
        fpu = fpu,
        float_abi = float_abi,
        endian = endian,
    )

def device_config(gcc_device_config):
    return struct(
        gcc_device_config = gcc_device_config,
    )