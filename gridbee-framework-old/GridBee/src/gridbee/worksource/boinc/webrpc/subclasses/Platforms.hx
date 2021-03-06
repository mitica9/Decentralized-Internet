// This file is part of the GridBee Web Computing Framework
// <http://webcomputing.iit.bme.hu>
// Copyright 2011 Budapest University of Technology and Economics,
// Public Administration's Centre of Information Technology (BME IK)
//
// GridBee is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// GridBee is distributed in the hope that it will be useful
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with GridBee. If not, see <http://www.gnu.org/licenses/>.

package gridbee.worksource.boinc.webrpc.subclasses;
import haxe.xml.Fast;

class Platforms 
{
	public var platform_name : String;
	public var user_friendly_name : String;
	
	public function new(input : Fast) 
	{
		if (input.hasNode.platform_name)
			platform_name = input.node.platform_name.innerData;
		if (input.hasNode.user_friendly_name)
			user_friendly_name = input.node.user_friendly_name.innerData;
	}
	
	public function print()
	{
		trace('platform_name: ' + platform_name);
		trace('user_friendly_name: ' + user_friendly_name);
	}
}