from setuptools import setup
from setuptools.command.install import install
import sys

with open('README.md') as f:
    readme = f.read()

svem_flag = '--single-version-externally-managed'
if svem_flag in sys.argv:
    # Die, setuptools, die.
    sys.argv.remove(svem_flag)

setup(name='postgres_kernel',
      version='0.2.2',
      description='A PostgreSQL kernel for IPython',
      long_description=readme,
      author='Brian Schiller',
      author_email='bgschiller@gmail.com',
      url='https://github.com/bgschiller/postgres_kernel',
      packages=['postgres_kernel'],
      install_requires=['psycopg2>=2.6', 'tabulate>=0.7.5', 'jupyter-client', 'ipykernel'],
      classifiers=[
          'Framework :: IPython',
          'License :: OSI Approved :: BSD License',
          'Programming Language :: Python :: 3',
          'Topic :: System :: Shells',
      ])
