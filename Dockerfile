FROM centos:centos7

ADD install_libs.sh /
ADD install_cmake_3.8.0.sh /
ADD install_modules.sh /
RUN ["chmod", "+x", "/install_cmake_3.8.0.sh", "/install_libs.sh", "/install_modules.sh"]

# Install cmake 3.8.0
RUN /install_libs.sh
RUN /install_cmake_3.8.0.sh
RUN /install_modules.sh
# Delete installation scripts
RUN ["rm", "-rf", "/basic_installation", "/install_cmake_3.8.0.sh", "/install_libs.sh", "/install_modules.sh"]

ADD vimrc /root/.vimrc

#RUN useradd -ms /bin/bash devuser
#USER devuser
#WORKDIR /home/devuser
#ADD vimrc /home/devuser/.vimrc

