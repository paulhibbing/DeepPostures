Ч«
ч% %
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
м
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

)
Exit	
data"T
output"T"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
Ц
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
$

LogicalAnd
x

y

z
Р
!
LoopCond	
input


output

q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	Р
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
;
Minimum
x"T
y"T
z"T"
Ttype:

2	Р
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
2
NextIteration	
data"T
output"T"	
Ttype

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
	ReverseV2
tensor"T
axis"Tidx
output"T"
Tidxtype0:
2	"
Ttype:
2	

0
Round
x"T
y"T"
Ttype:

2	
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
-
Tanh
x"T
y"T"
Ttype:

2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:И
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetypeИ
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
TtypeИ
9
TensorArraySizeV3

handle
flow_in
sizeИ
ё
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring И
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
TtypeИ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И"serve*1.13.12b'v1.13.0-rc2-5-g6612da8'щ§
x
inputPlaceholder*$
shape:€€€€€€€€€d*
dtype0*/
_output_shapes
:€€€€€€€€€d
µ
4model/conv2d/kernel/Initializer/random_uniform/shapeConst*%
valueB"         А   *&
_class
loc:@model/conv2d/kernel*
dtype0*
_output_shapes
:
Я
2model/conv2d/kernel/Initializer/random_uniform/minConst*
valueB
 *Кdљ*&
_class
loc:@model/conv2d/kernel*
dtype0*
_output_shapes
: 
Я
2model/conv2d/kernel/Initializer/random_uniform/maxConst*
valueB
 *Кd=*&
_class
loc:@model/conv2d/kernel*
dtype0*
_output_shapes
: 
Г
<model/conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform4model/conv2d/kernel/Initializer/random_uniform/shape*

seed *
T0*&
_class
loc:@model/conv2d/kernel*
seed2 *
dtype0*'
_output_shapes
:А
к
2model/conv2d/kernel/Initializer/random_uniform/subSub2model/conv2d/kernel/Initializer/random_uniform/max2model/conv2d/kernel/Initializer/random_uniform/min*
T0*&
_class
loc:@model/conv2d/kernel*
_output_shapes
: 
Е
2model/conv2d/kernel/Initializer/random_uniform/mulMul<model/conv2d/kernel/Initializer/random_uniform/RandomUniform2model/conv2d/kernel/Initializer/random_uniform/sub*
T0*&
_class
loc:@model/conv2d/kernel*'
_output_shapes
:А
ч
.model/conv2d/kernel/Initializer/random_uniformAdd2model/conv2d/kernel/Initializer/random_uniform/mul2model/conv2d/kernel/Initializer/random_uniform/min*
T0*&
_class
loc:@model/conv2d/kernel*'
_output_shapes
:А
Ѕ
model/conv2d/kernel
VariableV2*
dtype0*'
_output_shapes
:А*
shared_name *&
_class
loc:@model/conv2d/kernel*
	container *
