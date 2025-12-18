#  This file is part of OctoBot Prediction Market (https://github.com/Drakkar-Software/OctoBot-Prediction-Market)
#  Copyright (c) Drakkar-Software, All rights reserved.
#
#  OctoBot is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation; either
#  version 3.0 of the License, or (at your option) any later version.
#
#  OctoBot is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#  General Public License for more details.
#
#  You should have received a copy of the GNU General Public
#  License along with OctoBot. If not, see <https://www.gnu.org/licenses/>.
import pathlib

# Files
DISTRIBUTION_FOLDER = pathlib.Path(__file__).parent.absolute()
CONFIG_FOLDER = f"{DISTRIBUTION_FOLDER}/config"
DEFAULT_CONFIG_FILE = f"{CONFIG_FOLDER}/default_config.json"
