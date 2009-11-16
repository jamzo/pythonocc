/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%module Sketcher
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include Sketcher_dependencies.i


%include Sketcher_headers.i




%nodefaultctor Sketcher_Profile;
class Sketcher_Profile {
	public:
		%feature("autodoc", "1");
		Sketcher_Profile();
		%feature("autodoc", "1");
		Sketcher_Profile(const char *aCmd);
		%feature("autodoc", "1");
		gp_Pnt GetLastPoint();
		%feature("autodoc", "1");
		gp_Dir GetLastDir();
		%feature("autodoc", "1");
		const TopoDS_Shape & GetShape();
		%feature("autodoc", "1");
		bool IsDone();

};
%feature("shadow") Sketcher_Profile::~Sketcher_Profile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_Profile {
	void _kill_pointed() {
		delete $self;
	}
};
