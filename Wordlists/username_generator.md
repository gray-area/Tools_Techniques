## username_generator

``{first name}``: john

``{last name}``: smith

``{first name}{last name}``:  johnsmith

``{last name}{first name}``:  smithjohn  

first letter of the ``{first name}{last name}``: jsmith 

first letter of the ``{last name}{first name}``: sjohn 

first letter of the ``{first name}.{first name}``: j.smith

first letter of the ``{first name}-{first name}``: j-smith

## Usage

``user@off$ git clone https://github.com/therodri2/username_generator.git``

``user@off$ cd username_generator``

``user@off$ python3 username_generator.py -h``

``user@off$ echo "John Smith" > users.lst``

``user@off$ python3 username_generator.py -w users.lst``
