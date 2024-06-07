#===----------------------------------------------------------------------===//
#
# This source file is part of the AWS Lambda Swift 
# VSCode extension open source project.
#
# Copyright (c) 2024, the VSCode AWS Lambda Swift extension project authors.
# Licensed under Apache License v2.0.
#
# See LICENSE.txt for license information
# See CONTRIBUTORS.txt for the list of VSCode AWS Lambda Swift project authors
#
# SPDX-License-Identifier: Apache-2.0
#
#===----------------------------------------------------------------------===//

import platform
import os
from cookiecutter.utils import simple_filter

@simple_filter
def architecture(v):
    arch = platform.machine().lower()
    if 'aarch' in arch or 'arm' in arch:
        return 'arm64'
    else:
        return v
    
@simple_filter
def get_abs_path(v):
    if os.getcwd():
        return os.getcwd()
    else:
        return v