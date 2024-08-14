%if 0%{?RELEASE_NUMBER:1} != 0
%define rel %{?RELEASE_NUMBER}
%else
%define rel 1
%endif

%if 0%{?VERSION_NUMBER:1} != 0
%define ver %{?VERSION_NUMBER}
%else
%define ver 0.1.0
%endif

Name:           hello
Version:        %{ver}
Release:        %{rel}
Summary:        Hello World Application
ExclusiveArch:  %{_arch}

License:        Apache-2.0
URL:            https://example.com
Source0:        %{name}-%{version}.tar.gz

Requires:       bash

%define debug_package %{nil}

%description
Hello World Application

%prep
%autosetup

%install
rm -rf $RPM_BUILD_ROOT
mkdir -p $RPM_BUILD_ROOT%{_bindir}
pwd
cp %{name}.sh $RPM_BUILD_ROOT%{_bindir}


%files
%{_bindir}/%{name}.sh


%changelog
* Wed Aug 14 2024 Super User - 0.1.0_SNAPSHOT.1-1
- Initial version