shape:А
м
model/conv2d/kernel/AssignAssignmodel/conv2d/kernel.model/conv2d/kernel/Initializer/random_uniform*
use_locking(*
T0*&
_class
loc:@model/conv2d/kernel*
validate_shape(*'
_output_shapes
:А
У
model/conv2d/kernel/readIdentitymodel/conv2d/kernel*
T0*&
_class
loc:@model/conv2d/kernel*'
_output_shapes
:А
Ш
#model/conv2d/bias/Initializer/zerosConst*
valueBА*    *$
_class
loc:@model/conv2d/bias*
dtype0*
_output_shapes	
:А
•
model/conv2d/bias
VariableV2*
shared_name *$
_class
loc:@model/conv2d/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А
ѕ
model/conv2d/bias/AssignAssignmodel/conv2d/bias#model/conv2d/bias/Initializer/zeros*
T0*$
_class
loc:@model/conv2d/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
Б
model/conv2d/bias/readIdentitymodel/conv2d/bias*
T0*$
_class
loc:@model/conv2d/bias*
_output_shapes	
:А
k
model/conv2d/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
з
model/conv2d/Conv2DConv2Dinputmodel/conv2d/kernel/read*
paddingSAME*0
_output_shapes
:€€€€€€€€€2А*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ю
model/conv2d/BiasAddBiasAddmodel/conv2d/Conv2Dmodel/conv2d/bias/read*
data_formatNHWC*0
_output_shapes
:€€€€€€€€€2А*
T0
j
model/conv2d/ReluRelumodel/conv2d/BiasAdd*
T0*0
_output_shapes
:€€€€€€€€€2А
є
6model/conv2d_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      А      *(
_class
loc:@model/conv2d_1/kernel
£
4model/conv2d_1/kernel/Initializer/random_uniform/minConst*
valueB
 *.щdљ*(
_class
loc:@model/conv2d_1/kernel*
dtype0*
_output_shapes
: 
£
4model/conv2d_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *.щd=*(
_class
loc:@model/conv2d_1/kernel*
dtype0*
_output_shapes
: 
К
>model/conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform6model/conv2d_1/kernel/Initializer/random_uniform/shape*
dtype0*(
_output_shapes
:АА*

seed *
T0*(
_class
loc:@model/conv2d_1/kernel*
seed2 
т
4model/conv2d_1/kernel/Initializer/random_uniform/subSub4model/conv2d_1/kernel/Initializer/random_uniform/max4model/conv2d_1/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@model/conv2d_1/kernel*
_output_shapes
: 
О
4model/conv2d_1/kernel/Initializer/random_uniform/mulMul>model/conv2d_1/kernel/Initializer/random_uniform/RandomUniform4model/conv2d_1/kernel/Initializer/random_uniform/sub*
T0*(
_class
loc:@model/conv2d_1/kernel*(
_output_shapes
:АА
А
0model/conv2d_1/kernel/Initializer/random_uniformAdd4model/conv2d_1/kernel/Initializer/random_uniform/mul4model/conv2d_1/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@model/conv2d_1/kernel*(
_output_shapes
:АА
«
model/conv2d_1/kernel
VariableV2*
dtype0*(
_output_shapes
:АА*
shared_name *(
_class
loc:@model/conv2d_1/kernel*
	container *
shape:АА
х
model/conv2d_1/kernel/AssignAssignmodel/conv2d_1/kernel0model/conv2d_1/kernel/Initializer/random_uniform*
validate_shape(*(
_output_shapes
:АА*
use_locking(*
T0*(
_class
loc:@model/conv2d_1/kernel
Ъ
model/conv2d_1/kernel/readIdentitymodel/conv2d_1/kernel*
T0*(
_class
loc:@model/conv2d_1/kernel*(
_output_shapes
:АА
Ь
%model/conv2d_1/bias/Initializer/zerosConst*
valueBА*    *&
_class
loc:@model/conv2d_1/bias*
dtype0*
_output_shapes	
:А
©
model/conv2d_1/bias
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *&
_class
loc:@model/conv2d_1/bias*
	container *
shape:А
„
model/conv2d_1/bias/AssignAssignmodel/conv2d_1/bias%model/conv2d_1/bias/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@model/conv2d_1/bias*
validate_shape(*
_output_shapes	
:А
З
model/conv2d_1/bias/readIdentitymodel/conv2d_1/bias*
T0*&
_class
loc:@model/conv2d_1/bias*
_output_shapes	
:А
m
model/conv2d_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ч
model/conv2d_1/Conv2DConv2Dmodel/conv2d/Relumodel/conv2d_1/kernel/read*
paddingSAME*0
_output_shapes
:€€€€€€€€€А*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
§
model/conv2d_1/BiasAddBiasAddmodel/conv2d_1/Conv2Dmodel/conv2d_1/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:€€€€€€€€€А
n
model/conv2d_1/ReluRelumodel/conv2d_1/BiasAdd*0
_output_shapes
:€€€€€€€€€А*
T0
є
6model/conv2d_2/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *(
_class
loc:@model/conv2d_2/kernel*
dtype0*
_output_shapes
:
£
4model/conv2d_2/kernel/Initializer/random_uniform/minConst*
valueB
 *Ыи!љ*(
_class
loc:@model/conv2d_2/kernel*
dtype0*
_output_shapes
: 
£
4model/conv2d_2/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *Ыи!=*(
_class
loc:@model/conv2d_2/kernel
К
>model/conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform6model/conv2d_2/kernel/Initializer/random_uniform/shape*
dtype0*(
_output_shapes
:АА*

seed *
T0*(
_class
loc:@model/conv2d_2/kernel*
seed2 
т
4model/conv2d_2/kernel/Initializer/random_uniform/subSub4model/conv2d_2/kernel/Initializer/random_uniform/max4model/conv2d_2/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@model/conv2d_2/kernel*
_output_shapes
: 
О
4model/conv2d_2/kernel/Initializer/random_uniform/mulMul>model/conv2d_2/kernel/Initializer/random_uniform/RandomUniform4model/conv2d_2/kernel/Initializer/random_uniform/sub*
T0*(
_class
loc:@model/conv2d_2/kernel*(
_output_shapes
:АА
А
0model/conv2d_2/kernel/Initializer/random_uniformAdd4model/conv2d_2/kernel/Initializer/random_uniform/mul4model/conv2d_2/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@model/conv2d_2/kernel*(
_output_shapes
:АА
«
model/conv2d_2/kernel
VariableV2*
shared_name *(
_class
loc:@model/conv2d_2/kernel*
	container *
shape:АА*
dtype0*(
_output_shapes
:АА
х
model/conv2d_2/kernel/AssignAssignmodel/conv2d_2/kernel0model/conv2d_2/kernel/Initializer/random_uniform*
use_locking(*
T0*(
_class
loc:@model/conv2d_2/kernel*
validate_shape(*(
_output_shapes
:АА
Ъ
model/conv2d_2/kernel/readIdentitymodel/conv2d_2/kernel*
T0*(
_class
loc:@model/conv2d_2/kernel*(
_output_shapes
:АА
Ь
%model/conv2d_2/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:А*
valueBА*    *&
_class
loc:@model/conv2d_2/bias
©
model/conv2d_2/bias
VariableV2*
shared_name *&
_class
loc:@model/conv2d_2/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А
„
model/conv2d_2/bias/AssignAssignmodel/conv2d_2/bias%model/conv2d_2/bias/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@model/conv2d_2/bias*
validate_shape(*
_output_shapes	
:А
З
model/conv2d_2/bias/readIdentitymodel/conv2d_2/bias*
T0*&
_class
loc:@model/conv2d_2/bias*
_output_shapes	
:А
m
model/conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
щ
model/conv2d_2/Conv2DConv2Dmodel/conv2d_1/Relumodel/conv2d_2/kernel/read*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:€€€€€€€€€А*
	dilations
*
T0
§
model/conv2d_2/BiasAddBiasAddmodel/conv2d_2/Conv2Dmodel/conv2d_2/bias/read*
data_formatNHWC*0
_output_shapes
:€€€€€€€€€А*
T0
n
model/conv2d_2/ReluRelumodel/conv2d_2/BiasAdd*0
_output_shapes
:€€€€€€€€€А*
T0
є
6model/conv2d_3/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *(
_class
loc:@model/conv2d_3/kernel*
dtype0*
_output_shapes
:
£
4model/conv2d_3/kernel/Initializer/random_uniform/minConst*
valueB
 *.щдЉ*(
_class
loc:@model/conv2d_3/kernel*
dtype0*
_output_shapes
: 
£
4model/conv2d_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *.щд<*(
_class
loc:@model/conv2d_3/kernel*
dtype0*
_output_shapes
: 
К
>model/conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform6model/conv2d_3/kernel/Initializer/random_uniform/shape*
dtype0*(
_output_shapes
:АА*

seed *
T0*(
_class
loc:@model/conv2d_3/kernel*
seed2 
т
4model/conv2d_3/kernel/Initializer/random_uniform/subSub4model/conv2d_3/kernel/Initializer/random_uniform/max4model/conv2d_3/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@model/conv2d_3/kernel*
_output_shapes
: 
О
4model/conv2d_3/kernel/Initializer/random_uniform/mulMul>model/conv2d_3/kernel/Initializer/random_uniform/RandomUniform4model/conv2d_3/kernel/Initializer/random_uniform/sub*
T0*(
_class
loc:@model/conv2d_3/kernel*(
_output_shapes
:АА
А
0model/conv2d_3/kernel/Initializer/random_uniformAdd4model/conv2d_3/kernel/Initializer/random_uniform/mul4model/conv2d_3/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@model/conv2d_3/kernel*(
_output_shapes
:АА
«
model/conv2d_3/kernel
VariableV2*
dtype0*(
_output_shapes
:АА*
shared_name *(
_class
loc:@model/conv2d_3/kernel*
	container *
shape:АА
х
model/conv2d_3/kernel/AssignAssignmodel/conv2d_3/kernel0model/conv2d_3/kernel/Initializer/random_uniform*
use_locking(*
T0*(
_class
loc:@model/conv2d_3/kernel*
validate_shape(*(
_output_shapes
:АА
Ъ
model/conv2d_3/kernel/readIdentitymodel/conv2d_3/kernel*(
_output_shapes
:АА*
T0*(
_class
loc:@model/conv2d_3/kernel
®
5model/conv2d_3/bias/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:А*&
_class
loc:@model/conv2d_3/bias
Ш
+model/conv2d_3/bias/Initializer/zeros/ConstConst*
valueB
 *    *&
_class
loc:@model/conv2d_3/bias*
dtype0*
_output_shapes
: 
с
%model/conv2d_3/bias/Initializer/zerosFill5model/conv2d_3/bias/Initializer/zeros/shape_as_tensor+model/conv2d_3/bias/Initializer/zeros/Const*
T0*

index_type0*&
_class
loc:@model/conv2d_3/bias*
_output_shapes	
:А
©
model/conv2d_3/bias
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *&
_class
loc:@model/conv2d_3/bias*
	container *
shape:А
„
model/conv2d_3/bias/AssignAssignmodel/conv2d_3/bias%model/conv2d_3/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*&
_class
loc:@model/conv2d_3/bias
З
model/conv2d_3/bias/readIdentitymodel/conv2d_3/bias*
T0*&
_class
loc:@model/conv2d_3/bias*
_output_shapes	
:А
m
model/conv2d_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
щ
model/conv2d_3/Conv2DConv2Dmodel/conv2d_2/Relumodel/conv2d_3/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:€€€€€€€€€А
§
model/conv2d_3/BiasAddBiasAddmodel/conv2d_3/Conv2Dmodel/conv2d_3/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:€€€€€€€€€А
n
model/conv2d_3/ReluRelumodel/conv2d_3/BiasAdd*
T0*0
_output_shapes
:€€€€€€€€€А
є
6model/conv2d_4/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            *(
_class
loc:@model/conv2d_4/kernel
£
4model/conv2d_4/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *шK∆Љ*(
_class
loc:@model/conv2d_4/kernel
£
4model/conv2d_4/kernel/Initializer/random_uniform/maxConst*
valueB
 *шK∆<*(
_class
loc:@model/conv2d_4/kernel*
dtype0*
_output_shapes
: 
К
>model/conv2d_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform6model/conv2d_4/kernel/Initializer/random_uniform/shape*
dtype0*(
_output_shapes
:АА*

seed *
T0*(
_class
loc:@model/conv2d_4/kernel*
seed2 
т
4model/conv2d_4/kernel/Initializer/random_uniform/subSub4model/conv2d_4/kernel/Initializer/random_uniform/max4model/conv2d_4/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@model/conv2d_4/kernel*
_output_shapes
: 
О
4model/conv2d_4/kernel/Initializer/random_uniform/mulMul>model/conv2d_4/kernel/Initializer/random_uniform/RandomUniform4model/conv2d_4/kernel/Initializer/random_uniform/sub*
T0*(
_class
loc:@model/conv2d_4/kernel*(
_output_shapes
:АА
А
0model/conv2d_4/kernel/Initializer/random_uniformAdd4model/conv2d_4/kernel/Initializer/random_uniform/mul4model/conv2d_4/kernel/Initializer/random_uniform/min*(
_output_shapes
:АА*
T0*(
_class
loc:@model/conv2d_4/kernel
«
model/conv2d_4/kernel
VariableV2*
shared_name *(
_class
loc:@model/conv2d_4/kernel*
	container *
shape:АА*
dtype0*(
_output_shapes
:АА
х
model/conv2d_4/kernel/AssignAssignmodel/conv2d_4/kernel0model/conv2d_4/kernel/Initializer/random_uniform*
T0*(
_class
loc:@model/conv2d_4/kernel*
validate_shape(*(
_output_shapes
:АА*
use_locking(
Ъ
model/conv2d_4/kernel/readIdentitymodel/conv2d_4/kernel*
T0*(
_class
loc:@model/conv2d_4/kernel*(
_output_shapes
:АА
®
5model/conv2d_4/bias/Initializer/zeros/shape_as_tensorConst*
valueB:А*&
_class
loc:@model/conv2d_4/bias*
dtype0*
_output_shapes
:
Ш
+model/conv2d_4/bias/Initializer/zeros/ConstConst*
valueB
 *    *&
_class
loc:@model/conv2d_4/bias*
dtype0*
_output_shapes
: 
с
%model/conv2d_4/bias/Initializer/zerosFill5model/conv2d_4/bias/Initializer/zeros/shape_as_tensor+model/conv2d_4/bias/Initializer/zeros/Const*
T0*

index_type0*&
_class
loc:@model/conv2d_4/bias*
_output_shapes	
:А
©
model/conv2d_4/bias
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *&
_class
loc:@model/conv2d_4/bias*
	container *
shape:А
„
model/conv2d_4/bias/AssignAssignmodel/conv2d_4/bias%model/conv2d_4/bias/Initializer/zeros*
T0*&
_class
loc:@model/conv2d_4/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
З
model/conv2d_4/bias/readIdentitymodel/conv2d_4/bias*
T0*&
_class
loc:@model/conv2d_4/bias*
_output_shapes	
:А
m
model/conv2d_4/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
щ
model/conv2d_4/Conv2DConv2Dmodel/conv2d_3/Relumodel/conv2d_4/kernel/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:€€€€€€€€€А*
	dilations

§
model/conv2d_4/BiasAddBiasAddmodel/conv2d_4/Conv2Dmodel/conv2d_4/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:€€€€€€€€€А
n
model/conv2d_4/ReluRelumodel/conv2d_4/BiasAdd*
T0*0
_output_shapes
:€€€€€€€€€А
m
model/transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:
П
model/transpose	Transposemodel/conv2d_4/Relumodel/transpose/perm*
T0*0
_output_shapes
:€€€€€€€€€А*
Tperm0
d
model/Reshape/shapeConst*
valueB"€€€€ 0  *
dtype0*
_output_shapes
:

model/ReshapeReshapemodel/transposemodel/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А`
Ђ
3model/dense/kernel/Initializer/random_uniform/shapeConst*
valueB" 0     *%
_class
loc:@model/dense/kernel*
dtype0*
_output_shapes
:
Э
1model/dense/kernel/Initializer/random_uniform/minConst*
valueB
 *тк≠Љ*%
_class
loc:@model/dense/kernel*
dtype0*
_output_shapes
: 
Э
1model/dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *тк≠<*%
_class
loc:@model/dense/kernel
щ
;model/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform3model/dense/kernel/Initializer/random_uniform/shape*

seed *
T0*%
_class
loc:@model/dense/kernel*
seed2 *
dtype0* 
_output_shapes
:
А`А
ж
1model/dense/kernel/Initializer/random_uniform/subSub1model/dense/kernel/Initializer/random_uniform/max1model/dense/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*%
_class
loc:@model/dense/kernel
ъ
1model/dense/kernel/Initializer/random_uniform/mulMul;model/dense/kernel/Initializer/random_uniform/RandomUniform1model/dense/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@model/dense/kernel* 
_output_shapes
:
А`А
м
-model/dense/kernel/Initializer/random_uniformAdd1model/dense/kernel/Initializer/random_uniform/mul1model/dense/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@model/dense/kernel* 
_output_shapes
:
А`А
±
model/dense/kernel
VariableV2*
	container *
shape:
А`А*
dtype0* 
_output_shapes
:
А`А*
shared_name *%
_class
loc:@model/dense/kernel
б
model/dense/kernel/AssignAssignmodel/dense/kernel-model/dense/kernel/Initializer/random_uniform*
validate_shape(* 
_output_shapes
:
А`А*
use_locking(*
T0*%
_class
loc:@model/dense/kernel
Й
model/dense/kernel/readIdentitymodel/dense/kernel* 
_output_shapes
:
А`А*
T0*%
_class
loc:@model/dense/kernel
Ґ
2model/dense/bias/Initializer/zeros/shape_as_tensorConst*
valueB:А*#
_class
loc:@model/dense/bias*
dtype0*
_output_shapes
:
Т
(model/dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *#
_class
loc:@model/dense/bias*
dtype0*
_output_shapes
: 
е
"model/dense/bias/Initializer/zerosFill2model/dense/bias/Initializer/zeros/shape_as_tensor(model/dense/bias/Initializer/zeros/Const*
T0*

index_type0*#
_class
loc:@model/dense/bias*
_output_shapes	
:А
£
model/dense/bias
VariableV2*
shared_name *#
_class
loc:@model/dense/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А
Ћ
model/dense/bias/AssignAssignmodel/dense/bias"model/dense/bias/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@model/dense/bias*
validate_shape(*
_output_shapes	
:А
~
model/dense/bias/readIdentitymodel/dense/bias*
T0*#
_class
loc:@model/dense/bias*
_output_shapes	
:А
Э
model/dense/MatMulMatMulmodel/Reshapemodel/dense/kernel/read*
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
transpose_b( 
У
model/dense/BiasAddBiasAddmodel/dense/MatMulmodel/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А
b
Reshape/shapeConst*!
valueB"€€€€6      *
dtype0*
_output_shapes
:
{
ReshapeReshapemodel/dense/BiasAddReshape/shape*,
_output_shapes
:€€€€€€€€€6А*
T0*
Tshape0
^
bidirectional_rnn/fw/fw/RankConst*
value	B :*
dtype0*
_output_shapes
: 
e
#bidirectional_rnn/fw/fw/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
e
#bidirectional_rnn/fw/fw/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
ґ
bidirectional_rnn/fw/fw/rangeRange#bidirectional_rnn/fw/fw/range/startbidirectional_rnn/fw/fw/Rank#bidirectional_rnn/fw/fw/range/delta*
_output_shapes
:*

Tidx0
x
'bidirectional_rnn/fw/fw/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
e
#bidirectional_rnn/fw/fw/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
—
bidirectional_rnn/fw/fw/concatConcatV2'bidirectional_rnn/fw/fw/concat/values_0bidirectional_rnn/fw/fw/range#bidirectional_rnn/fw/fw/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ы
!bidirectional_rnn/fw/fw/transpose	TransposeReshapebidirectional_rnn/fw/fw/concat*
T0*,
_output_shapes
:6€€€€€€€€€А*
Tperm0
~
bidirectional_rnn/fw/fw/ShapeShape!bidirectional_rnn/fw/fw/transpose*
T0*
out_type0*
_output_shapes
:
u
+bidirectional_rnn/fw/fw/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
w
-bidirectional_rnn/fw/fw/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
w
-bidirectional_rnn/fw/fw/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
с
%bidirectional_rnn/fw/fw/strided_sliceStridedSlicebidirectional_rnn/fw/fw/Shape+bidirectional_rnn/fw/fw/strided_slice/stack-bidirectional_rnn/fw/fw/strided_slice/stack_1-bidirectional_rnn/fw/fw/strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
z
8bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
‘
4bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims
ExpandDims%bidirectional_rnn/fw/fw/strided_slice8bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims/dim*
T0*
_output_shapes
:*

Tdim0
z
/bidirectional_rnn/fw/fw/LSTMCellZeroState/ConstConst*
valueB:А*
dtype0*
_output_shapes
:
w
5bidirectional_rnn/fw/fw/LSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ф
0bidirectional_rnn/fw/fw/LSTMCellZeroState/concatConcatV24bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims/bidirectional_rnn/fw/fw/LSTMCellZeroState/Const5bidirectional_rnn/fw/fw/LSTMCellZeroState/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
z
5bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
е
/bidirectional_rnn/fw/fw/LSTMCellZeroState/zerosFill0bidirectional_rnn/fw/fw/LSTMCellZeroState/concat5bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros/Const*
T0*

index_type0*(
_output_shapes
:€€€€€€€€€А
|
:bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
Ў
6bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims_1
ExpandDims%bidirectional_rnn/fw/fw/strided_slice:bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims_1/dim*
T0*
_output_shapes
:*

Tdim0
|
1bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_1Const*
valueB:А*
dtype0*
_output_shapes
:
|
:bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ў
6bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims_2
ExpandDims%bidirectional_rnn/fw/fw/strided_slice:bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims_2/dim*

Tdim0*
T0*
_output_shapes
:
|
1bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_2Const*
valueB:А*
dtype0*
_output_shapes
:
y
7bidirectional_rnn/fw/fw/LSTMCellZeroState/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Ь
2bidirectional_rnn/fw/fw/LSTMCellZeroState/concat_1ConcatV26bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims_21bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_27bidirectional_rnn/fw/fw/LSTMCellZeroState/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
|
7bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
л
1bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros_1Fill2bidirectional_rnn/fw/fw/LSTMCellZeroState/concat_17bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros_1/Const*
T0*

index_type0*(
_output_shapes
:€€€€€€€€€А
|
:bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims_3/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ў
6bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims_3
ExpandDims%bidirectional_rnn/fw/fw/strided_slice:bidirectional_rnn/fw/fw/LSTMCellZeroState/ExpandDims_3/dim*
T0*
_output_shapes
:*

Tdim0
|
1bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_3Const*
valueB:А*
dtype0*
_output_shapes
:
А
bidirectional_rnn/fw/fw/Shape_1Shape!bidirectional_rnn/fw/fw/transpose*
T0*
out_type0*
_output_shapes
:
w
-bidirectional_rnn/fw/fw/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/bidirectional_rnn/fw/fw/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/bidirectional_rnn/fw/fw/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ы
'bidirectional_rnn/fw/fw/strided_slice_1StridedSlicebidirectional_rnn/fw/fw/Shape_1-bidirectional_rnn/fw/fw/strided_slice_1/stack/bidirectional_rnn/fw/fw/strided_slice_1/stack_1/bidirectional_rnn/fw/fw/strided_slice_1/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
А
bidirectional_rnn/fw/fw/Shape_2Shape!bidirectional_rnn/fw/fw/transpose*
T0*
out_type0*
_output_shapes
:
w
-bidirectional_rnn/fw/fw/strided_slice_2/stackConst*
dtype0*
_output_shapes
:*
valueB:
y
/bidirectional_rnn/fw/fw/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/bidirectional_rnn/fw/fw/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ы
'bidirectional_rnn/fw/fw/strided_slice_2StridedSlicebidirectional_rnn/fw/fw/Shape_2-bidirectional_rnn/fw/fw/strided_slice_2/stack/bidirectional_rnn/fw/fw/strided_slice_2/stack_1/bidirectional_rnn/fw/fw/strided_slice_2/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
h
&bidirectional_rnn/fw/fw/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
≤
"bidirectional_rnn/fw/fw/ExpandDims
ExpandDims'bidirectional_rnn/fw/fw/strided_slice_2&bidirectional_rnn/fw/fw/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
h
bidirectional_rnn/fw/fw/ConstConst*
valueB:А*
dtype0*
_output_shapes
:
g
%bidirectional_rnn/fw/fw/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
–
 bidirectional_rnn/fw/fw/concat_1ConcatV2"bidirectional_rnn/fw/fw/ExpandDimsbidirectional_rnn/fw/fw/Const%bidirectional_rnn/fw/fw/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
h
#bidirectional_rnn/fw/fw/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
±
bidirectional_rnn/fw/fw/zerosFill bidirectional_rnn/fw/fw/concat_1#bidirectional_rnn/fw/fw/zeros/Const*(
_output_shapes
:€€€€€€€€€А*
T0*

index_type0
^
bidirectional_rnn/fw/fw/timeConst*
value	B : *
dtype0*
_output_shapes
: 
ј
#bidirectional_rnn/fw/fw/TensorArrayTensorArrayV3'bidirectional_rnn/fw/fw/strided_slice_1*%
element_shape:€€€€€€€€€А*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*C
tensor_array_name.,bidirectional_rnn/fw/fw/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: 
Ѕ
%bidirectional_rnn/fw/fw/TensorArray_1TensorArrayV3'bidirectional_rnn/fw/fw/strided_slice_1*%
element_shape:€€€€€€€€€А*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*B
tensor_array_name-+bidirectional_rnn/fw/fw/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: 
С
0bidirectional_rnn/fw/fw/TensorArrayUnstack/ShapeShape!bidirectional_rnn/fw/fw/transpose*
T0*
out_type0*
_output_shapes
:
И
>bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
К
@bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
К
@bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
–
8bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_sliceStridedSlice0bidirectional_rnn/fw/fw/TensorArrayUnstack/Shape>bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack@bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_1@bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
x
6bidirectional_rnn/fw/fw/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
x
6bidirectional_rnn/fw/fw/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ф
0bidirectional_rnn/fw/fw/TensorArrayUnstack/rangeRange6bidirectional_rnn/fw/fw/TensorArrayUnstack/range/start8bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice6bidirectional_rnn/fw/fw/TensorArrayUnstack/range/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0
ж
Rbidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3%bidirectional_rnn/fw/fw/TensorArray_10bidirectional_rnn/fw/fw/TensorArrayUnstack/range!bidirectional_rnn/fw/fw/transpose'bidirectional_rnn/fw/fw/TensorArray_1:1*
T0*4
_class*
(&loc:@bidirectional_rnn/fw/fw/transpose*
_output_shapes
: 
c
!bidirectional_rnn/fw/fw/Maximum/xConst*
value	B :*
dtype0*
_output_shapes
: 
Ч
bidirectional_rnn/fw/fw/MaximumMaximum!bidirectional_rnn/fw/fw/Maximum/x'bidirectional_rnn/fw/fw/strided_slice_1*
T0*
_output_shapes
: 
Х
bidirectional_rnn/fw/fw/MinimumMinimum'bidirectional_rnn/fw/fw/strided_slice_1bidirectional_rnn/fw/fw/Maximum*
T0*
_output_shapes
: 
q
/bidirectional_rnn/fw/fw/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
й
#bidirectional_rnn/fw/fw/while/EnterEnter/bidirectional_rnn/fw/fw/while/iteration_counter*
parallel_iterations *
_output_shapes
: *;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant( 
Ў
%bidirectional_rnn/fw/fw/while/Enter_1Enterbidirectional_rnn/fw/fw/time*
parallel_iterations *
_output_shapes
: *;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant( 
б
%bidirectional_rnn/fw/fw/while/Enter_2Enter%bidirectional_rnn/fw/fw/TensorArray:1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
э
%bidirectional_rnn/fw/fw/while/Enter_3Enter/bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros*
T0*
is_constant( *
parallel_iterations *(
_output_shapes
:€€€€€€€€€А*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
€
%bidirectional_rnn/fw/fw/while/Enter_4Enter1bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros_1*
T0*
is_constant( *
parallel_iterations *(
_output_shapes
:€€€€€€€€€А*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
™
#bidirectional_rnn/fw/fw/while/MergeMerge#bidirectional_rnn/fw/fw/while/Enter+bidirectional_rnn/fw/fw/while/NextIteration*
T0*
N*
_output_shapes
: : 
∞
%bidirectional_rnn/fw/fw/while/Merge_1Merge%bidirectional_rnn/fw/fw/while/Enter_1-bidirectional_rnn/fw/fw/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
∞
%bidirectional_rnn/fw/fw/while/Merge_2Merge%bidirectional_rnn/fw/fw/while/Enter_2-bidirectional_rnn/fw/fw/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
¬
%bidirectional_rnn/fw/fw/while/Merge_3Merge%bidirectional_rnn/fw/fw/while/Enter_3-bidirectional_rnn/fw/fw/while/NextIteration_3*
T0*
N**
_output_shapes
:€€€€€€€€€А: 
¬
%bidirectional_rnn/fw/fw/while/Merge_4Merge%bidirectional_rnn/fw/fw/while/Enter_4-bidirectional_rnn/fw/fw/while/NextIteration_4*
N**
_output_shapes
:€€€€€€€€€А: *
T0
Ъ
"bidirectional_rnn/fw/fw/while/LessLess#bidirectional_rnn/fw/fw/while/Merge(bidirectional_rnn/fw/fw/while/Less/Enter*
_output_shapes
: *
T0
ж
(bidirectional_rnn/fw/fw/while/Less/EnterEnter'bidirectional_rnn/fw/fw/strided_slice_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
†
$bidirectional_rnn/fw/fw/while/Less_1Less%bidirectional_rnn/fw/fw/while/Merge_1*bidirectional_rnn/fw/fw/while/Less_1/Enter*
T0*
_output_shapes
: 
а
*bidirectional_rnn/fw/fw/while/Less_1/EnterEnterbidirectional_rnn/fw/fw/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
Ш
(bidirectional_rnn/fw/fw/while/LogicalAnd
LogicalAnd"bidirectional_rnn/fw/fw/while/Less$bidirectional_rnn/fw/fw/while/Less_1*
_output_shapes
: 
t
&bidirectional_rnn/fw/fw/while/LoopCondLoopCond(bidirectional_rnn/fw/fw/while/LogicalAnd*
_output_shapes
: 
÷
$bidirectional_rnn/fw/fw/while/SwitchSwitch#bidirectional_rnn/fw/fw/while/Merge&bidirectional_rnn/fw/fw/while/LoopCond*
_output_shapes
: : *
T0*6
_class,
*(loc:@bidirectional_rnn/fw/fw/while/Merge
№
&bidirectional_rnn/fw/fw/while/Switch_1Switch%bidirectional_rnn/fw/fw/while/Merge_1&bidirectional_rnn/fw/fw/while/LoopCond*
T0*8
_class.
,*loc:@bidirectional_rnn/fw/fw/while/Merge_1*
_output_shapes
: : 
№
&bidirectional_rnn/fw/fw/while/Switch_2Switch%bidirectional_rnn/fw/fw/while/Merge_2&bidirectional_rnn/fw/fw/while/LoopCond*
_output_shapes
: : *
T0*8
_class.
,*loc:@bidirectional_rnn/fw/fw/while/Merge_2
А
&bidirectional_rnn/fw/fw/while/Switch_3Switch%bidirectional_rnn/fw/fw/while/Merge_3&bidirectional_rnn/fw/fw/while/LoopCond*
T0*8
_class.
,*loc:@bidirectional_rnn/fw/fw/while/Merge_3*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А
А
&bidirectional_rnn/fw/fw/while/Switch_4Switch%bidirectional_rnn/fw/fw/while/Merge_4&bidirectional_rnn/fw/fw/while/LoopCond*
T0*8
_class.
,*loc:@bidirectional_rnn/fw/fw/while/Merge_4*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А
{
&bidirectional_rnn/fw/fw/while/IdentityIdentity&bidirectional_rnn/fw/fw/while/Switch:1*
T0*
_output_shapes
: 

(bidirectional_rnn/fw/fw/while/Identity_1Identity(bidirectional_rnn/fw/fw/while/Switch_1:1*
T0*
_output_shapes
: 

(bidirectional_rnn/fw/fw/while/Identity_2Identity(bidirectional_rnn/fw/fw/while/Switch_2:1*
T0*
_output_shapes
: 
С
(bidirectional_rnn/fw/fw/while/Identity_3Identity(bidirectional_rnn/fw/fw/while/Switch_3:1*(
_output_shapes
:€€€€€€€€€А*
T0
С
(bidirectional_rnn/fw/fw/while/Identity_4Identity(bidirectional_rnn/fw/fw/while/Switch_4:1*
T0*(
_output_shapes
:€€€€€€€€€А
О
#bidirectional_rnn/fw/fw/while/add/yConst'^bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ц
!bidirectional_rnn/fw/fw/while/addAdd&bidirectional_rnn/fw/fw/while/Identity#bidirectional_rnn/fw/fw/while/add/y*
_output_shapes
: *
T0
Х
/bidirectional_rnn/fw/fw/while/TensorArrayReadV3TensorArrayReadV35bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter(bidirectional_rnn/fw/fw/while/Identity_17bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1*
dtype0*(
_output_shapes
:€€€€€€€€€А
х
5bidirectional_rnn/fw/fw/while/TensorArrayReadV3/EnterEnter%bidirectional_rnn/fw/fw/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
†
7bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1EnterRbidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
parallel_iterations *
_output_shapes
: *;

frame_name-+bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
—
Fbidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/shapeConst*
valueB"А     *8
_class.
,*loc:@bidirectional_rnn/fw/lstm_cell/kernel*
dtype0*
_output_shapes
:
√
Dbidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ффuљ*8
_class.
,*loc:@bidirectional_rnn/fw/lstm_cell/kernel
√
Dbidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/maxConst*
valueB
 *ффu=*8
_class.
,*loc:@bidirectional_rnn/fw/lstm_cell/kernel*
dtype0*
_output_shapes
: 
≤
Nbidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformFbidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
А	А*

seed *
T0*8
_class.
,*loc:@bidirectional_rnn/fw/lstm_cell/kernel*
seed2 
≤
Dbidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/subSubDbidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/maxDbidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*8
_class.
,*loc:@bidirectional_rnn/fw/lstm_cell/kernel
∆
Dbidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/mulMulNbidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/RandomUniformDbidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/sub*
T0*8
_class.
,*loc:@bidirectional_rnn/fw/lstm_cell/kernel* 
_output_shapes
:
А	А
Є
@bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniformAddDbidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/mulDbidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/min*
T0*8
_class.
,*loc:@bidirectional_rnn/fw/lstm_cell/kernel* 
_output_shapes
:
А	А
„
%bidirectional_rnn/fw/lstm_cell/kernel
VariableV2*
dtype0* 
_output_shapes
:
А	А*
shared_name *8
_class.
,*loc:@bidirectional_rnn/fw/lstm_cell/kernel*
	container *
shape:
А	А
≠
,bidirectional_rnn/fw/lstm_cell/kernel/AssignAssign%bidirectional_rnn/fw/lstm_cell/kernel@bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform*
use_locking(*
T0*8
_class.
,*loc:@bidirectional_rnn/fw/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
А	А
И
*bidirectional_rnn/fw/lstm_cell/kernel/readIdentity%bidirectional_rnn/fw/lstm_cell/kernel*
T0* 
_output_shapes
:
А	А
Љ
5bidirectional_rnn/fw/lstm_cell/bias/Initializer/zerosConst*
valueBА*    *6
_class,
*(loc:@bidirectional_rnn/fw/lstm_cell/bias*
dtype0*
_output_shapes	
:А
…
#bidirectional_rnn/fw/lstm_cell/bias
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *6
_class,
*(loc:@bidirectional_rnn/fw/lstm_cell/bias*
	container *
shape:А
Ч
*bidirectional_rnn/fw/lstm_cell/bias/AssignAssign#bidirectional_rnn/fw/lstm_cell/bias5bidirectional_rnn/fw/lstm_cell/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*6
_class,
*(loc:@bidirectional_rnn/fw/lstm_cell/bias

(bidirectional_rnn/fw/lstm_cell/bias/readIdentity#bidirectional_rnn/fw/lstm_cell/bias*
_output_shapes	
:А*
T0
Ю
3bidirectional_rnn/fw/fw/while/lstm_cell/concat/axisConst'^bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Т
.bidirectional_rnn/fw/fw/while/lstm_cell/concatConcatV2/bidirectional_rnn/fw/fw/while/TensorArrayReadV3(bidirectional_rnn/fw/fw/while/Identity_43bidirectional_rnn/fw/fw/while/lstm_cell/concat/axis*
N*(
_output_shapes
:€€€€€€€€€А	*

Tidx0*
T0
ч
.bidirectional_rnn/fw/fw/while/lstm_cell/MatMulMatMul.bidirectional_rnn/fw/fw/while/lstm_cell/concat4bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter*(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
transpose_b( *
T0
€
4bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/EnterEnter*bidirectional_rnn/fw/lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
А	А*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
л
/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAddBiasAdd.bidirectional_rnn/fw/fw/while/lstm_cell/MatMul5bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А
щ
5bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/EnterEnter(bidirectional_rnn/fw/lstm_cell/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:А*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
Ш
-bidirectional_rnn/fw/fw/while/lstm_cell/ConstConst'^bidirectional_rnn/fw/fw/while/Identity*
dtype0*
_output_shapes
: *
value	B :
Ґ
7bidirectional_rnn/fw/fw/while/lstm_cell/split/split_dimConst'^bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
†
-bidirectional_rnn/fw/fw/while/lstm_cell/splitSplit7bidirectional_rnn/fw/fw/while/lstm_cell/split/split_dim/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split*
T0
Ы
-bidirectional_rnn/fw/fw/while/lstm_cell/add/yConst'^bidirectional_rnn/fw/fw/while/Identity*
valueB
 *  А?*
dtype0*
_output_shapes
: 
≈
+bidirectional_rnn/fw/fw/while/lstm_cell/addAdd/bidirectional_rnn/fw/fw/while/lstm_cell/split:2-bidirectional_rnn/fw/fw/while/lstm_cell/add/y*
T0*(
_output_shapes
:€€€€€€€€€А
Ъ
/bidirectional_rnn/fw/fw/while/lstm_cell/SigmoidSigmoid+bidirectional_rnn/fw/fw/while/lstm_cell/add*
T0*(
_output_shapes
:€€€€€€€€€А
ј
+bidirectional_rnn/fw/fw/while/lstm_cell/mulMul/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid(bidirectional_rnn/fw/fw/while/Identity_3*(
_output_shapes
:€€€€€€€€€А*
T0
Ю
1bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_1Sigmoid-bidirectional_rnn/fw/fw/while/lstm_cell/split*(
_output_shapes
:€€€€€€€€€А*
T0
Ш
,bidirectional_rnn/fw/fw/while/lstm_cell/TanhTanh/bidirectional_rnn/fw/fw/while/lstm_cell/split:1*
T0*(
_output_shapes
:€€€€€€€€€А
»
-bidirectional_rnn/fw/fw/while/lstm_cell/mul_1Mul1bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_1,bidirectional_rnn/fw/fw/while/lstm_cell/Tanh*
T0*(
_output_shapes
:€€€€€€€€€А
√
-bidirectional_rnn/fw/fw/while/lstm_cell/add_1Add+bidirectional_rnn/fw/fw/while/lstm_cell/mul-bidirectional_rnn/fw/fw/while/lstm_cell/mul_1*
T0*(
_output_shapes
:€€€€€€€€€А
†
1bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_2Sigmoid/bidirectional_rnn/fw/fw/while/lstm_cell/split:3*
T0*(
_output_shapes
:€€€€€€€€€А
Ш
.bidirectional_rnn/fw/fw/while/lstm_cell/Tanh_1Tanh-bidirectional_rnn/fw/fw/while/lstm_cell/add_1*
T0*(
_output_shapes
:€€€€€€€€€А
 
-bidirectional_rnn/fw/fw/while/lstm_cell/mul_2Mul1bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_2.bidirectional_rnn/fw/fw/while/lstm_cell/Tanh_1*
T0*(
_output_shapes
:€€€€€€€€€А
Ж
Abidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Gbidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/Enter(bidirectional_rnn/fw/fw/while/Identity_1-bidirectional_rnn/fw/fw/while/lstm_cell/mul_2(bidirectional_rnn/fw/fw/while/Identity_2*
T0*@
_class6
42loc:@bidirectional_rnn/fw/fw/while/lstm_cell/mul_2*
_output_shapes
: 
«
Gbidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter#bidirectional_rnn/fw/fw/TensorArray*
T0*@
_class6
42loc:@bidirectional_rnn/fw/fw/while/lstm_cell/mul_2*
parallel_iterations *
is_constant(*
_output_shapes
:*;

frame_name-+bidirectional_rnn/fw/fw/while/while_context
Р
%bidirectional_rnn/fw/fw/while/add_1/yConst'^bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ь
#bidirectional_rnn/fw/fw/while/add_1Add(bidirectional_rnn/fw/fw/while/Identity_1%bidirectional_rnn/fw/fw/while/add_1/y*
T0*
_output_shapes
: 
А
+bidirectional_rnn/fw/fw/while/NextIterationNextIteration!bidirectional_rnn/fw/fw/while/add*
_output_shapes
: *
T0
Д
-bidirectional_rnn/fw/fw/while/NextIteration_1NextIteration#bidirectional_rnn/fw/fw/while/add_1*
T0*
_output_shapes
: 
Ґ
-bidirectional_rnn/fw/fw/while/NextIteration_2NextIterationAbidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
†
-bidirectional_rnn/fw/fw/while/NextIteration_3NextIteration-bidirectional_rnn/fw/fw/while/lstm_cell/add_1*
T0*(
_output_shapes
:€€€€€€€€€А
†
-bidirectional_rnn/fw/fw/while/NextIteration_4NextIteration-bidirectional_rnn/fw/fw/while/lstm_cell/mul_2*
T0*(
_output_shapes
:€€€€€€€€€А
q
"bidirectional_rnn/fw/fw/while/ExitExit$bidirectional_rnn/fw/fw/while/Switch*
T0*
_output_shapes
: 
u
$bidirectional_rnn/fw/fw/while/Exit_1Exit&bidirectional_rnn/fw/fw/while/Switch_1*
T0*
_output_shapes
: 
u
$bidirectional_rnn/fw/fw/while/Exit_2Exit&bidirectional_rnn/fw/fw/while/Switch_2*
_output_shapes
: *
T0
З
$bidirectional_rnn/fw/fw/while/Exit_3Exit&bidirectional_rnn/fw/fw/while/Switch_3*
T0*(
_output_shapes
:€€€€€€€€€А
З
$bidirectional_rnn/fw/fw/while/Exit_4Exit&bidirectional_rnn/fw/fw/while/Switch_4*
T0*(
_output_shapes
:€€€€€€€€€А
к
:bidirectional_rnn/fw/fw/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3#bidirectional_rnn/fw/fw/TensorArray$bidirectional_rnn/fw/fw/while/Exit_2*6
_class,
*(loc:@bidirectional_rnn/fw/fw/TensorArray*
_output_shapes
: 
Ѓ
4bidirectional_rnn/fw/fw/TensorArrayStack/range/startConst*
dtype0*
_output_shapes
: *
value	B : *6
_class,
*(loc:@bidirectional_rnn/fw/fw/TensorArray
Ѓ
4bidirectional_rnn/fw/fw/TensorArrayStack/range/deltaConst*
value	B :*6
_class,
*(loc:@bidirectional_rnn/fw/fw/TensorArray*
dtype0*
_output_shapes
: 
»
.bidirectional_rnn/fw/fw/TensorArrayStack/rangeRange4bidirectional_rnn/fw/fw/TensorArrayStack/range/start:bidirectional_rnn/fw/fw/TensorArrayStack/TensorArraySizeV34bidirectional_rnn/fw/fw/TensorArrayStack/range/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0*6
_class,
*(loc:@bidirectional_rnn/fw/fw/TensorArray
и
<bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3#bidirectional_rnn/fw/fw/TensorArray.bidirectional_rnn/fw/fw/TensorArrayStack/range$bidirectional_rnn/fw/fw/while/Exit_2*%
element_shape:€€€€€€€€€А*6
_class,
*(loc:@bidirectional_rnn/fw/fw/TensorArray*
dtype0*,
_output_shapes
:6€€€€€€€€€А
j
bidirectional_rnn/fw/fw/Const_1Const*
valueB:А*
dtype0*
_output_shapes
:
`
bidirectional_rnn/fw/fw/Rank_1Const*
dtype0*
_output_shapes
: *
value	B :
g
%bidirectional_rnn/fw/fw/range_1/startConst*
value	B :*
dtype0*
_output_shapes
: 
g
%bidirectional_rnn/fw/fw/range_1/deltaConst*
dtype0*
_output_shapes
: *
value	B :
Њ
bidirectional_rnn/fw/fw/range_1Range%bidirectional_rnn/fw/fw/range_1/startbidirectional_rnn/fw/fw/Rank_1%bidirectional_rnn/fw/fw/range_1/delta*

Tidx0*
_output_shapes
:
z
)bidirectional_rnn/fw/fw/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
g
%bidirectional_rnn/fw/fw/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ў
 bidirectional_rnn/fw/fw/concat_2ConcatV2)bidirectional_rnn/fw/fw/concat_2/values_0bidirectional_rnn/fw/fw/range_1%bidirectional_rnn/fw/fw/concat_2/axis*

Tidx0*
T0*
N*
_output_shapes
:
‘
#bidirectional_rnn/fw/fw/transpose_1	Transpose<bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3 bidirectional_rnn/fw/fw/concat_2*
T0*,
_output_shapes
:€€€€€€€€€6А*
Tperm0
m
#bidirectional_rnn/bw/ReverseV2/axisConst*
dtype0*
_output_shapes
:*
valueB:
Ь
bidirectional_rnn/bw/ReverseV2	ReverseV2Reshape#bidirectional_rnn/bw/ReverseV2/axis*

Tidx0*
T0*,
_output_shapes
:€€€€€€€€€6А
^
bidirectional_rnn/bw/bw/RankConst*
value	B :*
dtype0*
_output_shapes
: 
e
#bidirectional_rnn/bw/bw/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
e
#bidirectional_rnn/bw/bw/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
ґ
bidirectional_rnn/bw/bw/rangeRange#bidirectional_rnn/bw/bw/range/startbidirectional_rnn/bw/bw/Rank#bidirectional_rnn/bw/bw/range/delta*
_output_shapes
:*

Tidx0
x
'bidirectional_rnn/bw/bw/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
e
#bidirectional_rnn/bw/bw/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
—
bidirectional_rnn/bw/bw/concatConcatV2'bidirectional_rnn/bw/bw/concat/values_0bidirectional_rnn/bw/bw/range#bidirectional_rnn/bw/bw/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
≤
!bidirectional_rnn/bw/bw/transpose	Transposebidirectional_rnn/bw/ReverseV2bidirectional_rnn/bw/bw/concat*
Tperm0*
T0*,
_output_shapes
:6€€€€€€€€€А
~
bidirectional_rnn/bw/bw/ShapeShape!bidirectional_rnn/bw/bw/transpose*
T0*
out_type0*
_output_shapes
:
u
+bidirectional_rnn/bw/bw/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
w
-bidirectional_rnn/bw/bw/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
w
-bidirectional_rnn/bw/bw/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
с
%bidirectional_rnn/bw/bw/strided_sliceStridedSlicebidirectional_rnn/bw/bw/Shape+bidirectional_rnn/bw/bw/strided_slice/stack-bidirectional_rnn/bw/bw/strided_slice/stack_1-bidirectional_rnn/bw/bw/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
z
8bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
‘
4bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims
ExpandDims%bidirectional_rnn/bw/bw/strided_slice8bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
z
/bidirectional_rnn/bw/bw/LSTMCellZeroState/ConstConst*
valueB:А*
dtype0*
_output_shapes
:
w
5bidirectional_rnn/bw/bw/LSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ф
0bidirectional_rnn/bw/bw/LSTMCellZeroState/concatConcatV24bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims/bidirectional_rnn/bw/bw/LSTMCellZeroState/Const5bidirectional_rnn/bw/bw/LSTMCellZeroState/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
z
5bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
е
/bidirectional_rnn/bw/bw/LSTMCellZeroState/zerosFill0bidirectional_rnn/bw/bw/LSTMCellZeroState/concat5bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros/Const*(
_output_shapes
:€€€€€€€€€А*
T0*

index_type0
|
:bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
Ў
6bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims_1
ExpandDims%bidirectional_rnn/bw/bw/strided_slice:bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes
:
|
1bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_1Const*
valueB:А*
dtype0*
_output_shapes
:
|
:bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ў
6bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims_2
ExpandDims%bidirectional_rnn/bw/bw/strided_slice:bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims_2/dim*

Tdim0*
T0*
_output_shapes
:
|
1bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_2Const*
valueB:А*
dtype0*
_output_shapes
:
y
7bidirectional_rnn/bw/bw/LSTMCellZeroState/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ь
2bidirectional_rnn/bw/bw/LSTMCellZeroState/concat_1ConcatV26bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims_21bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_27bidirectional_rnn/bw/bw/LSTMCellZeroState/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
|
7bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
л
1bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros_1Fill2bidirectional_rnn/bw/bw/LSTMCellZeroState/concat_17bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros_1/Const*(
_output_shapes
:€€€€€€€€€А*
T0*

index_type0
|
:bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims_3/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ў
6bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims_3
ExpandDims%bidirectional_rnn/bw/bw/strided_slice:bidirectional_rnn/bw/bw/LSTMCellZeroState/ExpandDims_3/dim*

Tdim0*
T0*
_output_shapes
:
|
1bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_3Const*
valueB:А*
dtype0*
_output_shapes
:
А
bidirectional_rnn/bw/bw/Shape_1Shape!bidirectional_rnn/bw/bw/transpose*
T0*
out_type0*
_output_shapes
:
w
-bidirectional_rnn/bw/bw/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/bidirectional_rnn/bw/bw/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
y
/bidirectional_rnn/bw/bw/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ы
'bidirectional_rnn/bw/bw/strided_slice_1StridedSlicebidirectional_rnn/bw/bw/Shape_1-bidirectional_rnn/bw/bw/strided_slice_1/stack/bidirectional_rnn/bw/bw/strided_slice_1/stack_1/bidirectional_rnn/bw/bw/strided_slice_1/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
А
bidirectional_rnn/bw/bw/Shape_2Shape!bidirectional_rnn/bw/bw/transpose*
T0*
out_type0*
_output_shapes
:
w
-bidirectional_rnn/bw/bw/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
y
/bidirectional_rnn/bw/bw/strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
y
/bidirectional_rnn/bw/bw/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ы
'bidirectional_rnn/bw/bw/strided_slice_2StridedSlicebidirectional_rnn/bw/bw/Shape_2-bidirectional_rnn/bw/bw/strided_slice_2/stack/bidirectional_rnn/bw/bw/strided_slice_2/stack_1/bidirectional_rnn/bw/bw/strided_slice_2/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
h
&bidirectional_rnn/bw/bw/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
≤
"bidirectional_rnn/bw/bw/ExpandDims
ExpandDims'bidirectional_rnn/bw/bw/strided_slice_2&bidirectional_rnn/bw/bw/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
h
bidirectional_rnn/bw/bw/ConstConst*
valueB:А*
dtype0*
_output_shapes
:
g
%bidirectional_rnn/bw/bw/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
–
 bidirectional_rnn/bw/bw/concat_1ConcatV2"bidirectional_rnn/bw/bw/ExpandDimsbidirectional_rnn/bw/bw/Const%bidirectional_rnn/bw/bw/concat_1/axis*
N*
_output_shapes
:*

Tidx0*
T0
h
#bidirectional_rnn/bw/bw/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
±
bidirectional_rnn/bw/bw/zerosFill bidirectional_rnn/bw/bw/concat_1#bidirectional_rnn/bw/bw/zeros/Const*(
_output_shapes
:€€€€€€€€€А*
T0*

index_type0
^
bidirectional_rnn/bw/bw/timeConst*
value	B : *
dtype0*
_output_shapes
: 
ј
#bidirectional_rnn/bw/bw/TensorArrayTensorArrayV3'bidirectional_rnn/bw/bw/strided_slice_1*C
tensor_array_name.,bidirectional_rnn/bw/bw/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *%
element_shape:€€€€€€€€€А*
clear_after_read(*
dynamic_size( *
identical_element_shapes(
Ѕ
%bidirectional_rnn/bw/bw/TensorArray_1TensorArrayV3'bidirectional_rnn/bw/bw/strided_slice_1*B
tensor_array_name-+bidirectional_rnn/bw/bw/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *%
element_shape:€€€€€€€€€А*
dynamic_size( *
clear_after_read(*
identical_element_shapes(
С
0bidirectional_rnn/bw/bw/TensorArrayUnstack/ShapeShape!bidirectional_rnn/bw/bw/transpose*
T0*
out_type0*
_output_shapes
:
И
>bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
К
@bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
К
@bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
–
8bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_sliceStridedSlice0bidirectional_rnn/bw/bw/TensorArrayUnstack/Shape>bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack@bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_1@bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
x
6bidirectional_rnn/bw/bw/TensorArrayUnstack/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
x
6bidirectional_rnn/bw/bw/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ф
0bidirectional_rnn/bw/bw/TensorArrayUnstack/rangeRange6bidirectional_rnn/bw/bw/TensorArrayUnstack/range/start8bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice6bidirectional_rnn/bw/bw/TensorArrayUnstack/range/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0
ж
Rbidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3%bidirectional_rnn/bw/bw/TensorArray_10bidirectional_rnn/bw/bw/TensorArrayUnstack/range!bidirectional_rnn/bw/bw/transpose'bidirectional_rnn/bw/bw/TensorArray_1:1*
T0*4
_class*
(&loc:@bidirectional_rnn/bw/bw/transpose*
_output_shapes
: 
c
!bidirectional_rnn/bw/bw/Maximum/xConst*
value	B :*
dtype0*
_output_shapes
: 
Ч
bidirectional_rnn/bw/bw/MaximumMaximum!bidirectional_rnn/bw/bw/Maximum/x'bidirectional_rnn/bw/bw/strided_slice_1*
_output_shapes
: *
T0
Х
bidirectional_rnn/bw/bw/MinimumMinimum'bidirectional_rnn/bw/bw/strided_slice_1bidirectional_rnn/bw/bw/Maximum*
T0*
_output_shapes
: 
q
/bidirectional_rnn/bw/bw/while/iteration_counterConst*
dtype0*
_output_shapes
: *
value	B : 
й
#bidirectional_rnn/bw/bw/while/EnterEnter/bidirectional_rnn/bw/bw/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
Ў
%bidirectional_rnn/bw/bw/while/Enter_1Enterbidirectional_rnn/bw/bw/time*
parallel_iterations *
_output_shapes
: *;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant( 
б
%bidirectional_rnn/bw/bw/while/Enter_2Enter%bidirectional_rnn/bw/bw/TensorArray:1*
parallel_iterations *
_output_shapes
: *;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant( 
э
%bidirectional_rnn/bw/bw/while/Enter_3Enter/bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros*
T0*
is_constant( *
parallel_iterations *(
_output_shapes
:€€€€€€€€€А*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
€
%bidirectional_rnn/bw/bw/while/Enter_4Enter1bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros_1*
T0*
is_constant( *
parallel_iterations *(
_output_shapes
:€€€€€€€€€А*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
™
#bidirectional_rnn/bw/bw/while/MergeMerge#bidirectional_rnn/bw/bw/while/Enter+bidirectional_rnn/bw/bw/while/NextIteration*
T0*
N*
_output_shapes
: : 
∞
%bidirectional_rnn/bw/bw/while/Merge_1Merge%bidirectional_rnn/bw/bw/while/Enter_1-bidirectional_rnn/bw/bw/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
∞
%bidirectional_rnn/bw/bw/while/Merge_2Merge%bidirectional_rnn/bw/bw/while/Enter_2-bidirectional_rnn/bw/bw/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
¬
%bidirectional_rnn/bw/bw/while/Merge_3Merge%bidirectional_rnn/bw/bw/while/Enter_3-bidirectional_rnn/bw/bw/while/NextIteration_3*
T0*
N**
_output_shapes
:€€€€€€€€€А: 
¬
%bidirectional_rnn/bw/bw/while/Merge_4Merge%bidirectional_rnn/bw/bw/while/Enter_4-bidirectional_rnn/bw/bw/while/NextIteration_4*
N**
_output_shapes
:€€€€€€€€€А: *
T0
Ъ
"bidirectional_rnn/bw/bw/while/LessLess#bidirectional_rnn/bw/bw/while/Merge(bidirectional_rnn/bw/bw/while/Less/Enter*
T0*
_output_shapes
: 
ж
(bidirectional_rnn/bw/bw/while/Less/EnterEnter'bidirectional_rnn/bw/bw/strided_slice_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
†
$bidirectional_rnn/bw/bw/while/Less_1Less%bidirectional_rnn/bw/bw/while/Merge_1*bidirectional_rnn/bw/bw/while/Less_1/Enter*
T0*
_output_shapes
: 
а
*bidirectional_rnn/bw/bw/while/Less_1/EnterEnterbidirectional_rnn/bw/bw/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
Ш
(bidirectional_rnn/bw/bw/while/LogicalAnd
LogicalAnd"bidirectional_rnn/bw/bw/while/Less$bidirectional_rnn/bw/bw/while/Less_1*
_output_shapes
: 
t
&bidirectional_rnn/bw/bw/while/LoopCondLoopCond(bidirectional_rnn/bw/bw/while/LogicalAnd*
_output_shapes
: 
÷
$bidirectional_rnn/bw/bw/while/SwitchSwitch#bidirectional_rnn/bw/bw/while/Merge&bidirectional_rnn/bw/bw/while/LoopCond*
_output_shapes
: : *
T0*6
_class,
*(loc:@bidirectional_rnn/bw/bw/while/Merge
№
&bidirectional_rnn/bw/bw/while/Switch_1Switch%bidirectional_rnn/bw/bw/while/Merge_1&bidirectional_rnn/bw/bw/while/LoopCond*
T0*8
_class.
,*loc:@bidirectional_rnn/bw/bw/while/Merge_1*
_output_shapes
: : 
№
&bidirectional_rnn/bw/bw/while/Switch_2Switch%bidirectional_rnn/bw/bw/while/Merge_2&bidirectional_rnn/bw/bw/while/LoopCond*
_output_shapes
: : *
T0*8
_class.
,*loc:@bidirectional_rnn/bw/bw/while/Merge_2
А
&bidirectional_rnn/bw/bw/while/Switch_3Switch%bidirectional_rnn/bw/bw/while/Merge_3&bidirectional_rnn/bw/bw/while/LoopCond*
T0*8
_class.
,*loc:@bidirectional_rnn/bw/bw/while/Merge_3*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А
А
&bidirectional_rnn/bw/bw/while/Switch_4Switch%bidirectional_rnn/bw/bw/while/Merge_4&bidirectional_rnn/bw/bw/while/LoopCond*<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*
T0*8
_class.
,*loc:@bidirectional_rnn/bw/bw/while/Merge_4
{
&bidirectional_rnn/bw/bw/while/IdentityIdentity&bidirectional_rnn/bw/bw/while/Switch:1*
T0*
_output_shapes
: 

(bidirectional_rnn/bw/bw/while/Identity_1Identity(bidirectional_rnn/bw/bw/while/Switch_1:1*
T0*
_output_shapes
: 

(bidirectional_rnn/bw/bw/while/Identity_2Identity(bidirectional_rnn/bw/bw/while/Switch_2:1*
T0*
_output_shapes
: 
С
(bidirectional_rnn/bw/bw/while/Identity_3Identity(bidirectional_rnn/bw/bw/while/Switch_3:1*(
_output_shapes
:€€€€€€€€€А*
T0
С
(bidirectional_rnn/bw/bw/while/Identity_4Identity(bidirectional_rnn/bw/bw/while/Switch_4:1*(
_output_shapes
:€€€€€€€€€А*
T0
О
#bidirectional_rnn/bw/bw/while/add/yConst'^bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ц
!bidirectional_rnn/bw/bw/while/addAdd&bidirectional_rnn/bw/bw/while/Identity#bidirectional_rnn/bw/bw/while/add/y*
_output_shapes
: *
T0
Х
/bidirectional_rnn/bw/bw/while/TensorArrayReadV3TensorArrayReadV35bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter(bidirectional_rnn/bw/bw/while/Identity_17bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1*
dtype0*(
_output_shapes
:€€€€€€€€€А
х
5bidirectional_rnn/bw/bw/while/TensorArrayReadV3/EnterEnter%bidirectional_rnn/bw/bw/TensorArray_1*
parallel_iterations *
_output_shapes
:*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
†
7bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1EnterRbidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
—
Fbidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"А     *8
_class.
,*loc:@bidirectional_rnn/bw/lstm_cell/kernel
√
Dbidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/minConst*
valueB
 *ффuљ*8
_class.
,*loc:@bidirectional_rnn/bw/lstm_cell/kernel*
dtype0*
_output_shapes
: 
√
Dbidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/maxConst*
valueB
 *ффu=*8
_class.
,*loc:@bidirectional_rnn/bw/lstm_cell/kernel*
dtype0*
_output_shapes
: 
≤
Nbidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformFbidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0* 
_output_shapes
:
А	А*

seed *
T0*8
_class.
,*loc:@bidirectional_rnn/bw/lstm_cell/kernel
≤
Dbidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/subSubDbidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/maxDbidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/min*
T0*8
_class.
,*loc:@bidirectional_rnn/bw/lstm_cell/kernel*
_output_shapes
: 
∆
Dbidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/mulMulNbidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/RandomUniformDbidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/sub*
T0*8
_class.
,*loc:@bidirectional_rnn/bw/lstm_cell/kernel* 
_output_shapes
:
А	А
Є
@bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniformAddDbidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/mulDbidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/min*
T0*8
_class.
,*loc:@bidirectional_rnn/bw/lstm_cell/kernel* 
_output_shapes
:
А	А
„
%bidirectional_rnn/bw/lstm_cell/kernel
VariableV2*
dtype0* 
_output_shapes
:
А	А*
shared_name *8
_class.
,*loc:@bidirectional_rnn/bw/lstm_cell/kernel*
	container *
shape:
А	А
≠
,bidirectional_rnn/bw/lstm_cell/kernel/AssignAssign%bidirectional_rnn/bw/lstm_cell/kernel@bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform*
T0*8
_class.
,*loc:@bidirectional_rnn/bw/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
А	А*
use_locking(
И
*bidirectional_rnn/bw/lstm_cell/kernel/readIdentity%bidirectional_rnn/bw/lstm_cell/kernel*
T0* 
_output_shapes
:
А	А
Љ
5bidirectional_rnn/bw/lstm_cell/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:А*
valueBА*    *6
_class,
*(loc:@bidirectional_rnn/bw/lstm_cell/bias
…
#bidirectional_rnn/bw/lstm_cell/bias
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *6
_class,
*(loc:@bidirectional_rnn/bw/lstm_cell/bias*
	container *
shape:А
Ч
*bidirectional_rnn/bw/lstm_cell/bias/AssignAssign#bidirectional_rnn/bw/lstm_cell/bias5bidirectional_rnn/bw/lstm_cell/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*6
_class,
*(loc:@bidirectional_rnn/bw/lstm_cell/bias

(bidirectional_rnn/bw/lstm_cell/bias/readIdentity#bidirectional_rnn/bw/lstm_cell/bias*
T0*
_output_shapes	
:А
Ю
3bidirectional_rnn/bw/bw/while/lstm_cell/concat/axisConst'^bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Т
.bidirectional_rnn/bw/bw/while/lstm_cell/concatConcatV2/bidirectional_rnn/bw/bw/while/TensorArrayReadV3(bidirectional_rnn/bw/bw/while/Identity_43bidirectional_rnn/bw/bw/while/lstm_cell/concat/axis*

Tidx0*
T0*
N*(
_output_shapes
:€€€€€€€€€А	
ч
.bidirectional_rnn/bw/bw/while/lstm_cell/MatMulMatMul.bidirectional_rnn/bw/bw/while/lstm_cell/concat4bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter*
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
transpose_b( 
€
4bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/EnterEnter*bidirectional_rnn/bw/lstm_cell/kernel/read*
parallel_iterations * 
_output_shapes
:
А	А*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
л
/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAddBiasAdd.bidirectional_rnn/bw/bw/while/lstm_cell/MatMul5bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А
щ
5bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/EnterEnter(bidirectional_rnn/bw/lstm_cell/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:А*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context
Ш
-bidirectional_rnn/bw/bw/while/lstm_cell/ConstConst'^bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ґ
7bidirectional_rnn/bw/bw/while/lstm_cell/split/split_dimConst'^bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
†
-bidirectional_rnn/bw/bw/while/lstm_cell/splitSplit7bidirectional_rnn/bw/bw/while/lstm_cell/split/split_dim/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd*d
_output_shapesR
P:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А:€€€€€€€€€А*
	num_split*
T0
Ы
-bidirectional_rnn/bw/bw/while/lstm_cell/add/yConst'^bidirectional_rnn/bw/bw/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *  А?
≈
+bidirectional_rnn/bw/bw/while/lstm_cell/addAdd/bidirectional_rnn/bw/bw/while/lstm_cell/split:2-bidirectional_rnn/bw/bw/while/lstm_cell/add/y*
T0*(
_output_shapes
:€€€€€€€€€А
Ъ
/bidirectional_rnn/bw/bw/while/lstm_cell/SigmoidSigmoid+bidirectional_rnn/bw/bw/while/lstm_cell/add*
T0*(
_output_shapes
:€€€€€€€€€А
ј
+bidirectional_rnn/bw/bw/while/lstm_cell/mulMul/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid(bidirectional_rnn/bw/bw/while/Identity_3*
T0*(
_output_shapes
:€€€€€€€€€А
Ю
1bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_1Sigmoid-bidirectional_rnn/bw/bw/while/lstm_cell/split*
T0*(
_output_shapes
:€€€€€€€€€А
Ш
,bidirectional_rnn/bw/bw/while/lstm_cell/TanhTanh/bidirectional_rnn/bw/bw/while/lstm_cell/split:1*
T0*(
_output_shapes
:€€€€€€€€€А
»
-bidirectional_rnn/bw/bw/while/lstm_cell/mul_1Mul1bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_1,bidirectional_rnn/bw/bw/while/lstm_cell/Tanh*(
_output_shapes
:€€€€€€€€€А*
T0
√
-bidirectional_rnn/bw/bw/while/lstm_cell/add_1Add+bidirectional_rnn/bw/bw/while/lstm_cell/mul-bidirectional_rnn/bw/bw/while/lstm_cell/mul_1*(
_output_shapes
:€€€€€€€€€А*
T0
†
1bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_2Sigmoid/bidirectional_rnn/bw/bw/while/lstm_cell/split:3*
T0*(
_output_shapes
:€€€€€€€€€А
Ш
.bidirectional_rnn/bw/bw/while/lstm_cell/Tanh_1Tanh-bidirectional_rnn/bw/bw/while/lstm_cell/add_1*(
_output_shapes
:€€€€€€€€€А*
T0
 
-bidirectional_rnn/bw/bw/while/lstm_cell/mul_2Mul1bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_2.bidirectional_rnn/bw/bw/while/lstm_cell/Tanh_1*
T0*(
_output_shapes
:€€€€€€€€€А
Ж
Abidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Gbidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/Enter(bidirectional_rnn/bw/bw/while/Identity_1-bidirectional_rnn/bw/bw/while/lstm_cell/mul_2(bidirectional_rnn/bw/bw/while/Identity_2*
T0*@
_class6
42loc:@bidirectional_rnn/bw/bw/while/lstm_cell/mul_2*
_output_shapes
: 
«
Gbidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter#bidirectional_rnn/bw/bw/TensorArray*
is_constant(*;

frame_name-+bidirectional_rnn/bw/bw/while/while_context*
_output_shapes
:*
T0*@
_class6
42loc:@bidirectional_rnn/bw/bw/while/lstm_cell/mul_2*
parallel_iterations 
Р
%bidirectional_rnn/bw/bw/while/add_1/yConst'^bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ь
#bidirectional_rnn/bw/bw/while/add_1Add(bidirectional_rnn/bw/bw/while/Identity_1%bidirectional_rnn/bw/bw/while/add_1/y*
_output_shapes
: *
T0
А
+bidirectional_rnn/bw/bw/while/NextIterationNextIteration!bidirectional_rnn/bw/bw/while/add*
T0*
_output_shapes
: 
Д
-bidirectional_rnn/bw/bw/while/NextIteration_1NextIteration#bidirectional_rnn/bw/bw/while/add_1*
_output_shapes
: *
T0
Ґ
-bidirectional_rnn/bw/bw/while/NextIteration_2NextIterationAbidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
†
-bidirectional_rnn/bw/bw/while/NextIteration_3NextIteration-bidirectional_rnn/bw/bw/while/lstm_cell/add_1*(
_output_shapes
:€€€€€€€€€А*
T0
†
-bidirectional_rnn/bw/bw/while/NextIteration_4NextIteration-bidirectional_rnn/bw/bw/while/lstm_cell/mul_2*(
_output_shapes
:€€€€€€€€€А*
T0
q
"bidirectional_rnn/bw/bw/while/ExitExit$bidirectional_rnn/bw/bw/while/Switch*
T0*
_output_shapes
: 
u
$bidirectional_rnn/bw/bw/while/Exit_1Exit&bidirectional_rnn/bw/bw/while/Switch_1*
T0*
_output_shapes
: 
u
$bidirectional_rnn/bw/bw/while/Exit_2Exit&bidirectional_rnn/bw/bw/while/Switch_2*
T0*
_output_shapes
: 
З
$bidirectional_rnn/bw/bw/while/Exit_3Exit&bidirectional_rnn/bw/bw/while/Switch_3*
T0*(
_output_shapes
:€€€€€€€€€А
З
$bidirectional_rnn/bw/bw/while/Exit_4Exit&bidirectional_rnn/bw/bw/while/Switch_4*
T0*(
_output_shapes
:€€€€€€€€€А
к
:bidirectional_rnn/bw/bw/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3#bidirectional_rnn/bw/bw/TensorArray$bidirectional_rnn/bw/bw/while/Exit_2*6
_class,
*(loc:@bidirectional_rnn/bw/bw/TensorArray*
_output_shapes
: 
Ѓ
4bidirectional_rnn/bw/bw/TensorArrayStack/range/startConst*
value	B : *6
_class,
*(loc:@bidirectional_rnn/bw/bw/TensorArray*
dtype0*
_output_shapes
: 
Ѓ
4bidirectional_rnn/bw/bw/TensorArrayStack/range/deltaConst*
value	B :*6
_class,
*(loc:@bidirectional_rnn/bw/bw/TensorArray*
dtype0*
_output_shapes
: 
»
.bidirectional_rnn/bw/bw/TensorArrayStack/rangeRange4bidirectional_rnn/bw/bw/TensorArrayStack/range/start:bidirectional_rnn/bw/bw/TensorArrayStack/TensorArraySizeV34bidirectional_rnn/bw/bw/TensorArrayStack/range/delta*6
_class,
*(loc:@bidirectional_rnn/bw/bw/TensorArray*#
_output_shapes
:€€€€€€€€€*

Tidx0
и
<bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3#bidirectional_rnn/bw/bw/TensorArray.bidirectional_rnn/bw/bw/TensorArrayStack/range$bidirectional_rnn/bw/bw/while/Exit_2*%
element_shape:€€€€€€€€€А*6
_class,
*(loc:@bidirectional_rnn/bw/bw/TensorArray*
dtype0*,
_output_shapes
:6€€€€€€€€€А
j
bidirectional_rnn/bw/bw/Const_1Const*
valueB:А*
dtype0*
_output_shapes
:
`
bidirectional_rnn/bw/bw/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
g
%bidirectional_rnn/bw/bw/range_1/startConst*
value	B :*
dtype0*
_output_shapes
: 
g
%bidirectional_rnn/bw/bw/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Њ
bidirectional_rnn/bw/bw/range_1Range%bidirectional_rnn/bw/bw/range_1/startbidirectional_rnn/bw/bw/Rank_1%bidirectional_rnn/bw/bw/range_1/delta*
_output_shapes
:*

Tidx0
z
)bidirectional_rnn/bw/bw/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
g
%bidirectional_rnn/bw/bw/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ў
 bidirectional_rnn/bw/bw/concat_2ConcatV2)bidirectional_rnn/bw/bw/concat_2/values_0bidirectional_rnn/bw/bw/range_1%bidirectional_rnn/bw/bw/concat_2/axis*
N*
_output_shapes
:*

Tidx0*
T0
‘
#bidirectional_rnn/bw/bw/transpose_1	Transpose<bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3 bidirectional_rnn/bw/bw/concat_2*
T0*,
_output_shapes
:€€€€€€€€€6А*
Tperm0
X
ReverseV2/axisConst*
valueB:*
dtype0*
_output_shapes
:
О
	ReverseV2	ReverseV2#bidirectional_rnn/bw/bw/transpose_1ReverseV2/axis*

Tidx0*
T0*,
_output_shapes
:€€€€€€€€€6А
M
concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ы
concatConcatV2#bidirectional_rnn/fw/fw/transpose_1	ReverseV2concat/axis*

Tidx0*
T0*
N*,
_output_shapes
:€€€€€€€€€6А
Я
-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:
С
+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *IvЊ*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
С
+dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *Iv>*
_class
loc:@dense/kernel
ж
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@dense/kernel*
seed2 *
dtype0*
_output_shapes
:	А*

seed 
ќ
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*
_class
loc:@dense/kernel
б
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	А
”
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	А
£
dense/kernel
VariableV2*
dtype0*
_output_shapes
:	А*
shared_name *
_class
loc:@dense/kernel*
	container *
shape:	А
»
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А*
use_locking(
v
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	А
И
dense/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
Х

dense/bias
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@dense/bias*
	container 
≤
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:
k
dense/bias/readIdentity
dense/bias*
T0*
_class
loc:@dense/bias*
_output_shapes
:
^
dense/Tensordot/axesConst*
dtype0*
_output_shapes
:*
valueB:
e
dense/Tensordot/freeConst*
dtype0*
_output_shapes
:*
valueB"       
[
dense/Tensordot/ShapeShapeconcat*
T0*
out_type0*
_output_shapes
:
_
dense/Tensordot/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Є
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shapedense/Tensordot/freedense/Tensordot/GatherV2/axis*
Tparams0*
_output_shapes
:*
Taxis0*
Tindices0
a
dense/Tensordot/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Љ
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shapedense/Tensordot/axesdense/Tensordot/GatherV2_1/axis*
Tindices0*
Tparams0*
_output_shapes
:*
Taxis0
_
dense/Tensordot/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Л
dense/Tensordot/ProdProddense/Tensordot/GatherV2dense/Tensordot/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
a
dense/Tensordot/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
С
dense/Tensordot/Prod_1Proddense/Tensordot/GatherV2_1dense/Tensordot/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
]
dense/Tensordot/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
•
dense/Tensordot/concatConcatV2dense/Tensordot/freedense/Tensordot/axesdense/Tensordot/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Е
dense/Tensordot/stackPackdense/Tensordot/Proddense/Tensordot/Prod_1*
T0*

axis *
N*
_output_shapes
:
К
dense/Tensordot/transpose	Transposeconcatdense/Tensordot/concat*
T0*,
_output_shapes
:€€€€€€€€€6А*
Tperm0
Э
dense/Tensordot/ReshapeReshapedense/Tensordot/transposedense/Tensordot/stack*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
q
 dense/Tensordot/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
Ф
dense/Tensordot/transpose_1	Transposedense/kernel/read dense/Tensordot/transpose_1/perm*
T0*
_output_shapes
:	А*
Tperm0
p
dense/Tensordot/Reshape_1/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
Ъ
dense/Tensordot/Reshape_1Reshapedense/Tensordot/transpose_1dense/Tensordot/Reshape_1/shape*
T0*
Tshape0*
_output_shapes
:	А
ђ
dense/Tensordot/MatMulMatMuldense/Tensordot/Reshapedense/Tensordot/Reshape_1*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b( *
T0
a
dense/Tensordot/Const_2Const*
dtype0*
_output_shapes
:*
valueB:
_
dense/Tensordot/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
∞
dense/Tensordot/concat_1ConcatV2dense/Tensordot/GatherV2dense/Tensordot/Const_2dense/Tensordot/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
Р
dense/TensordotReshapedense/Tensordot/MatMuldense/Tensordot/concat_1*
T0*
Tshape0*+
_output_shapes
:€€€€€€€€€6
З
dense/BiasAddBiasAdddense/Tensordotdense/bias/read*
T0*
data_formatNHWC*+
_output_shapes
:€€€€€€€€€6
`
Reshape_1/shapeConst*
valueB"€€€€6   *
dtype0*
_output_shapes
:
t
	Reshape_1Reshapedense/BiasAddReshape_1/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€6
O
SigmoidSigmoid	Reshape_1*'
_output_shapes
:€€€€€€€€€6*
T0
I
RoundRoundSigmoid*
T0*'
_output_shapes
:€€€€€€€€€6
K
outputIdentityRound*
T0*'
_output_shapes
:€€€€€€€€€6
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
Т
save/SaveV2/tensor_namesConst*≈
valueїBЄB#bidirectional_rnn/bw/lstm_cell/biasB%bidirectional_rnn/bw/lstm_cell/kernelB#bidirectional_rnn/fw/lstm_cell/biasB%bidirectional_rnn/fw/lstm_cell/kernelB
dense/biasBdense/kernelBmodel/conv2d/biasBmodel/conv2d/kernelBmodel/conv2d_1/biasBmodel/conv2d_1/kernelBmodel/conv2d_2/biasBmodel/conv2d_2/kernelBmodel/conv2d_3/biasBmodel/conv2d_3/kernelBmodel/conv2d_4/biasBmodel/conv2d_4/kernelBmodel/dense/biasBmodel/dense/kernel*
dtype0*
_output_shapes
:
З
save/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ђ
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices#bidirectional_rnn/bw/lstm_cell/bias%bidirectional_rnn/bw/lstm_cell/kernel#bidirectional_rnn/fw/lstm_cell/bias%bidirectional_rnn/fw/lstm_cell/kernel
dense/biasdense/kernelmodel/conv2d/biasmodel/conv2d/kernelmodel/conv2d_1/biasmodel/conv2d_1/kernelmodel/conv2d_2/biasmodel/conv2d_2/kernelmodel/conv2d_3/biasmodel/conv2d_3/kernelmodel/conv2d_4/biasmodel/conv2d_4/kernelmodel/dense/biasmodel/dense/kernel* 
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
Х
save/RestoreV2/tensor_namesConst*≈
valueїBЄB#bidirectional_rnn/bw/lstm_cell/biasB%bidirectional_rnn/bw/lstm_cell/kernelB#bidirectional_rnn/fw/lstm_cell/biasB%bidirectional_rnn/fw/lstm_cell/kernelB
dense/biasBdense/kernelBmodel/conv2d/biasBmodel/conv2d/kernelBmodel/conv2d_1/biasBmodel/conv2d_1/kernelBmodel/conv2d_2/biasBmodel/conv2d_2/kernelBmodel/conv2d_3/biasBmodel/conv2d_3/kernelBmodel/conv2d_4/biasBmodel/conv2d_4/kernelBmodel/dense/biasBmodel/dense/kernel*
dtype0*
_output_shapes
:
К
save/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B 
е
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices* 
dtypes
2*\
_output_shapesJ
H::::::::::::::::::
—
save/AssignAssign#bidirectional_rnn/bw/lstm_cell/biassave/RestoreV2*
use_locking(*
T0*6
_class,
*(loc:@bidirectional_rnn/bw/lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
ё
save/Assign_1Assign%bidirectional_rnn/bw/lstm_cell/kernelsave/RestoreV2:1*
T0*8
_class.
,*loc:@bidirectional_rnn/bw/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
А	А*
use_locking(
’
save/Assign_2Assign#bidirectional_rnn/fw/lstm_cell/biassave/RestoreV2:2*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*6
_class,
*(loc:@bidirectional_rnn/fw/lstm_cell/bias
ё
save/Assign_3Assign%bidirectional_rnn/fw/lstm_cell/kernelsave/RestoreV2:3*
T0*8
_class.
,*loc:@bidirectional_rnn/fw/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
А	А*
use_locking(
Ґ
save/Assign_4Assign
dense/biassave/RestoreV2:4*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:
Ђ
save/Assign_5Assigndense/kernelsave/RestoreV2:5*
validate_shape(*
_output_shapes
:	А*
use_locking(*
T0*
_class
loc:@dense/kernel
±
save/Assign_6Assignmodel/conv2d/biassave/RestoreV2:6*
T0*$
_class
loc:@model/conv2d/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
Ѕ
save/Assign_7Assignmodel/conv2d/kernelsave/RestoreV2:7*
use_locking(*
T0*&
_class
loc:@model/conv2d/kernel*
validate_shape(*'
_output_shapes
:А
µ
save/Assign_8Assignmodel/conv2d_1/biassave/RestoreV2:8*
T0*&
_class
loc:@model/conv2d_1/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
∆
save/Assign_9Assignmodel/conv2d_1/kernelsave/RestoreV2:9*
T0*(
_class
loc:@model/conv2d_1/kernel*
validate_shape(*(
_output_shapes
:АА*
use_locking(
Ј
save/Assign_10Assignmodel/conv2d_2/biassave/RestoreV2:10*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*&
_class
loc:@model/conv2d_2/bias
»
save/Assign_11Assignmodel/conv2d_2/kernelsave/RestoreV2:11*
use_locking(*
T0*(
_class
loc:@model/conv2d_2/kernel*
validate_shape(*(
_output_shapes
:АА
Ј
save/Assign_12Assignmodel/conv2d_3/biassave/RestoreV2:12*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*&
_class
loc:@model/conv2d_3/bias
»
save/Assign_13Assignmodel/conv2d_3/kernelsave/RestoreV2:13*
T0*(
_class
loc:@model/conv2d_3/kernel*
validate_shape(*(
_output_shapes
:АА*
use_locking(
Ј
save/Assign_14Assignmodel/conv2d_4/biassave/RestoreV2:14*
use_locking(*
T0*&
_class
loc:@model/conv2d_4/bias*
validate_shape(*
_output_shapes	
:А
»
save/Assign_15Assignmodel/conv2d_4/kernelsave/RestoreV2:15*
use_locking(*
T0*(
_class
loc:@model/conv2d_4/kernel*
validate_shape(*(
_output_shapes
:АА
±
save/Assign_16Assignmodel/dense/biassave/RestoreV2:16*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*#
_class
loc:@model/dense/bias
Ї
save/Assign_17Assignmodel/dense/kernelsave/RestoreV2:17*
use_locking(*
T0*%
_class
loc:@model/dense/kernel*
validate_shape(* 
_output_shapes
:
А`А
Њ
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
[
save_1/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
shape: *
dtype0*
_output_shapes
: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
dtype0*
_output_shapes
: *
shape: 
Ж
save_1/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_c436b2fac244427b85ae2b65504bc6b8/part
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 
Е
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
Ф
save_1/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*≈
valueїBЄB#bidirectional_rnn/bw/lstm_cell/biasB%bidirectional_rnn/bw/lstm_cell/kernelB#bidirectional_rnn/fw/lstm_cell/biasB%bidirectional_rnn/fw/lstm_cell/kernelB
dense/biasBdense/kernelBmodel/conv2d/biasBmodel/conv2d/kernelBmodel/conv2d_1/biasBmodel/conv2d_1/kernelBmodel/conv2d_2/biasBmodel/conv2d_2/kernelBmodel/conv2d_3/biasBmodel/conv2d_3/kernelBmodel/conv2d_4/biasBmodel/conv2d_4/kernelBmodel/dense/biasBmodel/dense/kernel
Й
save_1/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
љ
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices#bidirectional_rnn/bw/lstm_cell/bias%bidirectional_rnn/bw/lstm_cell/kernel#bidirectional_rnn/fw/lstm_cell/bias%bidirectional_rnn/fw/lstm_cell/kernel
dense/biasdense/kernelmodel/conv2d/biasmodel/conv2d/kernelmodel/conv2d_1/biasmodel/conv2d_1/kernelmodel/conv2d_2/biasmodel/conv2d_2/kernelmodel/conv2d_3/biasmodel/conv2d_3/kernelmodel/conv2d_4/biasmodel/conv2d_4/kernelmodel/dense/biasmodel/dense/kernel* 
dtypes
2
Щ
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
£
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
T0*

axis *
N*
_output_shapes
:
Г
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
В
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
T0*
_output_shapes
: 
Ч
save_1/RestoreV2/tensor_namesConst*≈
valueїBЄB#bidirectional_rnn/bw/lstm_cell/biasB%bidirectional_rnn/bw/lstm_cell/kernelB#bidirectional_rnn/fw/lstm_cell/biasB%bidirectional_rnn/fw/lstm_cell/kernelB
dense/biasBdense/kernelBmodel/conv2d/biasBmodel/conv2d/kernelBmodel/conv2d_1/biasBmodel/conv2d_1/kernelBmodel/conv2d_2/biasBmodel/conv2d_2/kernelBmodel/conv2d_3/biasBmodel/conv2d_3/kernelBmodel/conv2d_4/biasBmodel/conv2d_4/kernelBmodel/dense/biasBmodel/dense/kernel*
dtype0*
_output_shapes
:
М
!save_1/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*7
value.B,B B B B B B B B B B B B B B B B B B 
н
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
’
save_1/AssignAssign#bidirectional_rnn/bw/lstm_cell/biassave_1/RestoreV2*
use_locking(*
T0*6
_class,
*(loc:@bidirectional_rnn/bw/lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
в
save_1/Assign_1Assign%bidirectional_rnn/bw/lstm_cell/kernelsave_1/RestoreV2:1*
T0*8
_class.
,*loc:@bidirectional_rnn/bw/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
А	А*
use_locking(
ў
save_1/Assign_2Assign#bidirectional_rnn/fw/lstm_cell/biassave_1/RestoreV2:2*
use_locking(*
T0*6
_class,
*(loc:@bidirectional_rnn/fw/lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
в
save_1/Assign_3Assign%bidirectional_rnn/fw/lstm_cell/kernelsave_1/RestoreV2:3*
use_locking(*
T0*8
_class.
,*loc:@bidirectional_rnn/fw/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
А	А
¶
save_1/Assign_4Assign
dense/biassave_1/RestoreV2:4*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:
ѓ
save_1/Assign_5Assigndense/kernelsave_1/RestoreV2:5*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	А
µ
save_1/Assign_6Assignmodel/conv2d/biassave_1/RestoreV2:6*
T0*$
_class
loc:@model/conv2d/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
≈
save_1/Assign_7Assignmodel/conv2d/kernelsave_1/RestoreV2:7*
use_locking(*
T0*&
_class
loc:@model/conv2d/kernel*
validate_shape(*'
_output_shapes
:А
є
save_1/Assign_8Assignmodel/conv2d_1/biassave_1/RestoreV2:8*
use_locking(*
T0*&
_class
loc:@model/conv2d_1/bias*
validate_shape(*
_output_shapes	
:А
 
save_1/Assign_9Assignmodel/conv2d_1/kernelsave_1/RestoreV2:9*
use_locking(*
T0*(
_class
loc:@model/conv2d_1/kernel*
validate_shape(*(
_output_shapes
:АА
ї
save_1/Assign_10Assignmodel/conv2d_2/biassave_1/RestoreV2:10*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*&
_class
loc:@model/conv2d_2/bias
ћ
save_1/Assign_11Assignmodel/conv2d_2/kernelsave_1/RestoreV2:11*
T0*(
_class
loc:@model/conv2d_2/kernel*
validate_shape(*(
_output_shapes
:АА*
use_locking(
ї
save_1/Assign_12Assignmodel/conv2d_3/biassave_1/RestoreV2:12*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*&
_class
loc:@model/conv2d_3/bias
ћ
save_1/Assign_13Assignmodel/conv2d_3/kernelsave_1/RestoreV2:13*
use_locking(*
T0*(
_class
loc:@model/conv2d_3/kernel*
validate_shape(*(
_output_shapes
:АА
ї
save_1/Assign_14Assignmodel/conv2d_4/biassave_1/RestoreV2:14*
use_locking(*
T0*&
_class
loc:@model/conv2d_4/bias*
validate_shape(*
_output_shapes	
:А
ћ
save_1/Assign_15Assignmodel/conv2d_4/kernelsave_1/RestoreV2:15*
T0*(
_class
loc:@model/conv2d_4/kernel*
validate_shape(*(
_output_shapes
:АА*
use_locking(
µ
save_1/Assign_16Assignmodel/dense/biassave_1/RestoreV2:16*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*#
_class
loc:@model/dense/bias
Њ
save_1/Assign_17Assignmodel/dense/kernelsave_1/RestoreV2:17*
validate_shape(* 
_output_shapes
:
А`А*
use_locking(*
T0*%
_class
loc:@model/dense/kernel
ж
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard "B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"ы
	variablesнк
Г
model/conv2d/kernel:0model/conv2d/kernel/Assignmodel/conv2d/kernel/read:020model/conv2d/kernel/Initializer/random_uniform:08
r
model/conv2d/bias:0model/conv2d/bias/Assignmodel/conv2d/bias/read:02%model/conv2d/bias/Initializer/zeros:08
Л
model/conv2d_1/kernel:0model/conv2d_1/kernel/Assignmodel/conv2d_1/kernel/read:022model/conv2d_1/kernel/Initializer/random_uniform:08
z
model/conv2d_1/bias:0model/conv2d_1/bias/Assignmodel/conv2d_1/bias/read:02'model/conv2d_1/bias/Initializer/zeros:08
Л
model/conv2d_2/kernel:0model/conv2d_2/kernel/Assignmodel/conv2d_2/kernel/read:022model/conv2d_2/kernel/Initializer/random_uniform:08
z
model/conv2d_2/bias:0model/conv2d_2/bias/Assignmodel/conv2d_2/bias/read:02'model/conv2d_2/bias/Initializer/zeros:08
Л
model/conv2d_3/kernel:0model/conv2d_3/kernel/Assignmodel/conv2d_3/kernel/read:022model/conv2d_3/kernel/Initializer/random_uniform:08
z
model/conv2d_3/bias:0model/conv2d_3/bias/Assignmodel/conv2d_3/bias/read:02'model/conv2d_3/bias/Initializer/zeros:08
Л
model/conv2d_4/kernel:0model/conv2d_4/kernel/Assignmodel/conv2d_4/kernel/read:022model/conv2d_4/kernel/Initializer/random_uniform:08
z
model/conv2d_4/bias:0model/conv2d_4/bias/Assignmodel/conv2d_4/bias/read:02'model/conv2d_4/bias/Initializer/zeros:08

model/dense/kernel:0model/dense/kernel/Assignmodel/dense/kernel/read:02/model/dense/kernel/Initializer/random_uniform:08
n
model/dense/bias:0model/dense/bias/Assignmodel/dense/bias/read:02$model/dense/bias/Initializer/zeros:08
Ћ
'bidirectional_rnn/fw/lstm_cell/kernel:0,bidirectional_rnn/fw/lstm_cell/kernel/Assign,bidirectional_rnn/fw/lstm_cell/kernel/read:02Bbidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform:08
Ї
%bidirectional_rnn/fw/lstm_cell/bias:0*bidirectional_rnn/fw/lstm_cell/bias/Assign*bidirectional_rnn/fw/lstm_cell/bias/read:027bidirectional_rnn/fw/lstm_cell/bias/Initializer/zeros:08
Ћ
'bidirectional_rnn/bw/lstm_cell/kernel:0,bidirectional_rnn/bw/lstm_cell/kernel/Assign,bidirectional_rnn/bw/lstm_cell/kernel/read:02Bbidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform:08
Ї
%bidirectional_rnn/bw/lstm_cell/bias:0*bidirectional_rnn/bw/lstm_cell/bias/Assign*bidirectional_rnn/bw/lstm_cell/bias/read:027bidirectional_rnn/bw/lstm_cell/bias/Initializer/zeros:08
g
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:08
V
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:08"≈R
while_context≥R∞R
Х)
+bidirectional_rnn/fw/fw/while/while_context *(bidirectional_rnn/fw/fw/while/LoopCond:02%bidirectional_rnn/fw/fw/while/Merge:0:(bidirectional_rnn/fw/fw/while/Identity:0B$bidirectional_rnn/fw/fw/while/Exit:0B&bidirectional_rnn/fw/fw/while/Exit_1:0B&bidirectional_rnn/fw/fw/while/Exit_2:0B&bidirectional_rnn/fw/fw/while/Exit_3:0B&bidirectional_rnn/fw/fw/while/Exit_4:0J™$
!bidirectional_rnn/fw/fw/Minimum:0
%bidirectional_rnn/fw/fw/TensorArray:0
Tbidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
'bidirectional_rnn/fw/fw/TensorArray_1:0
)bidirectional_rnn/fw/fw/strided_slice_1:0
%bidirectional_rnn/fw/fw/while/Enter:0
'bidirectional_rnn/fw/fw/while/Enter_1:0
'bidirectional_rnn/fw/fw/while/Enter_2:0
'bidirectional_rnn/fw/fw/while/Enter_3:0
'bidirectional_rnn/fw/fw/while/Enter_4:0
$bidirectional_rnn/fw/fw/while/Exit:0
&bidirectional_rnn/fw/fw/while/Exit_1:0
&bidirectional_rnn/fw/fw/while/Exit_2:0
&bidirectional_rnn/fw/fw/while/Exit_3:0
&bidirectional_rnn/fw/fw/while/Exit_4:0
(bidirectional_rnn/fw/fw/while/Identity:0
*bidirectional_rnn/fw/fw/while/Identity_1:0
*bidirectional_rnn/fw/fw/while/Identity_2:0
*bidirectional_rnn/fw/fw/while/Identity_3:0
*bidirectional_rnn/fw/fw/while/Identity_4:0
*bidirectional_rnn/fw/fw/while/Less/Enter:0
$bidirectional_rnn/fw/fw/while/Less:0
,bidirectional_rnn/fw/fw/while/Less_1/Enter:0
&bidirectional_rnn/fw/fw/while/Less_1:0
*bidirectional_rnn/fw/fw/while/LogicalAnd:0
(bidirectional_rnn/fw/fw/while/LoopCond:0
%bidirectional_rnn/fw/fw/while/Merge:0
%bidirectional_rnn/fw/fw/while/Merge:1
'bidirectional_rnn/fw/fw/while/Merge_1:0
'bidirectional_rnn/fw/fw/while/Merge_1:1
'bidirectional_rnn/fw/fw/while/Merge_2:0
'bidirectional_rnn/fw/fw/while/Merge_2:1
'bidirectional_rnn/fw/fw/while/Merge_3:0
'bidirectional_rnn/fw/fw/while/Merge_3:1
'bidirectional_rnn/fw/fw/while/Merge_4:0
'bidirectional_rnn/fw/fw/while/Merge_4:1
-bidirectional_rnn/fw/fw/while/NextIteration:0
/bidirectional_rnn/fw/fw/while/NextIteration_1:0
/bidirectional_rnn/fw/fw/while/NextIteration_2:0
/bidirectional_rnn/fw/fw/while/NextIteration_3:0
/bidirectional_rnn/fw/fw/while/NextIteration_4:0
&bidirectional_rnn/fw/fw/while/Switch:0
&bidirectional_rnn/fw/fw/while/Switch:1
(bidirectional_rnn/fw/fw/while/Switch_1:0
(bidirectional_rnn/fw/fw/while/Switch_1:1
(bidirectional_rnn/fw/fw/while/Switch_2:0
(bidirectional_rnn/fw/fw/while/Switch_2:1
(bidirectional_rnn/fw/fw/while/Switch_3:0
(bidirectional_rnn/fw/fw/while/Switch_3:1
(bidirectional_rnn/fw/fw/while/Switch_4:0
(bidirectional_rnn/fw/fw/while/Switch_4:1
7bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter:0
9bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1:0
1bidirectional_rnn/fw/fw/while/TensorArrayReadV3:0
Ibidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
Cbidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3:0
%bidirectional_rnn/fw/fw/while/add/y:0
#bidirectional_rnn/fw/fw/while/add:0
'bidirectional_rnn/fw/fw/while/add_1/y:0
%bidirectional_rnn/fw/fw/while/add_1:0
7bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter:0
1bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd:0
/bidirectional_rnn/fw/fw/while/lstm_cell/Const:0
6bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter:0
0bidirectional_rnn/fw/fw/while/lstm_cell/MatMul:0
1bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid:0
3bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_1:0
3bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_2:0
.bidirectional_rnn/fw/fw/while/lstm_cell/Tanh:0
0bidirectional_rnn/fw/fw/while/lstm_cell/Tanh_1:0
/bidirectional_rnn/fw/fw/while/lstm_cell/add/y:0
-bidirectional_rnn/fw/fw/while/lstm_cell/add:0
/bidirectional_rnn/fw/fw/while/lstm_cell/add_1:0
5bidirectional_rnn/fw/fw/while/lstm_cell/concat/axis:0
0bidirectional_rnn/fw/fw/while/lstm_cell/concat:0
-bidirectional_rnn/fw/fw/while/lstm_cell/mul:0
/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1:0
/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2:0
9bidirectional_rnn/fw/fw/while/lstm_cell/split/split_dim:0
/bidirectional_rnn/fw/fw/while/lstm_cell/split:0
/bidirectional_rnn/fw/fw/while/lstm_cell/split:1
/bidirectional_rnn/fw/fw/while/lstm_cell/split:2
/bidirectional_rnn/fw/fw/while/lstm_cell/split:3
*bidirectional_rnn/fw/lstm_cell/bias/read:0
,bidirectional_rnn/fw/lstm_cell/kernel/read:0e
*bidirectional_rnn/fw/lstm_cell/bias/read:07bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter:0Q
!bidirectional_rnn/fw/fw/Minimum:0,bidirectional_rnn/fw/fw/while/Less_1/Enter:0b
'bidirectional_rnn/fw/fw/TensorArray_1:07bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter:0f
,bidirectional_rnn/fw/lstm_cell/kernel/read:06bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter:0W
)bidirectional_rnn/fw/fw/strided_slice_1:0*bidirectional_rnn/fw/fw/while/Less/Enter:0С
Tbidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:09bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1:0r
%bidirectional_rnn/fw/fw/TensorArray:0Ibidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0R%bidirectional_rnn/fw/fw/while/Enter:0R'bidirectional_rnn/fw/fw/while/Enter_1:0R'bidirectional_rnn/fw/fw/while/Enter_2:0R'bidirectional_rnn/fw/fw/while/Enter_3:0R'bidirectional_rnn/fw/fw/while/Enter_4:0Z)bidirectional_rnn/fw/fw/strided_slice_1:0
Х)
+bidirectional_rnn/bw/bw/while/while_context *(bidirectional_rnn/bw/bw/while/LoopCond:02%bidirectional_rnn/bw/bw/while/Merge:0:(bidirectional_rnn/bw/bw/while/Identity:0B$bidirectional_rnn/bw/bw/while/Exit:0B&bidirectional_rnn/bw/bw/while/Exit_1:0B&bidirectional_rnn/bw/bw/while/Exit_2:0B&bidirectional_rnn/bw/bw/while/Exit_3:0B&bidirectional_rnn/bw/bw/while/Exit_4:0J™$
!bidirectional_rnn/bw/bw/Minimum:0
%bidirectional_rnn/bw/bw/TensorArray:0
Tbidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
'bidirectional_rnn/bw/bw/TensorArray_1:0
)bidirectional_rnn/bw/bw/strided_slice_1:0
%bidirectional_rnn/bw/bw/while/Enter:0
'bidirectional_rnn/bw/bw/while/Enter_1:0
'bidirectional_rnn/bw/bw/while/Enter_2:0
'bidirectional_rnn/bw/bw/while/Enter_3:0
'bidirectional_rnn/bw/bw/while/Enter_4:0
$bidirectional_rnn/bw/bw/while/Exit:0
&bidirectional_rnn/bw/bw/while/Exit_1:0
&bidirectional_rnn/bw/bw/while/Exit_2:0
&bidirectional_rnn/bw/bw/while/Exit_3:0
&bidirectional_rnn/bw/bw/while/Exit_4:0
(bidirectional_rnn/bw/bw/while/Identity:0
*bidirectional_rnn/bw/bw/while/Identity_1:0
*bidirectional_rnn/bw/bw/while/Identity_2:0
*bidirectional_rnn/bw/bw/while/Identity_3:0
*bidirectional_rnn/bw/bw/while/Identity_4:0
*bidirectional_rnn/bw/bw/while/Less/Enter:0
$bidirectional_rnn/bw/bw/while/Less:0
,bidirectional_rnn/bw/bw/while/Less_1/Enter:0
&bidirectional_rnn/bw/bw/while/Less_1:0
*bidirectional_rnn/bw/bw/while/LogicalAnd:0
(bidirectional_rnn/bw/bw/while/LoopCond:0
%bidirectional_rnn/bw/bw/while/Merge:0
%bidirectional_rnn/bw/bw/while/Merge:1
'bidirectional_rnn/bw/bw/while/Merge_1:0
'bidirectional_rnn/bw/bw/while/Merge_1:1
'bidirectional_rnn/bw/bw/while/Merge_2:0
'bidirectional_rnn/bw/bw/while/Merge_2:1
'bidirectional_rnn/bw/bw/while/Merge_3:0
'bidirectional_rnn/bw/bw/while/Merge_3:1
'bidirectional_rnn/bw/bw/while/Merge_4:0
'bidirectional_rnn/bw/bw/while/Merge_4:1
-bidirectional_rnn/bw/bw/while/NextIteration:0
/bidirectional_rnn/bw/bw/while/NextIteration_1:0
/bidirectional_rnn/bw/bw/while/NextIteration_2:0
/bidirectional_rnn/bw/bw/while/NextIteration_3:0
/bidirectional_rnn/bw/bw/while/NextIteration_4:0
&bidirectional_rnn/bw/bw/while/Switch:0
&bidirectional_rnn/bw/bw/while/Switch:1
(bidirectional_rnn/bw/bw/while/Switch_1:0
(bidirectional_rnn/bw/bw/while/Switch_1:1
(bidirectional_rnn/bw/bw/while/Switch_2:0
(bidirectional_rnn/bw/bw/while/Switch_2:1
(bidirectional_rnn/bw/bw/while/Switch_3:0
(bidirectional_rnn/bw/bw/while/Switch_3:1
(bidirectional_rnn/bw/bw/while/Switch_4:0
(bidirectional_rnn/bw/bw/while/Switch_4:1
7bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter:0
9bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1:0
1bidirectional_rnn/bw/bw/while/TensorArrayReadV3:0
Ibidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
Cbidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3:0
%bidirectional_rnn/bw/bw/while/add/y:0
#bidirectional_rnn/bw/bw/while/add:0
'bidirectional_rnn/bw/bw/while/add_1/y:0
%bidirectional_rnn/bw/bw/while/add_1:0
7bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter:0
1bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd:0
/bidirectional_rnn/bw/bw/while/lstm_cell/Const:0
6bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter:0
0bidirectional_rnn/bw/bw/while/lstm_cell/MatMul:0
1bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid:0
3bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_1:0
3bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_2:0
.bidirectional_rnn/bw/bw/while/lstm_cell/Tanh:0
0bidirectional_rnn/bw/bw/while/lstm_cell/Tanh_1:0
/bidirectional_rnn/bw/bw/while/lstm_cell/add/y:0
-bidirectional_rnn/bw/bw/while/lstm_cell/add:0
/bidirectional_rnn/bw/bw/while/lstm_cell/add_1:0
5bidirectional_rnn/bw/bw/while/lstm_cell/concat/axis:0
0bidirectional_rnn/bw/bw/while/lstm_cell/concat:0
-bidirectional_rnn/bw/bw/while/lstm_cell/mul:0
/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1:0
/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2:0
9bidirectional_rnn/bw/bw/while/lstm_cell/split/split_dim:0
/bidirectional_rnn/bw/bw/while/lstm_cell/split:0
/bidirectional_rnn/bw/bw/while/lstm_cell/split:1
/bidirectional_rnn/bw/bw/while/lstm_cell/split:2
/bidirectional_rnn/bw/bw/while/lstm_cell/split:3
*bidirectional_rnn/bw/lstm_cell/bias/read:0
,bidirectional_rnn/bw/lstm_cell/kernel/read:0r
%bidirectional_rnn/bw/bw/TensorArray:0Ibidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0Q
!bidirectional_rnn/bw/bw/Minimum:0,bidirectional_rnn/bw/bw/while/Less_1/Enter:0b
'bidirectional_rnn/bw/bw/TensorArray_1:07bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter:0e
*bidirectional_rnn/bw/lstm_cell/bias/read:07bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter:0W
)bidirectional_rnn/bw/bw/strided_slice_1:0*bidirectional_rnn/bw/bw/while/Less/Enter:0С
Tbidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:09bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1:0f
,bidirectional_rnn/bw/lstm_cell/kernel/read:06bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter:0R%bidirectional_rnn/bw/bw/while/Enter:0R'bidirectional_rnn/bw/bw/while/Enter_1:0R'bidirectional_rnn/bw/bw/while/Enter_2:0R'bidirectional_rnn/bw/bw/while/Enter_3:0R'bidirectional_rnn/bw/bw/while/Enter_4:0Z)bidirectional_rnn/bw/bw/strided_slice_1:0"Е
trainable_variablesнк
Г
model/conv2d/kernel:0model/conv2d/kernel/Assignmodel/conv2d/kernel/read:020model/conv2d/kernel/Initializer/random_uniform:08
r
model/conv2d/bias:0model/conv2d/bias/Assignmodel/conv2d/bias/read:02%model/conv2d/bias/Initializer/zeros:08
Л
model/conv2d_1/kernel:0model/conv2d_1/kernel/Assignmodel/conv2d_1/kernel/read:022model/conv2d_1/kernel/Initializer/random_uniform:08
z
model/conv2d_1/bias:0model/conv2d_1/bias/Assignmodel/conv2d_1/bias/read:02'model/conv2d_1/bias/Initializer/zeros:08
Л
model/conv2d_2/kernel:0model/conv2d_2/kernel/Assignmodel/conv2d_2/kernel/read:022model/conv2d_2/kernel/Initializer/random_uniform:08
z
model/conv2d_2/bias:0model/conv2d_2/bias/Assignmodel/conv2d_2/bias/read:02'model/conv2d_2/bias/Initializer/zeros:08
Л
model/conv2d_3/kernel:0model/conv2d_3/kernel/Assignmodel/conv2d_3/kernel/read:022model/conv2d_3/kernel/Initializer/random_uniform:08
z
model/conv2d_3/bias:0model/conv2d_3/bias/Assignmodel/conv2d_3/bias/read:02'model/conv2d_3/bias/Initializer/zeros:08
Л
model/conv2d_4/kernel:0model/conv2d_4/kernel/Assignmodel/conv2d_4/kernel/read:022model/conv2d_4/kernel/Initializer/random_uniform:08
z
model/conv2d_4/bias:0model/conv2d_4/bias/Assignmodel/conv2d_4/bias/read:02'model/conv2d_4/bias/Initializer/zeros:08

model/dense/kernel:0model/dense/kernel/Assignmodel/dense/kernel/read:02/model/dense/kernel/Initializer/random_uniform:08
n
model/dense/bias:0model/dense/bias/Assignmodel/dense/bias/read:02$model/dense/bias/Initializer/zeros:08
Ћ
'bidirectional_rnn/fw/lstm_cell/kernel:0,bidirectional_rnn/fw/lstm_cell/kernel/Assign,bidirectional_rnn/fw/lstm_cell/kernel/read:02Bbidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform:08
Ї
%bidirectional_rnn/fw/lstm_cell/bias:0*bidirectional_rnn/fw/lstm_cell/bias/Assign*bidirectional_rnn/fw/lstm_cell/bias/read:027bidirectional_rnn/fw/lstm_cell/bias/Initializer/zeros:08
Ћ
'bidirectional_rnn/bw/lstm_cell/kernel:0,bidirectional_rnn/bw/lstm_cell/kernel/Assign,bidirectional_rnn/bw/lstm_cell/kernel/read:02Bbidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform:08
Ї
%bidirectional_rnn/bw/lstm_cell/bias:0*bidirectional_rnn/bw/lstm_cell/bias/Assign*bidirectional_rnn/bw/lstm_cell/bias/read:027bidirectional_rnn/bw/lstm_cell/bias/Initializer/zeros:08
g
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:08
V
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:08*Л
serving_defaultx
/
input&
input:0€€€€€€€€€d)
output
output:0€€€€€€€€€6tensorflow/serving/predict