��
�"�!
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
�
BatchToSpaceND

input"T
block_shape"Tblock_shape
crops"Tcrops
output"T"	
Ttype" 
Tblock_shapetype0:
2	"
Tcropstype0:
2	
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( ""
Ttype:
2	"
Tidxtype0:
2	
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
?
FloorMod
x"T
y"T
z"T"
Ttype:
2	
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
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
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
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
2	�
f
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx" 
Tidxtype0:
2
	
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
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
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
�
SpaceToBatchND

input"T
block_shape"Tblock_shape
paddings"	Tpaddings
output"T"	
Ttype" 
Tblock_shapetype0:
2	"
	Tpaddingstype0:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
G
Where

input"T	
index	"'
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.15.02unknown8��

global_step/Initializer/zerosConst*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
value	B	 R 
k
global_step
VariableV2*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
shape: 
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_class
loc:@global_step*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
�
%batched_one_hot_sequences_placeholderPlaceholder*4
_output_shapes"
 :������������������*
dtype0*)
shape :������������������
v
sequence_length_placeholderPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
�
set_padding_to_sentinel/ShapeShape%batched_one_hot_sequences_placeholder*
T0*
_output_shapes
::��
u
+set_padding_to_sentinel/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
w
-set_padding_to_sentinel/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
w
-set_padding_to_sentinel/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
%set_padding_to_sentinel/strided_sliceStridedSliceset_padding_to_sentinel/Shape+set_padding_to_sentinel/strided_slice/stack-set_padding_to_sentinel/strided_slice/stack_1-set_padding_to_sentinel/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
set_padding_to_sentinel/Shape_1Shape%batched_one_hot_sequences_placeholder*
T0*
_output_shapes
::��
w
-set_padding_to_sentinel/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
y
/set_padding_to_sentinel/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
y
/set_padding_to_sentinel/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
'set_padding_to_sentinel/strided_slice_1StridedSliceset_padding_to_sentinel/Shape_1-set_padding_to_sentinel/strided_slice_1/stack/set_padding_to_sentinel/strided_slice_1/stack_1/set_padding_to_sentinel/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
l
*set_padding_to_sentinel/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
n
,set_padding_to_sentinel/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :
�
*set_padding_to_sentinel/SequenceMask/RangeRange*set_padding_to_sentinel/SequenceMask/Const%set_padding_to_sentinel/strided_slice,set_padding_to_sentinel/SequenceMask/Const_1*#
_output_shapes
:���������
~
3set_padding_to_sentinel/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
/set_padding_to_sentinel/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholder3set_padding_to_sentinel/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
)set_padding_to_sentinel/SequenceMask/CastCast/set_padding_to_sentinel/SequenceMask/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
�
)set_padding_to_sentinel/SequenceMask/LessLess*set_padding_to_sentinel/SequenceMask/Range)set_padding_to_sentinel/SequenceMask/Cast*
T0*0
_output_shapes
:������������������
p
&set_padding_to_sentinel/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
�
"set_padding_to_sentinel/ExpandDims
ExpandDims)set_padding_to_sentinel/SequenceMask/Less&set_padding_to_sentinel/ExpandDims/dim*
T0
*4
_output_shapes"
 :������������������
j
(set_padding_to_sentinel/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :
j
(set_padding_to_sentinel/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
�
&set_padding_to_sentinel/Tile/multiplesPack(set_padding_to_sentinel/Tile/multiples/0(set_padding_to_sentinel/Tile/multiples/1'set_padding_to_sentinel/strided_slice_1*
N*
T0*
_output_shapes
:
�
set_padding_to_sentinel/TileTile"set_padding_to_sentinel/ExpandDims&set_padding_to_sentinel/Tile/multiples*
T0
*4
_output_shapes"
 :������������������
�
"set_padding_to_sentinel/zeros_like	ZerosLike%batched_one_hot_sequences_placeholder*
T0*4
_output_shapes"
 :������������������
�
set_padding_to_sentinel/addAddV2"set_padding_to_sentinel/zeros_likeConst*
T0*4
_output_shapes"
 :������������������
�
set_padding_to_sentinel/SelectSelectset_padding_to_sentinel/Tile%batched_one_hot_sequences_placeholderset_padding_to_sentinel/add*
T0*4
_output_shapes"
 :������������������
�
.conv1d/kernel/Initializer/random_uniform/shapeConst* 
_class
loc:@conv1d/kernel*
_output_shapes
:*
dtype0*!
valueB"	      
   
�
,conv1d/kernel/Initializer/random_uniform/minConst* 
_class
loc:@conv1d/kernel*
_output_shapes
: *
dtype0*
valueB
 *��
�
,conv1d/kernel/Initializer/random_uniform/maxConst* 
_class
loc:@conv1d/kernel*
_output_shapes
: *
dtype0*
valueB
 *�>
�
6conv1d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv1d/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@conv1d/kernel*"
_output_shapes
:	
*
dtype0
�
,conv1d/kernel/Initializer/random_uniform/subSub,conv1d/kernel/Initializer/random_uniform/max,conv1d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv1d/kernel*
_output_shapes
: 
�
,conv1d/kernel/Initializer/random_uniform/mulMul6conv1d/kernel/Initializer/random_uniform/RandomUniform,conv1d/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@conv1d/kernel*"
_output_shapes
:	

�
(conv1d/kernel/Initializer/random_uniformAddV2,conv1d/kernel/Initializer/random_uniform/mul,conv1d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv1d/kernel*"
_output_shapes
:	

�
conv1d/kernel
VariableV2* 
_class
loc:@conv1d/kernel*"
_output_shapes
:	
*
dtype0*
shape:	

�
conv1d/kernel/AssignAssignconv1d/kernel(conv1d/kernel/Initializer/random_uniform*
T0* 
_class
loc:@conv1d/kernel*"
_output_shapes
:	

|
conv1d/kernel/readIdentityconv1d/kernel*
T0* 
_class
loc:@conv1d/kernel*"
_output_shapes
:	

�
conv1d/bias/Initializer/zerosConst*
_class
loc:@conv1d/bias*
_output_shapes
:
*
dtype0*
valueB
*    
s
conv1d/bias
VariableV2*
_class
loc:@conv1d/bias*
_output_shapes
:
*
dtype0*
shape:

�
conv1d/bias/AssignAssignconv1d/biasconv1d/bias/Initializer/zeros*
T0*
_class
loc:@conv1d/bias*
_output_shapes
:

n
conv1d/bias/readIdentityconv1d/bias*
T0*
_class
loc:@conv1d/bias*
_output_shapes
:

g
conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
conv1d/Conv1D/ExpandDims
ExpandDimsset_padding_to_sentinel/Selectconv1d/Conv1D/ExpandDims/dim*
T0*8
_output_shapes&
$:"������������������
`
conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
conv1d/Conv1D/ExpandDims_1
ExpandDimsconv1d/kernel/readconv1d/Conv1D/ExpandDims_1/dim*
T0*&
_output_shapes
:	

�
conv1d/Conv1DConv2Dconv1d/Conv1D/ExpandDimsconv1d/Conv1D/ExpandDims_1*
T0*8
_output_shapes&
$:"������������������
*
paddingSAME*
strides

�
conv1d/Conv1D/SqueezeSqueezeconv1d/Conv1D*
T0*4
_output_shapes"
 :������������������
*
squeeze_dims

���������
�
conv1d/BiasAddBiasAddconv1d/Conv1D/Squeezeconv1d/bias/read*
T0*4
_output_shapes"
 :������������������

L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
k
set_padding_to_sentinel_1/ShapeShapeconv1d/BiasAdd*
T0*
_output_shapes
::��
w
-set_padding_to_sentinel_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
y
/set_padding_to_sentinel_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
y
/set_padding_to_sentinel_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
'set_padding_to_sentinel_1/strided_sliceStridedSliceset_padding_to_sentinel_1/Shape-set_padding_to_sentinel_1/strided_slice/stack/set_padding_to_sentinel_1/strided_slice/stack_1/set_padding_to_sentinel_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
m
!set_padding_to_sentinel_1/Shape_1Shapeconv1d/BiasAdd*
T0*
_output_shapes
::��
y
/set_padding_to_sentinel_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
{
1set_padding_to_sentinel_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
{
1set_padding_to_sentinel_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
)set_padding_to_sentinel_1/strided_slice_1StridedSlice!set_padding_to_sentinel_1/Shape_1/set_padding_to_sentinel_1/strided_slice_1/stack1set_padding_to_sentinel_1/strided_slice_1/stack_11set_padding_to_sentinel_1/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
n
,set_padding_to_sentinel_1/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
p
.set_padding_to_sentinel_1/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :
�
,set_padding_to_sentinel_1/SequenceMask/RangeRange,set_padding_to_sentinel_1/SequenceMask/Const'set_padding_to_sentinel_1/strided_slice.set_padding_to_sentinel_1/SequenceMask/Const_1*#
_output_shapes
:���������
�
5set_padding_to_sentinel_1/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
1set_padding_to_sentinel_1/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholder5set_padding_to_sentinel_1/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
+set_padding_to_sentinel_1/SequenceMask/CastCast1set_padding_to_sentinel_1/SequenceMask/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
�
+set_padding_to_sentinel_1/SequenceMask/LessLess,set_padding_to_sentinel_1/SequenceMask/Range+set_padding_to_sentinel_1/SequenceMask/Cast*
T0*0
_output_shapes
:������������������
r
(set_padding_to_sentinel_1/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
�
$set_padding_to_sentinel_1/ExpandDims
ExpandDims+set_padding_to_sentinel_1/SequenceMask/Less(set_padding_to_sentinel_1/ExpandDims/dim*
T0
*4
_output_shapes"
 :������������������
l
*set_padding_to_sentinel_1/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :
l
*set_padding_to_sentinel_1/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
�
(set_padding_to_sentinel_1/Tile/multiplesPack*set_padding_to_sentinel_1/Tile/multiples/0*set_padding_to_sentinel_1/Tile/multiples/1)set_padding_to_sentinel_1/strided_slice_1*
N*
T0*
_output_shapes
:
�
set_padding_to_sentinel_1/TileTile$set_padding_to_sentinel_1/ExpandDims(set_padding_to_sentinel_1/Tile/multiples*
T0
*4
_output_shapes"
 :������������������

�
$set_padding_to_sentinel_1/zeros_like	ZerosLikeconv1d/BiasAdd*
T0*4
_output_shapes"
 :������������������

�
set_padding_to_sentinel_1/addAddV2$set_padding_to_sentinel_1/zeros_likeConst_1*
T0*4
_output_shapes"
 :������������������

�
 set_padding_to_sentinel_1/SelectSelectset_padding_to_sentinel_1/Tileconv1d/BiasAddset_padding_to_sentinel_1/add*
T0*4
_output_shapes"
 :������������������

�
;residual_block_0/batch_normalization/gamma/Initializer/onesConst*=
_class3
1/loc:@residual_block_0/batch_normalization/gamma*
_output_shapes
:
*
dtype0*
valueB
*  �?
�
*residual_block_0/batch_normalization/gamma
VariableV2*=
_class3
1/loc:@residual_block_0/batch_normalization/gamma*
_output_shapes
:
*
dtype0*
shape:

�
1residual_block_0/batch_normalization/gamma/AssignAssign*residual_block_0/batch_normalization/gamma;residual_block_0/batch_normalization/gamma/Initializer/ones*
T0*=
_class3
1/loc:@residual_block_0/batch_normalization/gamma*
_output_shapes
:

�
/residual_block_0/batch_normalization/gamma/readIdentity*residual_block_0/batch_normalization/gamma*
T0*=
_class3
1/loc:@residual_block_0/batch_normalization/gamma*
_output_shapes
:

�
;residual_block_0/batch_normalization/beta/Initializer/zerosConst*<
_class2
0.loc:@residual_block_0/batch_normalization/beta*
_output_shapes
:
*
dtype0*
valueB
*    
�
)residual_block_0/batch_normalization/beta
VariableV2*<
_class2
0.loc:@residual_block_0/batch_normalization/beta*
_output_shapes
:
*
dtype0*
shape:

�
0residual_block_0/batch_normalization/beta/AssignAssign)residual_block_0/batch_normalization/beta;residual_block_0/batch_normalization/beta/Initializer/zeros*
T0*<
_class2
0.loc:@residual_block_0/batch_normalization/beta*
_output_shapes
:

�
.residual_block_0/batch_normalization/beta/readIdentity)residual_block_0/batch_normalization/beta*
T0*<
_class2
0.loc:@residual_block_0/batch_normalization/beta*
_output_shapes
:

�
Bresidual_block_0/batch_normalization/moving_mean/Initializer/zerosConst*C
_class9
75loc:@residual_block_0/batch_normalization/moving_mean*
_output_shapes
:
*
dtype0*
valueB
*    
�
0residual_block_0/batch_normalization/moving_mean
VariableV2*C
_class9
75loc:@residual_block_0/batch_normalization/moving_mean*
_output_shapes
:
*
dtype0*
shape:

�
7residual_block_0/batch_normalization/moving_mean/AssignAssign0residual_block_0/batch_normalization/moving_meanBresidual_block_0/batch_normalization/moving_mean/Initializer/zeros*
T0*C
_class9
75loc:@residual_block_0/batch_normalization/moving_mean*
_output_shapes
:

�
5residual_block_0/batch_normalization/moving_mean/readIdentity0residual_block_0/batch_normalization/moving_mean*
T0*C
_class9
75loc:@residual_block_0/batch_normalization/moving_mean*
_output_shapes
:

�
Eresidual_block_0/batch_normalization/moving_variance/Initializer/onesConst*G
_class=
;9loc:@residual_block_0/batch_normalization/moving_variance*
_output_shapes
:
*
dtype0*
valueB
*  �?
�
4residual_block_0/batch_normalization/moving_variance
VariableV2*G
_class=
;9loc:@residual_block_0/batch_normalization/moving_variance*
_output_shapes
:
*
dtype0*
shape:

�
;residual_block_0/batch_normalization/moving_variance/AssignAssign4residual_block_0/batch_normalization/moving_varianceEresidual_block_0/batch_normalization/moving_variance/Initializer/ones*
T0*G
_class=
;9loc:@residual_block_0/batch_normalization/moving_variance*
_output_shapes
:

�
9residual_block_0/batch_normalization/moving_variance/readIdentity4residual_block_0/batch_normalization/moving_variance*
T0*G
_class=
;9loc:@residual_block_0/batch_normalization/moving_variance*
_output_shapes
:

y
4residual_block_0/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:
�
2residual_block_0/batch_normalization/batchnorm/addAddV29residual_block_0/batch_normalization/moving_variance/read4residual_block_0/batch_normalization/batchnorm/add/y*
T0*
_output_shapes
:

�
4residual_block_0/batch_normalization/batchnorm/RsqrtRsqrt2residual_block_0/batch_normalization/batchnorm/add*
T0*
_output_shapes
:

�
2residual_block_0/batch_normalization/batchnorm/mulMul4residual_block_0/batch_normalization/batchnorm/Rsqrt/residual_block_0/batch_normalization/gamma/read*
T0*
_output_shapes
:

�
4residual_block_0/batch_normalization/batchnorm/mul_1Mul set_padding_to_sentinel_1/Select2residual_block_0/batch_normalization/batchnorm/mul*
T0*4
_output_shapes"
 :������������������

�
4residual_block_0/batch_normalization/batchnorm/mul_2Mul5residual_block_0/batch_normalization/moving_mean/read2residual_block_0/batch_normalization/batchnorm/mul*
T0*
_output_shapes
:

�
2residual_block_0/batch_normalization/batchnorm/subSub.residual_block_0/batch_normalization/beta/read4residual_block_0/batch_normalization/batchnorm/mul_2*
T0*
_output_shapes
:

�
4residual_block_0/batch_normalization/batchnorm/add_1AddV24residual_block_0/batch_normalization/batchnorm/mul_12residual_block_0/batch_normalization/batchnorm/sub*
T0*4
_output_shapes"
 :������������������

�
residual_block_0/ReluRelu4residual_block_0/batch_normalization/batchnorm/add_1*
T0*4
_output_shapes"
 :������������������

[
residual_block_0/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
�
.residual_block_0/set_padding_to_sentinel/ShapeShaperesidual_block_0/Relu*
T0*
_output_shapes
::��
�
<residual_block_0/set_padding_to_sentinel/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
>residual_block_0/set_padding_to_sentinel/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
>residual_block_0/set_padding_to_sentinel/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
6residual_block_0/set_padding_to_sentinel/strided_sliceStridedSlice.residual_block_0/set_padding_to_sentinel/Shape<residual_block_0/set_padding_to_sentinel/strided_slice/stack>residual_block_0/set_padding_to_sentinel/strided_slice/stack_1>residual_block_0/set_padding_to_sentinel/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
0residual_block_0/set_padding_to_sentinel/Shape_1Shaperesidual_block_0/Relu*
T0*
_output_shapes
::��
�
>residual_block_0/set_padding_to_sentinel/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_0/set_padding_to_sentinel/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_0/set_padding_to_sentinel/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
8residual_block_0/set_padding_to_sentinel/strided_slice_1StridedSlice0residual_block_0/set_padding_to_sentinel/Shape_1>residual_block_0/set_padding_to_sentinel/strided_slice_1/stack@residual_block_0/set_padding_to_sentinel/strided_slice_1/stack_1@residual_block_0/set_padding_to_sentinel/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
}
;residual_block_0/set_padding_to_sentinel/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : 

=residual_block_0/set_padding_to_sentinel/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :
�
;residual_block_0/set_padding_to_sentinel/SequenceMask/RangeRange;residual_block_0/set_padding_to_sentinel/SequenceMask/Const6residual_block_0/set_padding_to_sentinel/strided_slice=residual_block_0/set_padding_to_sentinel/SequenceMask/Const_1*#
_output_shapes
:���������
�
Dresidual_block_0/set_padding_to_sentinel/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
@residual_block_0/set_padding_to_sentinel/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholderDresidual_block_0/set_padding_to_sentinel/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
:residual_block_0/set_padding_to_sentinel/SequenceMask/CastCast@residual_block_0/set_padding_to_sentinel/SequenceMask/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
�
:residual_block_0/set_padding_to_sentinel/SequenceMask/LessLess;residual_block_0/set_padding_to_sentinel/SequenceMask/Range:residual_block_0/set_padding_to_sentinel/SequenceMask/Cast*
T0*0
_output_shapes
:������������������
�
7residual_block_0/set_padding_to_sentinel/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
�
3residual_block_0/set_padding_to_sentinel/ExpandDims
ExpandDims:residual_block_0/set_padding_to_sentinel/SequenceMask/Less7residual_block_0/set_padding_to_sentinel/ExpandDims/dim*
T0
*4
_output_shapes"
 :������������������
{
9residual_block_0/set_padding_to_sentinel/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :
{
9residual_block_0/set_padding_to_sentinel/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
�
7residual_block_0/set_padding_to_sentinel/Tile/multiplesPack9residual_block_0/set_padding_to_sentinel/Tile/multiples/09residual_block_0/set_padding_to_sentinel/Tile/multiples/18residual_block_0/set_padding_to_sentinel/strided_slice_1*
N*
T0*
_output_shapes
:
�
-residual_block_0/set_padding_to_sentinel/TileTile3residual_block_0/set_padding_to_sentinel/ExpandDims7residual_block_0/set_padding_to_sentinel/Tile/multiples*
T0
*4
_output_shapes"
 :������������������

�
3residual_block_0/set_padding_to_sentinel/zeros_like	ZerosLikeresidual_block_0/Relu*
T0*4
_output_shapes"
 :������������������

�
,residual_block_0/set_padding_to_sentinel/addAddV23residual_block_0/set_padding_to_sentinel/zeros_likeresidual_block_0/Const*
T0*4
_output_shapes"
 :������������������

�
/residual_block_0/set_padding_to_sentinel/SelectSelect-residual_block_0/set_padding_to_sentinel/Tileresidual_block_0/Relu,residual_block_0/set_padding_to_sentinel/add*
T0*4
_output_shapes"
 :������������������

�
?residual_block_0/conv1d/kernel/Initializer/random_uniform/shapeConst*1
_class'
%#loc:@residual_block_0/conv1d/kernel*
_output_shapes
:*
dtype0*!
valueB"	   
      
�
=residual_block_0/conv1d/kernel/Initializer/random_uniform/minConst*1
_class'
%#loc:@residual_block_0/conv1d/kernel*
_output_shapes
: *
dtype0*
valueB
 *��W�
�
=residual_block_0/conv1d/kernel/Initializer/random_uniform/maxConst*1
_class'
%#loc:@residual_block_0/conv1d/kernel*
_output_shapes
: *
dtype0*
valueB
 *��W>
�
Gresidual_block_0/conv1d/kernel/Initializer/random_uniform/RandomUniformRandomUniform?residual_block_0/conv1d/kernel/Initializer/random_uniform/shape*
T0*1
_class'
%#loc:@residual_block_0/conv1d/kernel*"
_output_shapes
:	
*
dtype0
�
=residual_block_0/conv1d/kernel/Initializer/random_uniform/subSub=residual_block_0/conv1d/kernel/Initializer/random_uniform/max=residual_block_0/conv1d/kernel/Initializer/random_uniform/min*
T0*1
_class'
%#loc:@residual_block_0/conv1d/kernel*
_output_shapes
: 
�
=residual_block_0/conv1d/kernel/Initializer/random_uniform/mulMulGresidual_block_0/conv1d/kernel/Initializer/random_uniform/RandomUniform=residual_block_0/conv1d/kernel/Initializer/random_uniform/sub*
T0*1
_class'
%#loc:@residual_block_0/conv1d/kernel*"
_output_shapes
:	

�
9residual_block_0/conv1d/kernel/Initializer/random_uniformAddV2=residual_block_0/conv1d/kernel/Initializer/random_uniform/mul=residual_block_0/conv1d/kernel/Initializer/random_uniform/min*
T0*1
_class'
%#loc:@residual_block_0/conv1d/kernel*"
_output_shapes
:	

�
residual_block_0/conv1d/kernel
VariableV2*1
_class'
%#loc:@residual_block_0/conv1d/kernel*"
_output_shapes
:	
*
dtype0*
shape:	

�
%residual_block_0/conv1d/kernel/AssignAssignresidual_block_0/conv1d/kernel9residual_block_0/conv1d/kernel/Initializer/random_uniform*
T0*1
_class'
%#loc:@residual_block_0/conv1d/kernel*"
_output_shapes
:	

�
#residual_block_0/conv1d/kernel/readIdentityresidual_block_0/conv1d/kernel*
T0*1
_class'
%#loc:@residual_block_0/conv1d/kernel*"
_output_shapes
:	

�
.residual_block_0/conv1d/bias/Initializer/zerosConst*/
_class%
#!loc:@residual_block_0/conv1d/bias*
_output_shapes
:*
dtype0*
valueB*    
�
residual_block_0/conv1d/bias
VariableV2*/
_class%
#!loc:@residual_block_0/conv1d/bias*
_output_shapes
:*
dtype0*
shape:
�
#residual_block_0/conv1d/bias/AssignAssignresidual_block_0/conv1d/bias.residual_block_0/conv1d/bias/Initializer/zeros*
T0*/
_class%
#!loc:@residual_block_0/conv1d/bias*
_output_shapes
:
�
!residual_block_0/conv1d/bias/readIdentityresidual_block_0/conv1d/bias*
T0*/
_class%
#!loc:@residual_block_0/conv1d/bias*
_output_shapes
:
x
-residual_block_0/conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
)residual_block_0/conv1d/Conv1D/ExpandDims
ExpandDims/residual_block_0/set_padding_to_sentinel/Select-residual_block_0/conv1d/Conv1D/ExpandDims/dim*
T0*8
_output_shapes&
$:"������������������

q
/residual_block_0/conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
+residual_block_0/conv1d/Conv1D/ExpandDims_1
ExpandDims#residual_block_0/conv1d/kernel/read/residual_block_0/conv1d/Conv1D/ExpandDims_1/dim*
T0*&
_output_shapes
:	

�
residual_block_0/conv1d/Conv1DConv2D)residual_block_0/conv1d/Conv1D/ExpandDims+residual_block_0/conv1d/Conv1D/ExpandDims_1*
T0*8
_output_shapes&
$:"������������������*
paddingSAME*
strides

�
&residual_block_0/conv1d/Conv1D/SqueezeSqueezeresidual_block_0/conv1d/Conv1D*
T0*4
_output_shapes"
 :������������������*
squeeze_dims

���������
�
residual_block_0/conv1d/BiasAddBiasAdd&residual_block_0/conv1d/Conv1D/Squeeze!residual_block_0/conv1d/bias/read*
T0*4
_output_shapes"
 :������������������
]
residual_block_0/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
�
0residual_block_0/set_padding_to_sentinel_1/ShapeShaperesidual_block_0/conv1d/BiasAdd*
T0*
_output_shapes
::��
�
>residual_block_0/set_padding_to_sentinel_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_0/set_padding_to_sentinel_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_0/set_padding_to_sentinel_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
8residual_block_0/set_padding_to_sentinel_1/strided_sliceStridedSlice0residual_block_0/set_padding_to_sentinel_1/Shape>residual_block_0/set_padding_to_sentinel_1/strided_slice/stack@residual_block_0/set_padding_to_sentinel_1/strided_slice/stack_1@residual_block_0/set_padding_to_sentinel_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
2residual_block_0/set_padding_to_sentinel_1/Shape_1Shaperesidual_block_0/conv1d/BiasAdd*
T0*
_output_shapes
::��
�
@residual_block_0/set_padding_to_sentinel_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_0/set_padding_to_sentinel_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_0/set_padding_to_sentinel_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
:residual_block_0/set_padding_to_sentinel_1/strided_slice_1StridedSlice2residual_block_0/set_padding_to_sentinel_1/Shape_1@residual_block_0/set_padding_to_sentinel_1/strided_slice_1/stackBresidual_block_0/set_padding_to_sentinel_1/strided_slice_1/stack_1Bresidual_block_0/set_padding_to_sentinel_1/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

=residual_block_0/set_padding_to_sentinel_1/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
�
?residual_block_0/set_padding_to_sentinel_1/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :
�
=residual_block_0/set_padding_to_sentinel_1/SequenceMask/RangeRange=residual_block_0/set_padding_to_sentinel_1/SequenceMask/Const8residual_block_0/set_padding_to_sentinel_1/strided_slice?residual_block_0/set_padding_to_sentinel_1/SequenceMask/Const_1*#
_output_shapes
:���������
�
Fresidual_block_0/set_padding_to_sentinel_1/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
Bresidual_block_0/set_padding_to_sentinel_1/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholderFresidual_block_0/set_padding_to_sentinel_1/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
<residual_block_0/set_padding_to_sentinel_1/SequenceMask/CastCastBresidual_block_0/set_padding_to_sentinel_1/SequenceMask/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
�
<residual_block_0/set_padding_to_sentinel_1/SequenceMask/LessLess=residual_block_0/set_padding_to_sentinel_1/SequenceMask/Range<residual_block_0/set_padding_to_sentinel_1/SequenceMask/Cast*
T0*0
_output_shapes
:������������������
�
9residual_block_0/set_padding_to_sentinel_1/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
�
5residual_block_0/set_padding_to_sentinel_1/ExpandDims
ExpandDims<residual_block_0/set_padding_to_sentinel_1/SequenceMask/Less9residual_block_0/set_padding_to_sentinel_1/ExpandDims/dim*
T0
*4
_output_shapes"
 :������������������
}
;residual_block_0/set_padding_to_sentinel_1/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :
}
;residual_block_0/set_padding_to_sentinel_1/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
�
9residual_block_0/set_padding_to_sentinel_1/Tile/multiplesPack;residual_block_0/set_padding_to_sentinel_1/Tile/multiples/0;residual_block_0/set_padding_to_sentinel_1/Tile/multiples/1:residual_block_0/set_padding_to_sentinel_1/strided_slice_1*
N*
T0*
_output_shapes
:
�
/residual_block_0/set_padding_to_sentinel_1/TileTile5residual_block_0/set_padding_to_sentinel_1/ExpandDims9residual_block_0/set_padding_to_sentinel_1/Tile/multiples*
T0
*4
_output_shapes"
 :������������������
�
5residual_block_0/set_padding_to_sentinel_1/zeros_like	ZerosLikeresidual_block_0/conv1d/BiasAdd*
T0*4
_output_shapes"
 :������������������
�
.residual_block_0/set_padding_to_sentinel_1/addAddV25residual_block_0/set_padding_to_sentinel_1/zeros_likeresidual_block_0/Const_1*
T0*4
_output_shapes"
 :������������������
�
1residual_block_0/set_padding_to_sentinel_1/SelectSelect/residual_block_0/set_padding_to_sentinel_1/Tileresidual_block_0/conv1d/BiasAdd.residual_block_0/set_padding_to_sentinel_1/add*
T0*4
_output_shapes"
 :������������������
�
=residual_block_0/batch_normalization_1/gamma/Initializer/onesConst*?
_class5
31loc:@residual_block_0/batch_normalization_1/gamma*
_output_shapes
:*
dtype0*
valueB*  �?
�
,residual_block_0/batch_normalization_1/gamma
VariableV2*?
_class5
31loc:@residual_block_0/batch_normalization_1/gamma*
_output_shapes
:*
dtype0*
shape:
�
3residual_block_0/batch_normalization_1/gamma/AssignAssign,residual_block_0/batch_normalization_1/gamma=residual_block_0/batch_normalization_1/gamma/Initializer/ones*
T0*?
_class5
31loc:@residual_block_0/batch_normalization_1/gamma*
_output_shapes
:
�
1residual_block_0/batch_normalization_1/gamma/readIdentity,residual_block_0/batch_normalization_1/gamma*
T0*?
_class5
31loc:@residual_block_0/batch_normalization_1/gamma*
_output_shapes
:
�
=residual_block_0/batch_normalization_1/beta/Initializer/zerosConst*>
_class4
20loc:@residual_block_0/batch_normalization_1/beta*
_output_shapes
:*
dtype0*
valueB*    
�
+residual_block_0/batch_normalization_1/beta
VariableV2*>
_class4
20loc:@residual_block_0/batch_normalization_1/beta*
_output_shapes
:*
dtype0*
shape:
�
2residual_block_0/batch_normalization_1/beta/AssignAssign+residual_block_0/batch_normalization_1/beta=residual_block_0/batch_normalization_1/beta/Initializer/zeros*
T0*>
_class4
20loc:@residual_block_0/batch_normalization_1/beta*
_output_shapes
:
�
0residual_block_0/batch_normalization_1/beta/readIdentity+residual_block_0/batch_normalization_1/beta*
T0*>
_class4
20loc:@residual_block_0/batch_normalization_1/beta*
_output_shapes
:
�
Dresidual_block_0/batch_normalization_1/moving_mean/Initializer/zerosConst*E
_class;
97loc:@residual_block_0/batch_normalization_1/moving_mean*
_output_shapes
:*
dtype0*
valueB*    
�
2residual_block_0/batch_normalization_1/moving_mean
VariableV2*E
_class;
97loc:@residual_block_0/batch_normalization_1/moving_mean*
_output_shapes
:*
dtype0*
shape:
�
9residual_block_0/batch_normalization_1/moving_mean/AssignAssign2residual_block_0/batch_normalization_1/moving_meanDresidual_block_0/batch_normalization_1/moving_mean/Initializer/zeros*
T0*E
_class;
97loc:@residual_block_0/batch_normalization_1/moving_mean*
_output_shapes
:
�
7residual_block_0/batch_normalization_1/moving_mean/readIdentity2residual_block_0/batch_normalization_1/moving_mean*
T0*E
_class;
97loc:@residual_block_0/batch_normalization_1/moving_mean*
_output_shapes
:
�
Gresidual_block_0/batch_normalization_1/moving_variance/Initializer/onesConst*I
_class?
=;loc:@residual_block_0/batch_normalization_1/moving_variance*
_output_shapes
:*
dtype0*
valueB*  �?
�
6residual_block_0/batch_normalization_1/moving_variance
VariableV2*I
_class?
=;loc:@residual_block_0/batch_normalization_1/moving_variance*
_output_shapes
:*
dtype0*
shape:
�
=residual_block_0/batch_normalization_1/moving_variance/AssignAssign6residual_block_0/batch_normalization_1/moving_varianceGresidual_block_0/batch_normalization_1/moving_variance/Initializer/ones*
T0*I
_class?
=;loc:@residual_block_0/batch_normalization_1/moving_variance*
_output_shapes
:
�
;residual_block_0/batch_normalization_1/moving_variance/readIdentity6residual_block_0/batch_normalization_1/moving_variance*
T0*I
_class?
=;loc:@residual_block_0/batch_normalization_1/moving_variance*
_output_shapes
:
{
6residual_block_0/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:
�
4residual_block_0/batch_normalization_1/batchnorm/addAddV2;residual_block_0/batch_normalization_1/moving_variance/read6residual_block_0/batch_normalization_1/batchnorm/add/y*
T0*
_output_shapes
:
�
6residual_block_0/batch_normalization_1/batchnorm/RsqrtRsqrt4residual_block_0/batch_normalization_1/batchnorm/add*
T0*
_output_shapes
:
�
4residual_block_0/batch_normalization_1/batchnorm/mulMul6residual_block_0/batch_normalization_1/batchnorm/Rsqrt1residual_block_0/batch_normalization_1/gamma/read*
T0*
_output_shapes
:
�
6residual_block_0/batch_normalization_1/batchnorm/mul_1Mul1residual_block_0/set_padding_to_sentinel_1/Select4residual_block_0/batch_normalization_1/batchnorm/mul*
T0*4
_output_shapes"
 :������������������
�
6residual_block_0/batch_normalization_1/batchnorm/mul_2Mul7residual_block_0/batch_normalization_1/moving_mean/read4residual_block_0/batch_normalization_1/batchnorm/mul*
T0*
_output_shapes
:
�
4residual_block_0/batch_normalization_1/batchnorm/subSub0residual_block_0/batch_normalization_1/beta/read6residual_block_0/batch_normalization_1/batchnorm/mul_2*
T0*
_output_shapes
:
�
6residual_block_0/batch_normalization_1/batchnorm/add_1AddV26residual_block_0/batch_normalization_1/batchnorm/mul_14residual_block_0/batch_normalization_1/batchnorm/sub*
T0*4
_output_shapes"
 :������������������
�
residual_block_0/Relu_1Relu6residual_block_0/batch_normalization_1/batchnorm/add_1*
T0*4
_output_shapes"
 :������������������
]
residual_block_0/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *    
�
0residual_block_0/set_padding_to_sentinel_2/ShapeShaperesidual_block_0/Relu_1*
T0*
_output_shapes
::��
�
>residual_block_0/set_padding_to_sentinel_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_0/set_padding_to_sentinel_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_0/set_padding_to_sentinel_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
8residual_block_0/set_padding_to_sentinel_2/strided_sliceStridedSlice0residual_block_0/set_padding_to_sentinel_2/Shape>residual_block_0/set_padding_to_sentinel_2/strided_slice/stack@residual_block_0/set_padding_to_sentinel_2/strided_slice/stack_1@residual_block_0/set_padding_to_sentinel_2/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
2residual_block_0/set_padding_to_sentinel_2/Shape_1Shaperesidual_block_0/Relu_1*
T0*
_output_shapes
::��
�
@residual_block_0/set_padding_to_sentinel_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_0/set_padding_to_sentinel_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_0/set_padding_to_sentinel_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
:residual_block_0/set_padding_to_sentinel_2/strided_slice_1StridedSlice2residual_block_0/set_padding_to_sentinel_2/Shape_1@residual_block_0/set_padding_to_sentinel_2/strided_slice_1/stackBresidual_block_0/set_padding_to_sentinel_2/strided_slice_1/stack_1Bresidual_block_0/set_padding_to_sentinel_2/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

=residual_block_0/set_padding_to_sentinel_2/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
�
?residual_block_0/set_padding_to_sentinel_2/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :
�
=residual_block_0/set_padding_to_sentinel_2/SequenceMask/RangeRange=residual_block_0/set_padding_to_sentinel_2/SequenceMask/Const8residual_block_0/set_padding_to_sentinel_2/strided_slice?residual_block_0/set_padding_to_sentinel_2/SequenceMask/Const_1*#
_output_shapes
:���������
�
Fresidual_block_0/set_padding_to_sentinel_2/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
Bresidual_block_0/set_padding_to_sentinel_2/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholderFresidual_block_0/set_padding_to_sentinel_2/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
<residual_block_0/set_padding_to_sentinel_2/SequenceMask/CastCastBresidual_block_0/set_padding_to_sentinel_2/SequenceMask/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
�
<residual_block_0/set_padding_to_sentinel_2/SequenceMask/LessLess=residual_block_0/set_padding_to_sentinel_2/SequenceMask/Range<residual_block_0/set_padding_to_sentinel_2/SequenceMask/Cast*
T0*0
_output_shapes
:������������������
�
9residual_block_0/set_padding_to_sentinel_2/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
�
5residual_block_0/set_padding_to_sentinel_2/ExpandDims
ExpandDims<residual_block_0/set_padding_to_sentinel_2/SequenceMask/Less9residual_block_0/set_padding_to_sentinel_2/ExpandDims/dim*
T0
*4
_output_shapes"
 :������������������
}
;residual_block_0/set_padding_to_sentinel_2/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :
}
;residual_block_0/set_padding_to_sentinel_2/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
�
9residual_block_0/set_padding_to_sentinel_2/Tile/multiplesPack;residual_block_0/set_padding_to_sentinel_2/Tile/multiples/0;residual_block_0/set_padding_to_sentinel_2/Tile/multiples/1:residual_block_0/set_padding_to_sentinel_2/strided_slice_1*
N*
T0*
_output_shapes
:
�
/residual_block_0/set_padding_to_sentinel_2/TileTile5residual_block_0/set_padding_to_sentinel_2/ExpandDims9residual_block_0/set_padding_to_sentinel_2/Tile/multiples*
T0
*4
_output_shapes"
 :������������������
�
5residual_block_0/set_padding_to_sentinel_2/zeros_like	ZerosLikeresidual_block_0/Relu_1*
T0*4
_output_shapes"
 :������������������
�
.residual_block_0/set_padding_to_sentinel_2/addAddV25residual_block_0/set_padding_to_sentinel_2/zeros_likeresidual_block_0/Const_2*
T0*4
_output_shapes"
 :������������������
�
1residual_block_0/set_padding_to_sentinel_2/SelectSelect/residual_block_0/set_padding_to_sentinel_2/Tileresidual_block_0/Relu_1.residual_block_0/set_padding_to_sentinel_2/add*
T0*4
_output_shapes"
 :������������������
�
Aresidual_block_0/conv1d_1/kernel/Initializer/random_uniform/shapeConst*3
_class)
'%loc:@residual_block_0/conv1d_1/kernel*
_output_shapes
:*
dtype0*!
valueB"      
   
�
?residual_block_0/conv1d_1/kernel/Initializer/random_uniform/minConst*3
_class)
'%loc:@residual_block_0/conv1d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *��!�
�
?residual_block_0/conv1d_1/kernel/Initializer/random_uniform/maxConst*3
_class)
'%loc:@residual_block_0/conv1d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *��!?
�
Iresidual_block_0/conv1d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniformAresidual_block_0/conv1d_1/kernel/Initializer/random_uniform/shape*
T0*3
_class)
'%loc:@residual_block_0/conv1d_1/kernel*"
_output_shapes
:
*
dtype0
�
?residual_block_0/conv1d_1/kernel/Initializer/random_uniform/subSub?residual_block_0/conv1d_1/kernel/Initializer/random_uniform/max?residual_block_0/conv1d_1/kernel/Initializer/random_uniform/min*
T0*3
_class)
'%loc:@residual_block_0/conv1d_1/kernel*
_output_shapes
: 
�
?residual_block_0/conv1d_1/kernel/Initializer/random_uniform/mulMulIresidual_block_0/conv1d_1/kernel/Initializer/random_uniform/RandomUniform?residual_block_0/conv1d_1/kernel/Initializer/random_uniform/sub*
T0*3
_class)
'%loc:@residual_block_0/conv1d_1/kernel*"
_output_shapes
:

�
;residual_block_0/conv1d_1/kernel/Initializer/random_uniformAddV2?residual_block_0/conv1d_1/kernel/Initializer/random_uniform/mul?residual_block_0/conv1d_1/kernel/Initializer/random_uniform/min*
T0*3
_class)
'%loc:@residual_block_0/conv1d_1/kernel*"
_output_shapes
:

�
 residual_block_0/conv1d_1/kernel
VariableV2*3
_class)
'%loc:@residual_block_0/conv1d_1/kernel*"
_output_shapes
:
*
dtype0*
shape:

�
'residual_block_0/conv1d_1/kernel/AssignAssign residual_block_0/conv1d_1/kernel;residual_block_0/conv1d_1/kernel/Initializer/random_uniform*
T0*3
_class)
'%loc:@residual_block_0/conv1d_1/kernel*"
_output_shapes
:

�
%residual_block_0/conv1d_1/kernel/readIdentity residual_block_0/conv1d_1/kernel*
T0*3
_class)
'%loc:@residual_block_0/conv1d_1/kernel*"
_output_shapes
:

�
0residual_block_0/conv1d_1/bias/Initializer/zerosConst*1
_class'
%#loc:@residual_block_0/conv1d_1/bias*
_output_shapes
:
*
dtype0*
valueB
*    
�
residual_block_0/conv1d_1/bias
VariableV2*1
_class'
%#loc:@residual_block_0/conv1d_1/bias*
_output_shapes
:
*
dtype0*
shape:

�
%residual_block_0/conv1d_1/bias/AssignAssignresidual_block_0/conv1d_1/bias0residual_block_0/conv1d_1/bias/Initializer/zeros*
T0*1
_class'
%#loc:@residual_block_0/conv1d_1/bias*
_output_shapes
:

�
#residual_block_0/conv1d_1/bias/readIdentityresidual_block_0/conv1d_1/bias*
T0*1
_class'
%#loc:@residual_block_0/conv1d_1/bias*
_output_shapes
:

z
/residual_block_0/conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
+residual_block_0/conv1d_1/Conv1D/ExpandDims
ExpandDims1residual_block_0/set_padding_to_sentinel_2/Select/residual_block_0/conv1d_1/Conv1D/ExpandDims/dim*
T0*8
_output_shapes&
$:"������������������
s
1residual_block_0/conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
-residual_block_0/conv1d_1/Conv1D/ExpandDims_1
ExpandDims%residual_block_0/conv1d_1/kernel/read1residual_block_0/conv1d_1/Conv1D/ExpandDims_1/dim*
T0*&
_output_shapes
:

�
 residual_block_0/conv1d_1/Conv1DConv2D+residual_block_0/conv1d_1/Conv1D/ExpandDims-residual_block_0/conv1d_1/Conv1D/ExpandDims_1*
T0*8
_output_shapes&
$:"������������������
*
paddingSAME*
strides

�
(residual_block_0/conv1d_1/Conv1D/SqueezeSqueeze residual_block_0/conv1d_1/Conv1D*
T0*4
_output_shapes"
 :������������������
*
squeeze_dims

���������
�
!residual_block_0/conv1d_1/BiasAddBiasAdd(residual_block_0/conv1d_1/Conv1D/Squeeze#residual_block_0/conv1d_1/bias/read*
T0*4
_output_shapes"
 :������������������

]
residual_block_0/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *    
�
0residual_block_0/set_padding_to_sentinel_3/ShapeShape!residual_block_0/conv1d_1/BiasAdd*
T0*
_output_shapes
::��
�
>residual_block_0/set_padding_to_sentinel_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_0/set_padding_to_sentinel_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_0/set_padding_to_sentinel_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
8residual_block_0/set_padding_to_sentinel_3/strided_sliceStridedSlice0residual_block_0/set_padding_to_sentinel_3/Shape>residual_block_0/set_padding_to_sentinel_3/strided_slice/stack@residual_block_0/set_padding_to_sentinel_3/strided_slice/stack_1@residual_block_0/set_padding_to_sentinel_3/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
2residual_block_0/set_padding_to_sentinel_3/Shape_1Shape!residual_block_0/conv1d_1/BiasAdd*
T0*
_output_shapes
::��
�
@residual_block_0/set_padding_to_sentinel_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_0/set_padding_to_sentinel_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_0/set_padding_to_sentinel_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
:residual_block_0/set_padding_to_sentinel_3/strided_slice_1StridedSlice2residual_block_0/set_padding_to_sentinel_3/Shape_1@residual_block_0/set_padding_to_sentinel_3/strided_slice_1/stackBresidual_block_0/set_padding_to_sentinel_3/strided_slice_1/stack_1Bresidual_block_0/set_padding_to_sentinel_3/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

=residual_block_0/set_padding_to_sentinel_3/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
�
?residual_block_0/set_padding_to_sentinel_3/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :
�
=residual_block_0/set_padding_to_sentinel_3/SequenceMask/RangeRange=residual_block_0/set_padding_to_sentinel_3/SequenceMask/Const8residual_block_0/set_padding_to_sentinel_3/strided_slice?residual_block_0/set_padding_to_sentinel_3/SequenceMask/Const_1*#
_output_shapes
:���������
�
Fresidual_block_0/set_padding_to_sentinel_3/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
Bresidual_block_0/set_padding_to_sentinel_3/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholderFresidual_block_0/set_padding_to_sentinel_3/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
<residual_block_0/set_padding_to_sentinel_3/SequenceMask/CastCastBresidual_block_0/set_padding_to_sentinel_3/SequenceMask/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
�
<residual_block_0/set_padding_to_sentinel_3/SequenceMask/LessLess=residual_block_0/set_padding_to_sentinel_3/SequenceMask/Range<residual_block_0/set_padding_to_sentinel_3/SequenceMask/Cast*
T0*0
_output_shapes
:������������������
�
9residual_block_0/set_padding_to_sentinel_3/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
�
5residual_block_0/set_padding_to_sentinel_3/ExpandDims
ExpandDims<residual_block_0/set_padding_to_sentinel_3/SequenceMask/Less9residual_block_0/set_padding_to_sentinel_3/ExpandDims/dim*
T0
*4
_output_shapes"
 :������������������
}
;residual_block_0/set_padding_to_sentinel_3/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :
}
;residual_block_0/set_padding_to_sentinel_3/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
�
9residual_block_0/set_padding_to_sentinel_3/Tile/multiplesPack;residual_block_0/set_padding_to_sentinel_3/Tile/multiples/0;residual_block_0/set_padding_to_sentinel_3/Tile/multiples/1:residual_block_0/set_padding_to_sentinel_3/strided_slice_1*
N*
T0*
_output_shapes
:
�
/residual_block_0/set_padding_to_sentinel_3/TileTile5residual_block_0/set_padding_to_sentinel_3/ExpandDims9residual_block_0/set_padding_to_sentinel_3/Tile/multiples*
T0
*4
_output_shapes"
 :������������������

�
5residual_block_0/set_padding_to_sentinel_3/zeros_like	ZerosLike!residual_block_0/conv1d_1/BiasAdd*
T0*4
_output_shapes"
 :������������������

�
.residual_block_0/set_padding_to_sentinel_3/addAddV25residual_block_0/set_padding_to_sentinel_3/zeros_likeresidual_block_0/Const_3*
T0*4
_output_shapes"
 :������������������

�
1residual_block_0/set_padding_to_sentinel_3/SelectSelect/residual_block_0/set_padding_to_sentinel_3/Tile!residual_block_0/conv1d_1/BiasAdd.residual_block_0/set_padding_to_sentinel_3/add*
T0*4
_output_shapes"
 :������������������

�
residual_block_0/addAddV2 set_padding_to_sentinel_1/Select1residual_block_0/set_padding_to_sentinel_3/Select*
T0*4
_output_shapes"
 :������������������

�
;residual_block_1/batch_normalization/gamma/Initializer/onesConst*=
_class3
1/loc:@residual_block_1/batch_normalization/gamma*
_output_shapes
:
*
dtype0*
valueB
*  �?
�
*residual_block_1/batch_normalization/gamma
VariableV2*=
_class3
1/loc:@residual_block_1/batch_normalization/gamma*
_output_shapes
:
*
dtype0*
shape:

�
1residual_block_1/batch_normalization/gamma/AssignAssign*residual_block_1/batch_normalization/gamma;residual_block_1/batch_normalization/gamma/Initializer/ones*
T0*=
_class3
1/loc:@residual_block_1/batch_normalization/gamma*
_output_shapes
:

�
/residual_block_1/batch_normalization/gamma/readIdentity*residual_block_1/batch_normalization/gamma*
T0*=
_class3
1/loc:@residual_block_1/batch_normalization/gamma*
_output_shapes
:

�
;residual_block_1/batch_normalization/beta/Initializer/zerosConst*<
_class2
0.loc:@residual_block_1/batch_normalization/beta*
_output_shapes
:
*
dtype0*
valueB
*    
�
)residual_block_1/batch_normalization/beta
VariableV2*<
_class2
0.loc:@residual_block_1/batch_normalization/beta*
_output_shapes
:
*
dtype0*
shape:

�
0residual_block_1/batch_normalization/beta/AssignAssign)residual_block_1/batch_normalization/beta;residual_block_1/batch_normalization/beta/Initializer/zeros*
T0*<
_class2
0.loc:@residual_block_1/batch_normalization/beta*
_output_shapes
:

�
.residual_block_1/batch_normalization/beta/readIdentity)residual_block_1/batch_normalization/beta*
T0*<
_class2
0.loc:@residual_block_1/batch_normalization/beta*
_output_shapes
:

�
Bresidual_block_1/batch_normalization/moving_mean/Initializer/zerosConst*C
_class9
75loc:@residual_block_1/batch_normalization/moving_mean*
_output_shapes
:
*
dtype0*
valueB
*    
�
0residual_block_1/batch_normalization/moving_mean
VariableV2*C
_class9
75loc:@residual_block_1/batch_normalization/moving_mean*
_output_shapes
:
*
dtype0*
shape:

�
7residual_block_1/batch_normalization/moving_mean/AssignAssign0residual_block_1/batch_normalization/moving_meanBresidual_block_1/batch_normalization/moving_mean/Initializer/zeros*
T0*C
_class9
75loc:@residual_block_1/batch_normalization/moving_mean*
_output_shapes
:

�
5residual_block_1/batch_normalization/moving_mean/readIdentity0residual_block_1/batch_normalization/moving_mean*
T0*C
_class9
75loc:@residual_block_1/batch_normalization/moving_mean*
_output_shapes
:

�
Eresidual_block_1/batch_normalization/moving_variance/Initializer/onesConst*G
_class=
;9loc:@residual_block_1/batch_normalization/moving_variance*
_output_shapes
:
*
dtype0*
valueB
*  �?
�
4residual_block_1/batch_normalization/moving_variance
VariableV2*G
_class=
;9loc:@residual_block_1/batch_normalization/moving_variance*
_output_shapes
:
*
dtype0*
shape:

�
;residual_block_1/batch_normalization/moving_variance/AssignAssign4residual_block_1/batch_normalization/moving_varianceEresidual_block_1/batch_normalization/moving_variance/Initializer/ones*
T0*G
_class=
;9loc:@residual_block_1/batch_normalization/moving_variance*
_output_shapes
:

�
9residual_block_1/batch_normalization/moving_variance/readIdentity4residual_block_1/batch_normalization/moving_variance*
T0*G
_class=
;9loc:@residual_block_1/batch_normalization/moving_variance*
_output_shapes
:

y
4residual_block_1/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:
�
2residual_block_1/batch_normalization/batchnorm/addAddV29residual_block_1/batch_normalization/moving_variance/read4residual_block_1/batch_normalization/batchnorm/add/y*
T0*
_output_shapes
:

�
4residual_block_1/batch_normalization/batchnorm/RsqrtRsqrt2residual_block_1/batch_normalization/batchnorm/add*
T0*
_output_shapes
:

�
2residual_block_1/batch_normalization/batchnorm/mulMul4residual_block_1/batch_normalization/batchnorm/Rsqrt/residual_block_1/batch_normalization/gamma/read*
T0*
_output_shapes
:

�
4residual_block_1/batch_normalization/batchnorm/mul_1Mulresidual_block_0/add2residual_block_1/batch_normalization/batchnorm/mul*
T0*4
_output_shapes"
 :������������������

�
4residual_block_1/batch_normalization/batchnorm/mul_2Mul5residual_block_1/batch_normalization/moving_mean/read2residual_block_1/batch_normalization/batchnorm/mul*
T0*
_output_shapes
:

�
2residual_block_1/batch_normalization/batchnorm/subSub.residual_block_1/batch_normalization/beta/read4residual_block_1/batch_normalization/batchnorm/mul_2*
T0*
_output_shapes
:

�
4residual_block_1/batch_normalization/batchnorm/add_1AddV24residual_block_1/batch_normalization/batchnorm/mul_12residual_block_1/batch_normalization/batchnorm/sub*
T0*4
_output_shapes"
 :������������������

�
residual_block_1/ReluRelu4residual_block_1/batch_normalization/batchnorm/add_1*
T0*4
_output_shapes"
 :������������������

[
residual_block_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
�
.residual_block_1/set_padding_to_sentinel/ShapeShaperesidual_block_1/Relu*
T0*
_output_shapes
::��
�
<residual_block_1/set_padding_to_sentinel/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
>residual_block_1/set_padding_to_sentinel/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
>residual_block_1/set_padding_to_sentinel/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
6residual_block_1/set_padding_to_sentinel/strided_sliceStridedSlice.residual_block_1/set_padding_to_sentinel/Shape<residual_block_1/set_padding_to_sentinel/strided_slice/stack>residual_block_1/set_padding_to_sentinel/strided_slice/stack_1>residual_block_1/set_padding_to_sentinel/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
0residual_block_1/set_padding_to_sentinel/Shape_1Shaperesidual_block_1/Relu*
T0*
_output_shapes
::��
�
>residual_block_1/set_padding_to_sentinel/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_1/set_padding_to_sentinel/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_1/set_padding_to_sentinel/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
8residual_block_1/set_padding_to_sentinel/strided_slice_1StridedSlice0residual_block_1/set_padding_to_sentinel/Shape_1>residual_block_1/set_padding_to_sentinel/strided_slice_1/stack@residual_block_1/set_padding_to_sentinel/strided_slice_1/stack_1@residual_block_1/set_padding_to_sentinel/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
}
;residual_block_1/set_padding_to_sentinel/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : 

=residual_block_1/set_padding_to_sentinel/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :
�
;residual_block_1/set_padding_to_sentinel/SequenceMask/RangeRange;residual_block_1/set_padding_to_sentinel/SequenceMask/Const6residual_block_1/set_padding_to_sentinel/strided_slice=residual_block_1/set_padding_to_sentinel/SequenceMask/Const_1*#
_output_shapes
:���������
�
Dresidual_block_1/set_padding_to_sentinel/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
@residual_block_1/set_padding_to_sentinel/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholderDresidual_block_1/set_padding_to_sentinel/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
:residual_block_1/set_padding_to_sentinel/SequenceMask/CastCast@residual_block_1/set_padding_to_sentinel/SequenceMask/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
�
:residual_block_1/set_padding_to_sentinel/SequenceMask/LessLess;residual_block_1/set_padding_to_sentinel/SequenceMask/Range:residual_block_1/set_padding_to_sentinel/SequenceMask/Cast*
T0*0
_output_shapes
:������������������
�
7residual_block_1/set_padding_to_sentinel/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
�
3residual_block_1/set_padding_to_sentinel/ExpandDims
ExpandDims:residual_block_1/set_padding_to_sentinel/SequenceMask/Less7residual_block_1/set_padding_to_sentinel/ExpandDims/dim*
T0
*4
_output_shapes"
 :������������������
{
9residual_block_1/set_padding_to_sentinel/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :
{
9residual_block_1/set_padding_to_sentinel/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
�
7residual_block_1/set_padding_to_sentinel/Tile/multiplesPack9residual_block_1/set_padding_to_sentinel/Tile/multiples/09residual_block_1/set_padding_to_sentinel/Tile/multiples/18residual_block_1/set_padding_to_sentinel/strided_slice_1*
N*
T0*
_output_shapes
:
�
-residual_block_1/set_padding_to_sentinel/TileTile3residual_block_1/set_padding_to_sentinel/ExpandDims7residual_block_1/set_padding_to_sentinel/Tile/multiples*
T0
*4
_output_shapes"
 :������������������

�
3residual_block_1/set_padding_to_sentinel/zeros_like	ZerosLikeresidual_block_1/Relu*
T0*4
_output_shapes"
 :������������������

�
,residual_block_1/set_padding_to_sentinel/addAddV23residual_block_1/set_padding_to_sentinel/zeros_likeresidual_block_1/Const*
T0*4
_output_shapes"
 :������������������

�
/residual_block_1/set_padding_to_sentinel/SelectSelect-residual_block_1/set_padding_to_sentinel/Tileresidual_block_1/Relu,residual_block_1/set_padding_to_sentinel/add*
T0*4
_output_shapes"
 :������������������

�
?residual_block_1/conv1d/kernel/Initializer/random_uniform/shapeConst*1
_class'
%#loc:@residual_block_1/conv1d/kernel*
_output_shapes
:*
dtype0*!
valueB"	   
      
�
=residual_block_1/conv1d/kernel/Initializer/random_uniform/minConst*1
_class'
%#loc:@residual_block_1/conv1d/kernel*
_output_shapes
: *
dtype0*
valueB
 *��W�
�
=residual_block_1/conv1d/kernel/Initializer/random_uniform/maxConst*1
_class'
%#loc:@residual_block_1/conv1d/kernel*
_output_shapes
: *
dtype0*
valueB
 *��W>
�
Gresidual_block_1/conv1d/kernel/Initializer/random_uniform/RandomUniformRandomUniform?residual_block_1/conv1d/kernel/Initializer/random_uniform/shape*
T0*1
_class'
%#loc:@residual_block_1/conv1d/kernel*"
_output_shapes
:	
*
dtype0
�
=residual_block_1/conv1d/kernel/Initializer/random_uniform/subSub=residual_block_1/conv1d/kernel/Initializer/random_uniform/max=residual_block_1/conv1d/kernel/Initializer/random_uniform/min*
T0*1
_class'
%#loc:@residual_block_1/conv1d/kernel*
_output_shapes
: 
�
=residual_block_1/conv1d/kernel/Initializer/random_uniform/mulMulGresidual_block_1/conv1d/kernel/Initializer/random_uniform/RandomUniform=residual_block_1/conv1d/kernel/Initializer/random_uniform/sub*
T0*1
_class'
%#loc:@residual_block_1/conv1d/kernel*"
_output_shapes
:	

�
9residual_block_1/conv1d/kernel/Initializer/random_uniformAddV2=residual_block_1/conv1d/kernel/Initializer/random_uniform/mul=residual_block_1/conv1d/kernel/Initializer/random_uniform/min*
T0*1
_class'
%#loc:@residual_block_1/conv1d/kernel*"
_output_shapes
:	

�
residual_block_1/conv1d/kernel
VariableV2*1
_class'
%#loc:@residual_block_1/conv1d/kernel*"
_output_shapes
:	
*
dtype0*
shape:	

�
%residual_block_1/conv1d/kernel/AssignAssignresidual_block_1/conv1d/kernel9residual_block_1/conv1d/kernel/Initializer/random_uniform*
T0*1
_class'
%#loc:@residual_block_1/conv1d/kernel*"
_output_shapes
:	

�
#residual_block_1/conv1d/kernel/readIdentityresidual_block_1/conv1d/kernel*
T0*1
_class'
%#loc:@residual_block_1/conv1d/kernel*"
_output_shapes
:	

�
.residual_block_1/conv1d/bias/Initializer/zerosConst*/
_class%
#!loc:@residual_block_1/conv1d/bias*
_output_shapes
:*
dtype0*
valueB*    
�
residual_block_1/conv1d/bias
VariableV2*/
_class%
#!loc:@residual_block_1/conv1d/bias*
_output_shapes
:*
dtype0*
shape:
�
#residual_block_1/conv1d/bias/AssignAssignresidual_block_1/conv1d/bias.residual_block_1/conv1d/bias/Initializer/zeros*
T0*/
_class%
#!loc:@residual_block_1/conv1d/bias*
_output_shapes
:
�
!residual_block_1/conv1d/bias/readIdentityresidual_block_1/conv1d/bias*
T0*/
_class%
#!loc:@residual_block_1/conv1d/bias*
_output_shapes
:
v
,residual_block_1/conv1d/Conv1D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB:
�
+residual_block_1/conv1d/Conv1D/filter_shapeConst*
_output_shapes
:*
dtype0*!
valueB"	   
      
}
$residual_block_1/conv1d/Conv1D/stackConst*
_output_shapes

:*
dtype0*!
valueB"      
�
$residual_block_1/conv1d/Conv1D/ShapeShape/residual_block_1/set_padding_to_sentinel/Select*
T0*
_output_shapes
::��
|
2residual_block_1/conv1d/Conv1D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
~
4residual_block_1/conv1d/Conv1D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
~
4residual_block_1/conv1d/Conv1D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
,residual_block_1/conv1d/Conv1D/strided_sliceStridedSlice$residual_block_1/conv1d/Conv1D/Shape2residual_block_1/conv1d/Conv1D/strided_slice/stack4residual_block_1/conv1d/Conv1D/strided_slice/stack_14residual_block_1/conv1d/Conv1D/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
&residual_block_1/conv1d/Conv1D/stack_1Pack,residual_block_1/conv1d/Conv1D/strided_slice*
N*
T0*
_output_shapes
:
�
Sresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
�
Uresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
�
Uresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
�
Mresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_sliceStridedSlice$residual_block_1/conv1d/Conv1D/stackSresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice/stackUresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice/stack_1Uresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice/stack_2*
Index0*
T0*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask
�
Uresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       
�
Wresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
�
Wresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
�
Oresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1StridedSlice$residual_block_1/conv1d/Conv1D/stackUresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1/stackWresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1/stack_1Wresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask
�
Cresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/addAddV2&residual_block_1/conv1d/Conv1D/stack_1Mresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice*
T0*
_output_shapes
:
�
Eresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/add_1AddV2Cresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/addOresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1*
T0*
_output_shapes
:
�
Cresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/modFloorModEresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/add_1,residual_block_1/conv1d/Conv1D/dilation_rate*
T0*
_output_shapes
:
�
Cresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/subSub,residual_block_1/conv1d/Conv1D/dilation_rateCresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/mod*
T0*
_output_shapes
:
�
Eresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/mod_1FloorModCresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/sub,residual_block_1/conv1d/Conv1D/dilation_rate*
T0*
_output_shapes
:
�
Eresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/add_2AddV2Oresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1Eresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/mod_1*
T0*
_output_shapes
:
�
Uresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
�
Wresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Wresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
Oresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2StridedSliceMresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_sliceUresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2/stackWresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2/stack_1Wresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
Uresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 
�
Wresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Wresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
Oresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3StridedSliceEresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/add_2Uresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3/stackWresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3/stack_1Wresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
Jresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/paddings/0PackOresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2Oresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3*
N*
T0*
_output_shapes
:
�
Hresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/paddingsPackJresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/paddings/0*
N*
T0*
_output_shapes

:
�
Uresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 
�
Wresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Wresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
Oresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4StridedSliceEresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/mod_1Uresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4/stackWresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4/stack_1Wresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
Iresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/crops/0/0Const*
_output_shapes
: *
dtype0*
value	B : 
�
Gresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/crops/0PackIresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/crops/0/0Oresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4*
N*
T0*
_output_shapes
:
�
Eresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/cropsPackGresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/crops/0*
N*
T0*
_output_shapes

:
~
4residual_block_1/conv1d/Conv1D/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
�
6residual_block_1/conv1d/Conv1D/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
6residual_block_1/conv1d/Conv1D/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
.residual_block_1/conv1d/Conv1D/strided_slice_1StridedSliceHresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/paddings4residual_block_1/conv1d/Conv1D/strided_slice_1/stack6residual_block_1/conv1d/Conv1D/strided_slice_1/stack_16residual_block_1/conv1d/Conv1D/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes

:
r
0residual_block_1/conv1d/Conv1D/concat/concat_dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
,residual_block_1/conv1d/Conv1D/concat/concatIdentity.residual_block_1/conv1d/Conv1D/strided_slice_1*
T0*
_output_shapes

:
~
4residual_block_1/conv1d/Conv1D/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
�
6residual_block_1/conv1d/Conv1D/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
6residual_block_1/conv1d/Conv1D/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
.residual_block_1/conv1d/Conv1D/strided_slice_2StridedSliceEresidual_block_1/conv1d/Conv1D/required_space_to_batch_paddings/crops4residual_block_1/conv1d/Conv1D/strided_slice_2/stack6residual_block_1/conv1d/Conv1D/strided_slice_2/stack_16residual_block_1/conv1d/Conv1D/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes

:
t
2residual_block_1/conv1d/Conv1D/concat_1/concat_dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
.residual_block_1/conv1d/Conv1D/concat_1/concatIdentity.residual_block_1/conv1d/Conv1D/strided_slice_2*
T0*
_output_shapes

:
�
9residual_block_1/conv1d/Conv1D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB:
�
-residual_block_1/conv1d/Conv1D/SpaceToBatchNDSpaceToBatchND/residual_block_1/set_padding_to_sentinel/Select9residual_block_1/conv1d/Conv1D/SpaceToBatchND/block_shape,residual_block_1/conv1d/Conv1D/concat/concat*
T0*4
_output_shapes"
 :������������������

x
-residual_block_1/conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
)residual_block_1/conv1d/Conv1D/ExpandDims
ExpandDims-residual_block_1/conv1d/Conv1D/SpaceToBatchND-residual_block_1/conv1d/Conv1D/ExpandDims/dim*
T0*8
_output_shapes&
$:"������������������

q
/residual_block_1/conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
+residual_block_1/conv1d/Conv1D/ExpandDims_1
ExpandDims#residual_block_1/conv1d/kernel/read/residual_block_1/conv1d/Conv1D/ExpandDims_1/dim*
T0*&
_output_shapes
:	

�
residual_block_1/conv1d/Conv1DConv2D)residual_block_1/conv1d/Conv1D/ExpandDims+residual_block_1/conv1d/Conv1D/ExpandDims_1*
T0*8
_output_shapes&
$:"������������������*
paddingVALID*
strides

�
&residual_block_1/conv1d/Conv1D/SqueezeSqueezeresidual_block_1/conv1d/Conv1D*
T0*4
_output_shapes"
 :������������������*
squeeze_dims

���������
�
9residual_block_1/conv1d/Conv1D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB:
�
-residual_block_1/conv1d/Conv1D/BatchToSpaceNDBatchToSpaceND&residual_block_1/conv1d/Conv1D/Squeeze9residual_block_1/conv1d/Conv1D/BatchToSpaceND/block_shape.residual_block_1/conv1d/Conv1D/concat_1/concat*
T0*4
_output_shapes"
 :������������������
�
residual_block_1/conv1d/BiasAddBiasAdd-residual_block_1/conv1d/Conv1D/BatchToSpaceND!residual_block_1/conv1d/bias/read*
T0*4
_output_shapes"
 :������������������
]
residual_block_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
�
0residual_block_1/set_padding_to_sentinel_1/ShapeShaperesidual_block_1/conv1d/BiasAdd*
T0*
_output_shapes
::��
�
>residual_block_1/set_padding_to_sentinel_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_1/set_padding_to_sentinel_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_1/set_padding_to_sentinel_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
8residual_block_1/set_padding_to_sentinel_1/strided_sliceStridedSlice0residual_block_1/set_padding_to_sentinel_1/Shape>residual_block_1/set_padding_to_sentinel_1/strided_slice/stack@residual_block_1/set_padding_to_sentinel_1/strided_slice/stack_1@residual_block_1/set_padding_to_sentinel_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
2residual_block_1/set_padding_to_sentinel_1/Shape_1Shaperesidual_block_1/conv1d/BiasAdd*
T0*
_output_shapes
::��
�
@residual_block_1/set_padding_to_sentinel_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_1/set_padding_to_sentinel_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_1/set_padding_to_sentinel_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
:residual_block_1/set_padding_to_sentinel_1/strided_slice_1StridedSlice2residual_block_1/set_padding_to_sentinel_1/Shape_1@residual_block_1/set_padding_to_sentinel_1/strided_slice_1/stackBresidual_block_1/set_padding_to_sentinel_1/strided_slice_1/stack_1Bresidual_block_1/set_padding_to_sentinel_1/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

=residual_block_1/set_padding_to_sentinel_1/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
�
?residual_block_1/set_padding_to_sentinel_1/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :
�
=residual_block_1/set_padding_to_sentinel_1/SequenceMask/RangeRange=residual_block_1/set_padding_to_sentinel_1/SequenceMask/Const8residual_block_1/set_padding_to_sentinel_1/strided_slice?residual_block_1/set_padding_to_sentinel_1/SequenceMask/Const_1*#
_output_shapes
:���������
�
Fresidual_block_1/set_padding_to_sentinel_1/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
Bresidual_block_1/set_padding_to_sentinel_1/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholderFresidual_block_1/set_padding_to_sentinel_1/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
<residual_block_1/set_padding_to_sentinel_1/SequenceMask/CastCastBresidual_block_1/set_padding_to_sentinel_1/SequenceMask/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
�
<residual_block_1/set_padding_to_sentinel_1/SequenceMask/LessLess=residual_block_1/set_padding_to_sentinel_1/SequenceMask/Range<residual_block_1/set_padding_to_sentinel_1/SequenceMask/Cast*
T0*0
_output_shapes
:������������������
�
9residual_block_1/set_padding_to_sentinel_1/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
�
5residual_block_1/set_padding_to_sentinel_1/ExpandDims
ExpandDims<residual_block_1/set_padding_to_sentinel_1/SequenceMask/Less9residual_block_1/set_padding_to_sentinel_1/ExpandDims/dim*
T0
*4
_output_shapes"
 :������������������
}
;residual_block_1/set_padding_to_sentinel_1/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :
}
;residual_block_1/set_padding_to_sentinel_1/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
�
9residual_block_1/set_padding_to_sentinel_1/Tile/multiplesPack;residual_block_1/set_padding_to_sentinel_1/Tile/multiples/0;residual_block_1/set_padding_to_sentinel_1/Tile/multiples/1:residual_block_1/set_padding_to_sentinel_1/strided_slice_1*
N*
T0*
_output_shapes
:
�
/residual_block_1/set_padding_to_sentinel_1/TileTile5residual_block_1/set_padding_to_sentinel_1/ExpandDims9residual_block_1/set_padding_to_sentinel_1/Tile/multiples*
T0
*4
_output_shapes"
 :������������������
�
5residual_block_1/set_padding_to_sentinel_1/zeros_like	ZerosLikeresidual_block_1/conv1d/BiasAdd*
T0*4
_output_shapes"
 :������������������
�
.residual_block_1/set_padding_to_sentinel_1/addAddV25residual_block_1/set_padding_to_sentinel_1/zeros_likeresidual_block_1/Const_1*
T0*4
_output_shapes"
 :������������������
�
1residual_block_1/set_padding_to_sentinel_1/SelectSelect/residual_block_1/set_padding_to_sentinel_1/Tileresidual_block_1/conv1d/BiasAdd.residual_block_1/set_padding_to_sentinel_1/add*
T0*4
_output_shapes"
 :������������������
�
=residual_block_1/batch_normalization_1/gamma/Initializer/onesConst*?
_class5
31loc:@residual_block_1/batch_normalization_1/gamma*
_output_shapes
:*
dtype0*
valueB*  �?
�
,residual_block_1/batch_normalization_1/gamma
VariableV2*?
_class5
31loc:@residual_block_1/batch_normalization_1/gamma*
_output_shapes
:*
dtype0*
shape:
�
3residual_block_1/batch_normalization_1/gamma/AssignAssign,residual_block_1/batch_normalization_1/gamma=residual_block_1/batch_normalization_1/gamma/Initializer/ones*
T0*?
_class5
31loc:@residual_block_1/batch_normalization_1/gamma*
_output_shapes
:
�
1residual_block_1/batch_normalization_1/gamma/readIdentity,residual_block_1/batch_normalization_1/gamma*
T0*?
_class5
31loc:@residual_block_1/batch_normalization_1/gamma*
_output_shapes
:
�
=residual_block_1/batch_normalization_1/beta/Initializer/zerosConst*>
_class4
20loc:@residual_block_1/batch_normalization_1/beta*
_output_shapes
:*
dtype0*
valueB*    
�
+residual_block_1/batch_normalization_1/beta
VariableV2*>
_class4
20loc:@residual_block_1/batch_normalization_1/beta*
_output_shapes
:*
dtype0*
shape:
�
2residual_block_1/batch_normalization_1/beta/AssignAssign+residual_block_1/batch_normalization_1/beta=residual_block_1/batch_normalization_1/beta/Initializer/zeros*
T0*>
_class4
20loc:@residual_block_1/batch_normalization_1/beta*
_output_shapes
:
�
0residual_block_1/batch_normalization_1/beta/readIdentity+residual_block_1/batch_normalization_1/beta*
T0*>
_class4
20loc:@residual_block_1/batch_normalization_1/beta*
_output_shapes
:
�
Dresidual_block_1/batch_normalization_1/moving_mean/Initializer/zerosConst*E
_class;
97loc:@residual_block_1/batch_normalization_1/moving_mean*
_output_shapes
:*
dtype0*
valueB*    
�
2residual_block_1/batch_normalization_1/moving_mean
VariableV2*E
_class;
97loc:@residual_block_1/batch_normalization_1/moving_mean*
_output_shapes
:*
dtype0*
shape:
�
9residual_block_1/batch_normalization_1/moving_mean/AssignAssign2residual_block_1/batch_normalization_1/moving_meanDresidual_block_1/batch_normalization_1/moving_mean/Initializer/zeros*
T0*E
_class;
97loc:@residual_block_1/batch_normalization_1/moving_mean*
_output_shapes
:
�
7residual_block_1/batch_normalization_1/moving_mean/readIdentity2residual_block_1/batch_normalization_1/moving_mean*
T0*E
_class;
97loc:@residual_block_1/batch_normalization_1/moving_mean*
_output_shapes
:
�
Gresidual_block_1/batch_normalization_1/moving_variance/Initializer/onesConst*I
_class?
=;loc:@residual_block_1/batch_normalization_1/moving_variance*
_output_shapes
:*
dtype0*
valueB*  �?
�
6residual_block_1/batch_normalization_1/moving_variance
VariableV2*I
_class?
=;loc:@residual_block_1/batch_normalization_1/moving_variance*
_output_shapes
:*
dtype0*
shape:
�
=residual_block_1/batch_normalization_1/moving_variance/AssignAssign6residual_block_1/batch_normalization_1/moving_varianceGresidual_block_1/batch_normalization_1/moving_variance/Initializer/ones*
T0*I
_class?
=;loc:@residual_block_1/batch_normalization_1/moving_variance*
_output_shapes
:
�
;residual_block_1/batch_normalization_1/moving_variance/readIdentity6residual_block_1/batch_normalization_1/moving_variance*
T0*I
_class?
=;loc:@residual_block_1/batch_normalization_1/moving_variance*
_output_shapes
:
{
6residual_block_1/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:
�
4residual_block_1/batch_normalization_1/batchnorm/addAddV2;residual_block_1/batch_normalization_1/moving_variance/read6residual_block_1/batch_normalization_1/batchnorm/add/y*
T0*
_output_shapes
:
�
6residual_block_1/batch_normalization_1/batchnorm/RsqrtRsqrt4residual_block_1/batch_normalization_1/batchnorm/add*
T0*
_output_shapes
:
�
4residual_block_1/batch_normalization_1/batchnorm/mulMul6residual_block_1/batch_normalization_1/batchnorm/Rsqrt1residual_block_1/batch_normalization_1/gamma/read*
T0*
_output_shapes
:
�
6residual_block_1/batch_normalization_1/batchnorm/mul_1Mul1residual_block_1/set_padding_to_sentinel_1/Select4residual_block_1/batch_normalization_1/batchnorm/mul*
T0*4
_output_shapes"
 :������������������
�
6residual_block_1/batch_normalization_1/batchnorm/mul_2Mul7residual_block_1/batch_normalization_1/moving_mean/read4residual_block_1/batch_normalization_1/batchnorm/mul*
T0*
_output_shapes
:
�
4residual_block_1/batch_normalization_1/batchnorm/subSub0residual_block_1/batch_normalization_1/beta/read6residual_block_1/batch_normalization_1/batchnorm/mul_2*
T0*
_output_shapes
:
�
6residual_block_1/batch_normalization_1/batchnorm/add_1AddV26residual_block_1/batch_normalization_1/batchnorm/mul_14residual_block_1/batch_normalization_1/batchnorm/sub*
T0*4
_output_shapes"
 :������������������
�
residual_block_1/Relu_1Relu6residual_block_1/batch_normalization_1/batchnorm/add_1*
T0*4
_output_shapes"
 :������������������
]
residual_block_1/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *    
�
0residual_block_1/set_padding_to_sentinel_2/ShapeShaperesidual_block_1/Relu_1*
T0*
_output_shapes
::��
�
>residual_block_1/set_padding_to_sentinel_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_1/set_padding_to_sentinel_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_1/set_padding_to_sentinel_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
8residual_block_1/set_padding_to_sentinel_2/strided_sliceStridedSlice0residual_block_1/set_padding_to_sentinel_2/Shape>residual_block_1/set_padding_to_sentinel_2/strided_slice/stack@residual_block_1/set_padding_to_sentinel_2/strided_slice/stack_1@residual_block_1/set_padding_to_sentinel_2/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
2residual_block_1/set_padding_to_sentinel_2/Shape_1Shaperesidual_block_1/Relu_1*
T0*
_output_shapes
::��
�
@residual_block_1/set_padding_to_sentinel_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_1/set_padding_to_sentinel_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_1/set_padding_to_sentinel_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
:residual_block_1/set_padding_to_sentinel_2/strided_slice_1StridedSlice2residual_block_1/set_padding_to_sentinel_2/Shape_1@residual_block_1/set_padding_to_sentinel_2/strided_slice_1/stackBresidual_block_1/set_padding_to_sentinel_2/strided_slice_1/stack_1Bresidual_block_1/set_padding_to_sentinel_2/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

=residual_block_1/set_padding_to_sentinel_2/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
�
?residual_block_1/set_padding_to_sentinel_2/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :
�
=residual_block_1/set_padding_to_sentinel_2/SequenceMask/RangeRange=residual_block_1/set_padding_to_sentinel_2/SequenceMask/Const8residual_block_1/set_padding_to_sentinel_2/strided_slice?residual_block_1/set_padding_to_sentinel_2/SequenceMask/Const_1*#
_output_shapes
:���������
�
Fresidual_block_1/set_padding_to_sentinel_2/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
Bresidual_block_1/set_padding_to_sentinel_2/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholderFresidual_block_1/set_padding_to_sentinel_2/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
<residual_block_1/set_padding_to_sentinel_2/SequenceMask/CastCastBresidual_block_1/set_padding_to_sentinel_2/SequenceMask/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
�
<residual_block_1/set_padding_to_sentinel_2/SequenceMask/LessLess=residual_block_1/set_padding_to_sentinel_2/SequenceMask/Range<residual_block_1/set_padding_to_sentinel_2/SequenceMask/Cast*
T0*0
_output_shapes
:������������������
�
9residual_block_1/set_padding_to_sentinel_2/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
�
5residual_block_1/set_padding_to_sentinel_2/ExpandDims
ExpandDims<residual_block_1/set_padding_to_sentinel_2/SequenceMask/Less9residual_block_1/set_padding_to_sentinel_2/ExpandDims/dim*
T0
*4
_output_shapes"
 :������������������
}
;residual_block_1/set_padding_to_sentinel_2/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :
}
;residual_block_1/set_padding_to_sentinel_2/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
�
9residual_block_1/set_padding_to_sentinel_2/Tile/multiplesPack;residual_block_1/set_padding_to_sentinel_2/Tile/multiples/0;residual_block_1/set_padding_to_sentinel_2/Tile/multiples/1:residual_block_1/set_padding_to_sentinel_2/strided_slice_1*
N*
T0*
_output_shapes
:
�
/residual_block_1/set_padding_to_sentinel_2/TileTile5residual_block_1/set_padding_to_sentinel_2/ExpandDims9residual_block_1/set_padding_to_sentinel_2/Tile/multiples*
T0
*4
_output_shapes"
 :������������������
�
5residual_block_1/set_padding_to_sentinel_2/zeros_like	ZerosLikeresidual_block_1/Relu_1*
T0*4
_output_shapes"
 :������������������
�
.residual_block_1/set_padding_to_sentinel_2/addAddV25residual_block_1/set_padding_to_sentinel_2/zeros_likeresidual_block_1/Const_2*
T0*4
_output_shapes"
 :������������������
�
1residual_block_1/set_padding_to_sentinel_2/SelectSelect/residual_block_1/set_padding_to_sentinel_2/Tileresidual_block_1/Relu_1.residual_block_1/set_padding_to_sentinel_2/add*
T0*4
_output_shapes"
 :������������������
�
Aresidual_block_1/conv1d_1/kernel/Initializer/random_uniform/shapeConst*3
_class)
'%loc:@residual_block_1/conv1d_1/kernel*
_output_shapes
:*
dtype0*!
valueB"      
   
�
?residual_block_1/conv1d_1/kernel/Initializer/random_uniform/minConst*3
_class)
'%loc:@residual_block_1/conv1d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *��!�
�
?residual_block_1/conv1d_1/kernel/Initializer/random_uniform/maxConst*3
_class)
'%loc:@residual_block_1/conv1d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *��!?
�
Iresidual_block_1/conv1d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniformAresidual_block_1/conv1d_1/kernel/Initializer/random_uniform/shape*
T0*3
_class)
'%loc:@residual_block_1/conv1d_1/kernel*"
_output_shapes
:
*
dtype0
�
?residual_block_1/conv1d_1/kernel/Initializer/random_uniform/subSub?residual_block_1/conv1d_1/kernel/Initializer/random_uniform/max?residual_block_1/conv1d_1/kernel/Initializer/random_uniform/min*
T0*3
_class)
'%loc:@residual_block_1/conv1d_1/kernel*
_output_shapes
: 
�
?residual_block_1/conv1d_1/kernel/Initializer/random_uniform/mulMulIresidual_block_1/conv1d_1/kernel/Initializer/random_uniform/RandomUniform?residual_block_1/conv1d_1/kernel/Initializer/random_uniform/sub*
T0*3
_class)
'%loc:@residual_block_1/conv1d_1/kernel*"
_output_shapes
:

�
;residual_block_1/conv1d_1/kernel/Initializer/random_uniformAddV2?residual_block_1/conv1d_1/kernel/Initializer/random_uniform/mul?residual_block_1/conv1d_1/kernel/Initializer/random_uniform/min*
T0*3
_class)
'%loc:@residual_block_1/conv1d_1/kernel*"
_output_shapes
:

�
 residual_block_1/conv1d_1/kernel
VariableV2*3
_class)
'%loc:@residual_block_1/conv1d_1/kernel*"
_output_shapes
:
*
dtype0*
shape:

�
'residual_block_1/conv1d_1/kernel/AssignAssign residual_block_1/conv1d_1/kernel;residual_block_1/conv1d_1/kernel/Initializer/random_uniform*
T0*3
_class)
'%loc:@residual_block_1/conv1d_1/kernel*"
_output_shapes
:

�
%residual_block_1/conv1d_1/kernel/readIdentity residual_block_1/conv1d_1/kernel*
T0*3
_class)
'%loc:@residual_block_1/conv1d_1/kernel*"
_output_shapes
:

�
0residual_block_1/conv1d_1/bias/Initializer/zerosConst*1
_class'
%#loc:@residual_block_1/conv1d_1/bias*
_output_shapes
:
*
dtype0*
valueB
*    
�
residual_block_1/conv1d_1/bias
VariableV2*1
_class'
%#loc:@residual_block_1/conv1d_1/bias*
_output_shapes
:
*
dtype0*
shape:

�
%residual_block_1/conv1d_1/bias/AssignAssignresidual_block_1/conv1d_1/bias0residual_block_1/conv1d_1/bias/Initializer/zeros*
T0*1
_class'
%#loc:@residual_block_1/conv1d_1/bias*
_output_shapes
:

�
#residual_block_1/conv1d_1/bias/readIdentityresidual_block_1/conv1d_1/bias*
T0*1
_class'
%#loc:@residual_block_1/conv1d_1/bias*
_output_shapes
:

z
/residual_block_1/conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
+residual_block_1/conv1d_1/Conv1D/ExpandDims
ExpandDims1residual_block_1/set_padding_to_sentinel_2/Select/residual_block_1/conv1d_1/Conv1D/ExpandDims/dim*
T0*8
_output_shapes&
$:"������������������
s
1residual_block_1/conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
-residual_block_1/conv1d_1/Conv1D/ExpandDims_1
ExpandDims%residual_block_1/conv1d_1/kernel/read1residual_block_1/conv1d_1/Conv1D/ExpandDims_1/dim*
T0*&
_output_shapes
:

�
 residual_block_1/conv1d_1/Conv1DConv2D+residual_block_1/conv1d_1/Conv1D/ExpandDims-residual_block_1/conv1d_1/Conv1D/ExpandDims_1*
T0*8
_output_shapes&
$:"������������������
*
paddingSAME*
strides

�
(residual_block_1/conv1d_1/Conv1D/SqueezeSqueeze residual_block_1/conv1d_1/Conv1D*
T0*4
_output_shapes"
 :������������������
*
squeeze_dims

���������
�
!residual_block_1/conv1d_1/BiasAddBiasAdd(residual_block_1/conv1d_1/Conv1D/Squeeze#residual_block_1/conv1d_1/bias/read*
T0*4
_output_shapes"
 :������������������

]
residual_block_1/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *    
�
0residual_block_1/set_padding_to_sentinel_3/ShapeShape!residual_block_1/conv1d_1/BiasAdd*
T0*
_output_shapes
::��
�
>residual_block_1/set_padding_to_sentinel_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_1/set_padding_to_sentinel_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_1/set_padding_to_sentinel_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
8residual_block_1/set_padding_to_sentinel_3/strided_sliceStridedSlice0residual_block_1/set_padding_to_sentinel_3/Shape>residual_block_1/set_padding_to_sentinel_3/strided_slice/stack@residual_block_1/set_padding_to_sentinel_3/strided_slice/stack_1@residual_block_1/set_padding_to_sentinel_3/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
2residual_block_1/set_padding_to_sentinel_3/Shape_1Shape!residual_block_1/conv1d_1/BiasAdd*
T0*
_output_shapes
::��
�
@residual_block_1/set_padding_to_sentinel_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_1/set_padding_to_sentinel_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_1/set_padding_to_sentinel_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
:residual_block_1/set_padding_to_sentinel_3/strided_slice_1StridedSlice2residual_block_1/set_padding_to_sentinel_3/Shape_1@residual_block_1/set_padding_to_sentinel_3/strided_slice_1/stackBresidual_block_1/set_padding_to_sentinel_3/strided_slice_1/stack_1Bresidual_block_1/set_padding_to_sentinel_3/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

=residual_block_1/set_padding_to_sentinel_3/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
�
?residual_block_1/set_padding_to_sentinel_3/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :
�
=residual_block_1/set_padding_to_sentinel_3/SequenceMask/RangeRange=residual_block_1/set_padding_to_sentinel_3/SequenceMask/Const8residual_block_1/set_padding_to_sentinel_3/strided_slice?residual_block_1/set_padding_to_sentinel_3/SequenceMask/Const_1*#
_output_shapes
:���������
�
Fresidual_block_1/set_padding_to_sentinel_3/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
Bresidual_block_1/set_padding_to_sentinel_3/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholderFresidual_block_1/set_padding_to_sentinel_3/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
<residual_block_1/set_padding_to_sentinel_3/SequenceMask/CastCastBresidual_block_1/set_padding_to_sentinel_3/SequenceMask/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
�
<residual_block_1/set_padding_to_sentinel_3/SequenceMask/LessLess=residual_block_1/set_padding_to_sentinel_3/SequenceMask/Range<residual_block_1/set_padding_to_sentinel_3/SequenceMask/Cast*
T0*0
_output_shapes
:������������������
�
9residual_block_1/set_padding_to_sentinel_3/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
�
5residual_block_1/set_padding_to_sentinel_3/ExpandDims
ExpandDims<residual_block_1/set_padding_to_sentinel_3/SequenceMask/Less9residual_block_1/set_padding_to_sentinel_3/ExpandDims/dim*
T0
*4
_output_shapes"
 :������������������
}
;residual_block_1/set_padding_to_sentinel_3/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :
}
;residual_block_1/set_padding_to_sentinel_3/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
�
9residual_block_1/set_padding_to_sentinel_3/Tile/multiplesPack;residual_block_1/set_padding_to_sentinel_3/Tile/multiples/0;residual_block_1/set_padding_to_sentinel_3/Tile/multiples/1:residual_block_1/set_padding_to_sentinel_3/strided_slice_1*
N*
T0*
_output_shapes
:
�
/residual_block_1/set_padding_to_sentinel_3/TileTile5residual_block_1/set_padding_to_sentinel_3/ExpandDims9residual_block_1/set_padding_to_sentinel_3/Tile/multiples*
T0
*4
_output_shapes"
 :������������������

�
5residual_block_1/set_padding_to_sentinel_3/zeros_like	ZerosLike!residual_block_1/conv1d_1/BiasAdd*
T0*4
_output_shapes"
 :������������������

�
.residual_block_1/set_padding_to_sentinel_3/addAddV25residual_block_1/set_padding_to_sentinel_3/zeros_likeresidual_block_1/Const_3*
T0*4
_output_shapes"
 :������������������

�
1residual_block_1/set_padding_to_sentinel_3/SelectSelect/residual_block_1/set_padding_to_sentinel_3/Tile!residual_block_1/conv1d_1/BiasAdd.residual_block_1/set_padding_to_sentinel_3/add*
T0*4
_output_shapes"
 :������������������

�
residual_block_1/addAddV2residual_block_0/add1residual_block_1/set_padding_to_sentinel_3/Select*
T0*4
_output_shapes"
 :������������������

�
;residual_block_2/batch_normalization/gamma/Initializer/onesConst*=
_class3
1/loc:@residual_block_2/batch_normalization/gamma*
_output_shapes
:
*
dtype0*
valueB
*  �?
�
*residual_block_2/batch_normalization/gamma
VariableV2*=
_class3
1/loc:@residual_block_2/batch_normalization/gamma*
_output_shapes
:
*
dtype0*
shape:

�
1residual_block_2/batch_normalization/gamma/AssignAssign*residual_block_2/batch_normalization/gamma;residual_block_2/batch_normalization/gamma/Initializer/ones*
T0*=
_class3
1/loc:@residual_block_2/batch_normalization/gamma*
_output_shapes
:

�
/residual_block_2/batch_normalization/gamma/readIdentity*residual_block_2/batch_normalization/gamma*
T0*=
_class3
1/loc:@residual_block_2/batch_normalization/gamma*
_output_shapes
:

�
;residual_block_2/batch_normalization/beta/Initializer/zerosConst*<
_class2
0.loc:@residual_block_2/batch_normalization/beta*
_output_shapes
:
*
dtype0*
valueB
*    
�
)residual_block_2/batch_normalization/beta
VariableV2*<
_class2
0.loc:@residual_block_2/batch_normalization/beta*
_output_shapes
:
*
dtype0*
shape:

�
0residual_block_2/batch_normalization/beta/AssignAssign)residual_block_2/batch_normalization/beta;residual_block_2/batch_normalization/beta/Initializer/zeros*
T0*<
_class2
0.loc:@residual_block_2/batch_normalization/beta*
_output_shapes
:

�
.residual_block_2/batch_normalization/beta/readIdentity)residual_block_2/batch_normalization/beta*
T0*<
_class2
0.loc:@residual_block_2/batch_normalization/beta*
_output_shapes
:

�
Bresidual_block_2/batch_normalization/moving_mean/Initializer/zerosConst*C
_class9
75loc:@residual_block_2/batch_normalization/moving_mean*
_output_shapes
:
*
dtype0*
valueB
*    
�
0residual_block_2/batch_normalization/moving_mean
VariableV2*C
_class9
75loc:@residual_block_2/batch_normalization/moving_mean*
_output_shapes
:
*
dtype0*
shape:

�
7residual_block_2/batch_normalization/moving_mean/AssignAssign0residual_block_2/batch_normalization/moving_meanBresidual_block_2/batch_normalization/moving_mean/Initializer/zeros*
T0*C
_class9
75loc:@residual_block_2/batch_normalization/moving_mean*
_output_shapes
:

�
5residual_block_2/batch_normalization/moving_mean/readIdentity0residual_block_2/batch_normalization/moving_mean*
T0*C
_class9
75loc:@residual_block_2/batch_normalization/moving_mean*
_output_shapes
:

�
Eresidual_block_2/batch_normalization/moving_variance/Initializer/onesConst*G
_class=
;9loc:@residual_block_2/batch_normalization/moving_variance*
_output_shapes
:
*
dtype0*
valueB
*  �?
�
4residual_block_2/batch_normalization/moving_variance
VariableV2*G
_class=
;9loc:@residual_block_2/batch_normalization/moving_variance*
_output_shapes
:
*
dtype0*
shape:

�
;residual_block_2/batch_normalization/moving_variance/AssignAssign4residual_block_2/batch_normalization/moving_varianceEresidual_block_2/batch_normalization/moving_variance/Initializer/ones*
T0*G
_class=
;9loc:@residual_block_2/batch_normalization/moving_variance*
_output_shapes
:

�
9residual_block_2/batch_normalization/moving_variance/readIdentity4residual_block_2/batch_normalization/moving_variance*
T0*G
_class=
;9loc:@residual_block_2/batch_normalization/moving_variance*
_output_shapes
:

y
4residual_block_2/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:
�
2residual_block_2/batch_normalization/batchnorm/addAddV29residual_block_2/batch_normalization/moving_variance/read4residual_block_2/batch_normalization/batchnorm/add/y*
T0*
_output_shapes
:

�
4residual_block_2/batch_normalization/batchnorm/RsqrtRsqrt2residual_block_2/batch_normalization/batchnorm/add*
T0*
_output_shapes
:

�
2residual_block_2/batch_normalization/batchnorm/mulMul4residual_block_2/batch_normalization/batchnorm/Rsqrt/residual_block_2/batch_normalization/gamma/read*
T0*
_output_shapes
:

�
4residual_block_2/batch_normalization/batchnorm/mul_1Mulresidual_block_1/add2residual_block_2/batch_normalization/batchnorm/mul*
T0*4
_output_shapes"
 :������������������

�
4residual_block_2/batch_normalization/batchnorm/mul_2Mul5residual_block_2/batch_normalization/moving_mean/read2residual_block_2/batch_normalization/batchnorm/mul*
T0*
_output_shapes
:

�
2residual_block_2/batch_normalization/batchnorm/subSub.residual_block_2/batch_normalization/beta/read4residual_block_2/batch_normalization/batchnorm/mul_2*
T0*
_output_shapes
:

�
4residual_block_2/batch_normalization/batchnorm/add_1AddV24residual_block_2/batch_normalization/batchnorm/mul_12residual_block_2/batch_normalization/batchnorm/sub*
T0*4
_output_shapes"
 :������������������

�
residual_block_2/ReluRelu4residual_block_2/batch_normalization/batchnorm/add_1*
T0*4
_output_shapes"
 :������������������

[
residual_block_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
�
.residual_block_2/set_padding_to_sentinel/ShapeShaperesidual_block_2/Relu*
T0*
_output_shapes
::��
�
<residual_block_2/set_padding_to_sentinel/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
>residual_block_2/set_padding_to_sentinel/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
>residual_block_2/set_padding_to_sentinel/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
6residual_block_2/set_padding_to_sentinel/strided_sliceStridedSlice.residual_block_2/set_padding_to_sentinel/Shape<residual_block_2/set_padding_to_sentinel/strided_slice/stack>residual_block_2/set_padding_to_sentinel/strided_slice/stack_1>residual_block_2/set_padding_to_sentinel/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
0residual_block_2/set_padding_to_sentinel/Shape_1Shaperesidual_block_2/Relu*
T0*
_output_shapes
::��
�
>residual_block_2/set_padding_to_sentinel/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_2/set_padding_to_sentinel/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_2/set_padding_to_sentinel/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
8residual_block_2/set_padding_to_sentinel/strided_slice_1StridedSlice0residual_block_2/set_padding_to_sentinel/Shape_1>residual_block_2/set_padding_to_sentinel/strided_slice_1/stack@residual_block_2/set_padding_to_sentinel/strided_slice_1/stack_1@residual_block_2/set_padding_to_sentinel/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
}
;residual_block_2/set_padding_to_sentinel/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : 

=residual_block_2/set_padding_to_sentinel/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :
�
;residual_block_2/set_padding_to_sentinel/SequenceMask/RangeRange;residual_block_2/set_padding_to_sentinel/SequenceMask/Const6residual_block_2/set_padding_to_sentinel/strided_slice=residual_block_2/set_padding_to_sentinel/SequenceMask/Const_1*#
_output_shapes
:���������
�
Dresidual_block_2/set_padding_to_sentinel/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
@residual_block_2/set_padding_to_sentinel/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholderDresidual_block_2/set_padding_to_sentinel/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
:residual_block_2/set_padding_to_sentinel/SequenceMask/CastCast@residual_block_2/set_padding_to_sentinel/SequenceMask/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
�
:residual_block_2/set_padding_to_sentinel/SequenceMask/LessLess;residual_block_2/set_padding_to_sentinel/SequenceMask/Range:residual_block_2/set_padding_to_sentinel/SequenceMask/Cast*
T0*0
_output_shapes
:������������������
�
7residual_block_2/set_padding_to_sentinel/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
�
3residual_block_2/set_padding_to_sentinel/ExpandDims
ExpandDims:residual_block_2/set_padding_to_sentinel/SequenceMask/Less7residual_block_2/set_padding_to_sentinel/ExpandDims/dim*
T0
*4
_output_shapes"
 :������������������
{
9residual_block_2/set_padding_to_sentinel/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :
{
9residual_block_2/set_padding_to_sentinel/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
�
7residual_block_2/set_padding_to_sentinel/Tile/multiplesPack9residual_block_2/set_padding_to_sentinel/Tile/multiples/09residual_block_2/set_padding_to_sentinel/Tile/multiples/18residual_block_2/set_padding_to_sentinel/strided_slice_1*
N*
T0*
_output_shapes
:
�
-residual_block_2/set_padding_to_sentinel/TileTile3residual_block_2/set_padding_to_sentinel/ExpandDims7residual_block_2/set_padding_to_sentinel/Tile/multiples*
T0
*4
_output_shapes"
 :������������������

�
3residual_block_2/set_padding_to_sentinel/zeros_like	ZerosLikeresidual_block_2/Relu*
T0*4
_output_shapes"
 :������������������

�
,residual_block_2/set_padding_to_sentinel/addAddV23residual_block_2/set_padding_to_sentinel/zeros_likeresidual_block_2/Const*
T0*4
_output_shapes"
 :������������������

�
/residual_block_2/set_padding_to_sentinel/SelectSelect-residual_block_2/set_padding_to_sentinel/Tileresidual_block_2/Relu,residual_block_2/set_padding_to_sentinel/add*
T0*4
_output_shapes"
 :������������������

�
?residual_block_2/conv1d/kernel/Initializer/random_uniform/shapeConst*1
_class'
%#loc:@residual_block_2/conv1d/kernel*
_output_shapes
:*
dtype0*!
valueB"	   
      
�
=residual_block_2/conv1d/kernel/Initializer/random_uniform/minConst*1
_class'
%#loc:@residual_block_2/conv1d/kernel*
_output_shapes
: *
dtype0*
valueB
 *��W�
�
=residual_block_2/conv1d/kernel/Initializer/random_uniform/maxConst*1
_class'
%#loc:@residual_block_2/conv1d/kernel*
_output_shapes
: *
dtype0*
valueB
 *��W>
�
Gresidual_block_2/conv1d/kernel/Initializer/random_uniform/RandomUniformRandomUniform?residual_block_2/conv1d/kernel/Initializer/random_uniform/shape*
T0*1
_class'
%#loc:@residual_block_2/conv1d/kernel*"
_output_shapes
:	
*
dtype0
�
=residual_block_2/conv1d/kernel/Initializer/random_uniform/subSub=residual_block_2/conv1d/kernel/Initializer/random_uniform/max=residual_block_2/conv1d/kernel/Initializer/random_uniform/min*
T0*1
_class'
%#loc:@residual_block_2/conv1d/kernel*
_output_shapes
: 
�
=residual_block_2/conv1d/kernel/Initializer/random_uniform/mulMulGresidual_block_2/conv1d/kernel/Initializer/random_uniform/RandomUniform=residual_block_2/conv1d/kernel/Initializer/random_uniform/sub*
T0*1
_class'
%#loc:@residual_block_2/conv1d/kernel*"
_output_shapes
:	

�
9residual_block_2/conv1d/kernel/Initializer/random_uniformAddV2=residual_block_2/conv1d/kernel/Initializer/random_uniform/mul=residual_block_2/conv1d/kernel/Initializer/random_uniform/min*
T0*1
_class'
%#loc:@residual_block_2/conv1d/kernel*"
_output_shapes
:	

�
residual_block_2/conv1d/kernel
VariableV2*1
_class'
%#loc:@residual_block_2/conv1d/kernel*"
_output_shapes
:	
*
dtype0*
shape:	

�
%residual_block_2/conv1d/kernel/AssignAssignresidual_block_2/conv1d/kernel9residual_block_2/conv1d/kernel/Initializer/random_uniform*
T0*1
_class'
%#loc:@residual_block_2/conv1d/kernel*"
_output_shapes
:	

�
#residual_block_2/conv1d/kernel/readIdentityresidual_block_2/conv1d/kernel*
T0*1
_class'
%#loc:@residual_block_2/conv1d/kernel*"
_output_shapes
:	

�
.residual_block_2/conv1d/bias/Initializer/zerosConst*/
_class%
#!loc:@residual_block_2/conv1d/bias*
_output_shapes
:*
dtype0*
valueB*    
�
residual_block_2/conv1d/bias
VariableV2*/
_class%
#!loc:@residual_block_2/conv1d/bias*
_output_shapes
:*
dtype0*
shape:
�
#residual_block_2/conv1d/bias/AssignAssignresidual_block_2/conv1d/bias.residual_block_2/conv1d/bias/Initializer/zeros*
T0*/
_class%
#!loc:@residual_block_2/conv1d/bias*
_output_shapes
:
�
!residual_block_2/conv1d/bias/readIdentityresidual_block_2/conv1d/bias*
T0*/
_class%
#!loc:@residual_block_2/conv1d/bias*
_output_shapes
:
v
,residual_block_2/conv1d/Conv1D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB:	
�
+residual_block_2/conv1d/Conv1D/filter_shapeConst*
_output_shapes
:*
dtype0*!
valueB"	   
      
}
$residual_block_2/conv1d/Conv1D/stackConst*
_output_shapes

:*
dtype0*!
valueB"$   $   
�
$residual_block_2/conv1d/Conv1D/ShapeShape/residual_block_2/set_padding_to_sentinel/Select*
T0*
_output_shapes
::��
|
2residual_block_2/conv1d/Conv1D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
~
4residual_block_2/conv1d/Conv1D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
~
4residual_block_2/conv1d/Conv1D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
,residual_block_2/conv1d/Conv1D/strided_sliceStridedSlice$residual_block_2/conv1d/Conv1D/Shape2residual_block_2/conv1d/Conv1D/strided_slice/stack4residual_block_2/conv1d/Conv1D/strided_slice/stack_14residual_block_2/conv1d/Conv1D/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
&residual_block_2/conv1d/Conv1D/stack_1Pack,residual_block_2/conv1d/Conv1D/strided_slice*
N*
T0*
_output_shapes
:
�
Sresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
�
Uresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
�
Uresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
�
Mresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_sliceStridedSlice$residual_block_2/conv1d/Conv1D/stackSresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice/stackUresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice/stack_1Uresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice/stack_2*
Index0*
T0*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask
�
Uresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       
�
Wresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
�
Wresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
�
Oresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1StridedSlice$residual_block_2/conv1d/Conv1D/stackUresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1/stackWresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1/stack_1Wresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask
�
Cresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/addAddV2&residual_block_2/conv1d/Conv1D/stack_1Mresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice*
T0*
_output_shapes
:
�
Eresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/add_1AddV2Cresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/addOresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1*
T0*
_output_shapes
:
�
Cresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/modFloorModEresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/add_1,residual_block_2/conv1d/Conv1D/dilation_rate*
T0*
_output_shapes
:
�
Cresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/subSub,residual_block_2/conv1d/Conv1D/dilation_rateCresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/mod*
T0*
_output_shapes
:
�
Eresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/mod_1FloorModCresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/sub,residual_block_2/conv1d/Conv1D/dilation_rate*
T0*
_output_shapes
:
�
Eresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/add_2AddV2Oresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1Eresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/mod_1*
T0*
_output_shapes
:
�
Uresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
�
Wresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Wresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
Oresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2StridedSliceMresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_sliceUresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2/stackWresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2/stack_1Wresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
Uresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 
�
Wresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Wresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
Oresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3StridedSliceEresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/add_2Uresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3/stackWresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3/stack_1Wresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
Jresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/paddings/0PackOresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2Oresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3*
N*
T0*
_output_shapes
:
�
Hresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/paddingsPackJresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/paddings/0*
N*
T0*
_output_shapes

:
�
Uresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 
�
Wresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Wresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
Oresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4StridedSliceEresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/mod_1Uresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4/stackWresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4/stack_1Wresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
Iresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/crops/0/0Const*
_output_shapes
: *
dtype0*
value	B : 
�
Gresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/crops/0PackIresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/crops/0/0Oresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4*
N*
T0*
_output_shapes
:
�
Eresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/cropsPackGresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/crops/0*
N*
T0*
_output_shapes

:
~
4residual_block_2/conv1d/Conv1D/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
�
6residual_block_2/conv1d/Conv1D/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
6residual_block_2/conv1d/Conv1D/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
.residual_block_2/conv1d/Conv1D/strided_slice_1StridedSliceHresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/paddings4residual_block_2/conv1d/Conv1D/strided_slice_1/stack6residual_block_2/conv1d/Conv1D/strided_slice_1/stack_16residual_block_2/conv1d/Conv1D/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes

:
r
0residual_block_2/conv1d/Conv1D/concat/concat_dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
,residual_block_2/conv1d/Conv1D/concat/concatIdentity.residual_block_2/conv1d/Conv1D/strided_slice_1*
T0*
_output_shapes

:
~
4residual_block_2/conv1d/Conv1D/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
�
6residual_block_2/conv1d/Conv1D/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
6residual_block_2/conv1d/Conv1D/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
.residual_block_2/conv1d/Conv1D/strided_slice_2StridedSliceEresidual_block_2/conv1d/Conv1D/required_space_to_batch_paddings/crops4residual_block_2/conv1d/Conv1D/strided_slice_2/stack6residual_block_2/conv1d/Conv1D/strided_slice_2/stack_16residual_block_2/conv1d/Conv1D/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes

:
t
2residual_block_2/conv1d/Conv1D/concat_1/concat_dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
.residual_block_2/conv1d/Conv1D/concat_1/concatIdentity.residual_block_2/conv1d/Conv1D/strided_slice_2*
T0*
_output_shapes

:
�
9residual_block_2/conv1d/Conv1D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB:	
�
-residual_block_2/conv1d/Conv1D/SpaceToBatchNDSpaceToBatchND/residual_block_2/set_padding_to_sentinel/Select9residual_block_2/conv1d/Conv1D/SpaceToBatchND/block_shape,residual_block_2/conv1d/Conv1D/concat/concat*
T0*4
_output_shapes"
 :������������������

x
-residual_block_2/conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
)residual_block_2/conv1d/Conv1D/ExpandDims
ExpandDims-residual_block_2/conv1d/Conv1D/SpaceToBatchND-residual_block_2/conv1d/Conv1D/ExpandDims/dim*
T0*8
_output_shapes&
$:"������������������

q
/residual_block_2/conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
+residual_block_2/conv1d/Conv1D/ExpandDims_1
ExpandDims#residual_block_2/conv1d/kernel/read/residual_block_2/conv1d/Conv1D/ExpandDims_1/dim*
T0*&
_output_shapes
:	

�
residual_block_2/conv1d/Conv1DConv2D)residual_block_2/conv1d/Conv1D/ExpandDims+residual_block_2/conv1d/Conv1D/ExpandDims_1*
T0*8
_output_shapes&
$:"������������������*
paddingVALID*
strides

�
&residual_block_2/conv1d/Conv1D/SqueezeSqueezeresidual_block_2/conv1d/Conv1D*
T0*4
_output_shapes"
 :������������������*
squeeze_dims

���������
�
9residual_block_2/conv1d/Conv1D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB:	
�
-residual_block_2/conv1d/Conv1D/BatchToSpaceNDBatchToSpaceND&residual_block_2/conv1d/Conv1D/Squeeze9residual_block_2/conv1d/Conv1D/BatchToSpaceND/block_shape.residual_block_2/conv1d/Conv1D/concat_1/concat*
T0*4
_output_shapes"
 :������������������
�
residual_block_2/conv1d/BiasAddBiasAdd-residual_block_2/conv1d/Conv1D/BatchToSpaceND!residual_block_2/conv1d/bias/read*
T0*4
_output_shapes"
 :������������������
]
residual_block_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
�
0residual_block_2/set_padding_to_sentinel_1/ShapeShaperesidual_block_2/conv1d/BiasAdd*
T0*
_output_shapes
::��
�
>residual_block_2/set_padding_to_sentinel_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_2/set_padding_to_sentinel_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_2/set_padding_to_sentinel_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
8residual_block_2/set_padding_to_sentinel_1/strided_sliceStridedSlice0residual_block_2/set_padding_to_sentinel_1/Shape>residual_block_2/set_padding_to_sentinel_1/strided_slice/stack@residual_block_2/set_padding_to_sentinel_1/strided_slice/stack_1@residual_block_2/set_padding_to_sentinel_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
2residual_block_2/set_padding_to_sentinel_1/Shape_1Shaperesidual_block_2/conv1d/BiasAdd*
T0*
_output_shapes
::��
�
@residual_block_2/set_padding_to_sentinel_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_2/set_padding_to_sentinel_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_2/set_padding_to_sentinel_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
:residual_block_2/set_padding_to_sentinel_1/strided_slice_1StridedSlice2residual_block_2/set_padding_to_sentinel_1/Shape_1@residual_block_2/set_padding_to_sentinel_1/strided_slice_1/stackBresidual_block_2/set_padding_to_sentinel_1/strided_slice_1/stack_1Bresidual_block_2/set_padding_to_sentinel_1/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

=residual_block_2/set_padding_to_sentinel_1/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
�
?residual_block_2/set_padding_to_sentinel_1/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :
�
=residual_block_2/set_padding_to_sentinel_1/SequenceMask/RangeRange=residual_block_2/set_padding_to_sentinel_1/SequenceMask/Const8residual_block_2/set_padding_to_sentinel_1/strided_slice?residual_block_2/set_padding_to_sentinel_1/SequenceMask/Const_1*#
_output_shapes
:���������
�
Fresidual_block_2/set_padding_to_sentinel_1/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
Bresidual_block_2/set_padding_to_sentinel_1/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholderFresidual_block_2/set_padding_to_sentinel_1/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
<residual_block_2/set_padding_to_sentinel_1/SequenceMask/CastCastBresidual_block_2/set_padding_to_sentinel_1/SequenceMask/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
�
<residual_block_2/set_padding_to_sentinel_1/SequenceMask/LessLess=residual_block_2/set_padding_to_sentinel_1/SequenceMask/Range<residual_block_2/set_padding_to_sentinel_1/SequenceMask/Cast*
T0*0
_output_shapes
:������������������
�
9residual_block_2/set_padding_to_sentinel_1/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
�
5residual_block_2/set_padding_to_sentinel_1/ExpandDims
ExpandDims<residual_block_2/set_padding_to_sentinel_1/SequenceMask/Less9residual_block_2/set_padding_to_sentinel_1/ExpandDims/dim*
T0
*4
_output_shapes"
 :������������������
}
;residual_block_2/set_padding_to_sentinel_1/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :
}
;residual_block_2/set_padding_to_sentinel_1/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
�
9residual_block_2/set_padding_to_sentinel_1/Tile/multiplesPack;residual_block_2/set_padding_to_sentinel_1/Tile/multiples/0;residual_block_2/set_padding_to_sentinel_1/Tile/multiples/1:residual_block_2/set_padding_to_sentinel_1/strided_slice_1*
N*
T0*
_output_shapes
:
�
/residual_block_2/set_padding_to_sentinel_1/TileTile5residual_block_2/set_padding_to_sentinel_1/ExpandDims9residual_block_2/set_padding_to_sentinel_1/Tile/multiples*
T0
*4
_output_shapes"
 :������������������
�
5residual_block_2/set_padding_to_sentinel_1/zeros_like	ZerosLikeresidual_block_2/conv1d/BiasAdd*
T0*4
_output_shapes"
 :������������������
�
.residual_block_2/set_padding_to_sentinel_1/addAddV25residual_block_2/set_padding_to_sentinel_1/zeros_likeresidual_block_2/Const_1*
T0*4
_output_shapes"
 :������������������
�
1residual_block_2/set_padding_to_sentinel_1/SelectSelect/residual_block_2/set_padding_to_sentinel_1/Tileresidual_block_2/conv1d/BiasAdd.residual_block_2/set_padding_to_sentinel_1/add*
T0*4
_output_shapes"
 :������������������
�
=residual_block_2/batch_normalization_1/gamma/Initializer/onesConst*?
_class5
31loc:@residual_block_2/batch_normalization_1/gamma*
_output_shapes
:*
dtype0*
valueB*  �?
�
,residual_block_2/batch_normalization_1/gamma
VariableV2*?
_class5
31loc:@residual_block_2/batch_normalization_1/gamma*
_output_shapes
:*
dtype0*
shape:
�
3residual_block_2/batch_normalization_1/gamma/AssignAssign,residual_block_2/batch_normalization_1/gamma=residual_block_2/batch_normalization_1/gamma/Initializer/ones*
T0*?
_class5
31loc:@residual_block_2/batch_normalization_1/gamma*
_output_shapes
:
�
1residual_block_2/batch_normalization_1/gamma/readIdentity,residual_block_2/batch_normalization_1/gamma*
T0*?
_class5
31loc:@residual_block_2/batch_normalization_1/gamma*
_output_shapes
:
�
=residual_block_2/batch_normalization_1/beta/Initializer/zerosConst*>
_class4
20loc:@residual_block_2/batch_normalization_1/beta*
_output_shapes
:*
dtype0*
valueB*    
�
+residual_block_2/batch_normalization_1/beta
VariableV2*>
_class4
20loc:@residual_block_2/batch_normalization_1/beta*
_output_shapes
:*
dtype0*
shape:
�
2residual_block_2/batch_normalization_1/beta/AssignAssign+residual_block_2/batch_normalization_1/beta=residual_block_2/batch_normalization_1/beta/Initializer/zeros*
T0*>
_class4
20loc:@residual_block_2/batch_normalization_1/beta*
_output_shapes
:
�
0residual_block_2/batch_normalization_1/beta/readIdentity+residual_block_2/batch_normalization_1/beta*
T0*>
_class4
20loc:@residual_block_2/batch_normalization_1/beta*
_output_shapes
:
�
Dresidual_block_2/batch_normalization_1/moving_mean/Initializer/zerosConst*E
_class;
97loc:@residual_block_2/batch_normalization_1/moving_mean*
_output_shapes
:*
dtype0*
valueB*    
�
2residual_block_2/batch_normalization_1/moving_mean
VariableV2*E
_class;
97loc:@residual_block_2/batch_normalization_1/moving_mean*
_output_shapes
:*
dtype0*
shape:
�
9residual_block_2/batch_normalization_1/moving_mean/AssignAssign2residual_block_2/batch_normalization_1/moving_meanDresidual_block_2/batch_normalization_1/moving_mean/Initializer/zeros*
T0*E
_class;
97loc:@residual_block_2/batch_normalization_1/moving_mean*
_output_shapes
:
�
7residual_block_2/batch_normalization_1/moving_mean/readIdentity2residual_block_2/batch_normalization_1/moving_mean*
T0*E
_class;
97loc:@residual_block_2/batch_normalization_1/moving_mean*
_output_shapes
:
�
Gresidual_block_2/batch_normalization_1/moving_variance/Initializer/onesConst*I
_class?
=;loc:@residual_block_2/batch_normalization_1/moving_variance*
_output_shapes
:*
dtype0*
valueB*  �?
�
6residual_block_2/batch_normalization_1/moving_variance
VariableV2*I
_class?
=;loc:@residual_block_2/batch_normalization_1/moving_variance*
_output_shapes
:*
dtype0*
shape:
�
=residual_block_2/batch_normalization_1/moving_variance/AssignAssign6residual_block_2/batch_normalization_1/moving_varianceGresidual_block_2/batch_normalization_1/moving_variance/Initializer/ones*
T0*I
_class?
=;loc:@residual_block_2/batch_normalization_1/moving_variance*
_output_shapes
:
�
;residual_block_2/batch_normalization_1/moving_variance/readIdentity6residual_block_2/batch_normalization_1/moving_variance*
T0*I
_class?
=;loc:@residual_block_2/batch_normalization_1/moving_variance*
_output_shapes
:
{
6residual_block_2/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:
�
4residual_block_2/batch_normalization_1/batchnorm/addAddV2;residual_block_2/batch_normalization_1/moving_variance/read6residual_block_2/batch_normalization_1/batchnorm/add/y*
T0*
_output_shapes
:
�
6residual_block_2/batch_normalization_1/batchnorm/RsqrtRsqrt4residual_block_2/batch_normalization_1/batchnorm/add*
T0*
_output_shapes
:
�
4residual_block_2/batch_normalization_1/batchnorm/mulMul6residual_block_2/batch_normalization_1/batchnorm/Rsqrt1residual_block_2/batch_normalization_1/gamma/read*
T0*
_output_shapes
:
�
6residual_block_2/batch_normalization_1/batchnorm/mul_1Mul1residual_block_2/set_padding_to_sentinel_1/Select4residual_block_2/batch_normalization_1/batchnorm/mul*
T0*4
_output_shapes"
 :������������������
�
6residual_block_2/batch_normalization_1/batchnorm/mul_2Mul7residual_block_2/batch_normalization_1/moving_mean/read4residual_block_2/batch_normalization_1/batchnorm/mul*
T0*
_output_shapes
:
�
4residual_block_2/batch_normalization_1/batchnorm/subSub0residual_block_2/batch_normalization_1/beta/read6residual_block_2/batch_normalization_1/batchnorm/mul_2*
T0*
_output_shapes
:
�
6residual_block_2/batch_normalization_1/batchnorm/add_1AddV26residual_block_2/batch_normalization_1/batchnorm/mul_14residual_block_2/batch_normalization_1/batchnorm/sub*
T0*4
_output_shapes"
 :������������������
�
residual_block_2/Relu_1Relu6residual_block_2/batch_normalization_1/batchnorm/add_1*
T0*4
_output_shapes"
 :������������������
]
residual_block_2/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *    
�
0residual_block_2/set_padding_to_sentinel_2/ShapeShaperesidual_block_2/Relu_1*
T0*
_output_shapes
::��
�
>residual_block_2/set_padding_to_sentinel_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_2/set_padding_to_sentinel_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_2/set_padding_to_sentinel_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
8residual_block_2/set_padding_to_sentinel_2/strided_sliceStridedSlice0residual_block_2/set_padding_to_sentinel_2/Shape>residual_block_2/set_padding_to_sentinel_2/strided_slice/stack@residual_block_2/set_padding_to_sentinel_2/strided_slice/stack_1@residual_block_2/set_padding_to_sentinel_2/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
2residual_block_2/set_padding_to_sentinel_2/Shape_1Shaperesidual_block_2/Relu_1*
T0*
_output_shapes
::��
�
@residual_block_2/set_padding_to_sentinel_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_2/set_padding_to_sentinel_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_2/set_padding_to_sentinel_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
:residual_block_2/set_padding_to_sentinel_2/strided_slice_1StridedSlice2residual_block_2/set_padding_to_sentinel_2/Shape_1@residual_block_2/set_padding_to_sentinel_2/strided_slice_1/stackBresidual_block_2/set_padding_to_sentinel_2/strided_slice_1/stack_1Bresidual_block_2/set_padding_to_sentinel_2/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

=residual_block_2/set_padding_to_sentinel_2/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
�
?residual_block_2/set_padding_to_sentinel_2/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :
�
=residual_block_2/set_padding_to_sentinel_2/SequenceMask/RangeRange=residual_block_2/set_padding_to_sentinel_2/SequenceMask/Const8residual_block_2/set_padding_to_sentinel_2/strided_slice?residual_block_2/set_padding_to_sentinel_2/SequenceMask/Const_1*#
_output_shapes
:���������
�
Fresidual_block_2/set_padding_to_sentinel_2/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
Bresidual_block_2/set_padding_to_sentinel_2/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholderFresidual_block_2/set_padding_to_sentinel_2/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
<residual_block_2/set_padding_to_sentinel_2/SequenceMask/CastCastBresidual_block_2/set_padding_to_sentinel_2/SequenceMask/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
�
<residual_block_2/set_padding_to_sentinel_2/SequenceMask/LessLess=residual_block_2/set_padding_to_sentinel_2/SequenceMask/Range<residual_block_2/set_padding_to_sentinel_2/SequenceMask/Cast*
T0*0
_output_shapes
:������������������
�
9residual_block_2/set_padding_to_sentinel_2/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
�
5residual_block_2/set_padding_to_sentinel_2/ExpandDims
ExpandDims<residual_block_2/set_padding_to_sentinel_2/SequenceMask/Less9residual_block_2/set_padding_to_sentinel_2/ExpandDims/dim*
T0
*4
_output_shapes"
 :������������������
}
;residual_block_2/set_padding_to_sentinel_2/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :
}
;residual_block_2/set_padding_to_sentinel_2/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
�
9residual_block_2/set_padding_to_sentinel_2/Tile/multiplesPack;residual_block_2/set_padding_to_sentinel_2/Tile/multiples/0;residual_block_2/set_padding_to_sentinel_2/Tile/multiples/1:residual_block_2/set_padding_to_sentinel_2/strided_slice_1*
N*
T0*
_output_shapes
:
�
/residual_block_2/set_padding_to_sentinel_2/TileTile5residual_block_2/set_padding_to_sentinel_2/ExpandDims9residual_block_2/set_padding_to_sentinel_2/Tile/multiples*
T0
*4
_output_shapes"
 :������������������
�
5residual_block_2/set_padding_to_sentinel_2/zeros_like	ZerosLikeresidual_block_2/Relu_1*
T0*4
_output_shapes"
 :������������������
�
.residual_block_2/set_padding_to_sentinel_2/addAddV25residual_block_2/set_padding_to_sentinel_2/zeros_likeresidual_block_2/Const_2*
T0*4
_output_shapes"
 :������������������
�
1residual_block_2/set_padding_to_sentinel_2/SelectSelect/residual_block_2/set_padding_to_sentinel_2/Tileresidual_block_2/Relu_1.residual_block_2/set_padding_to_sentinel_2/add*
T0*4
_output_shapes"
 :������������������
�
Aresidual_block_2/conv1d_1/kernel/Initializer/random_uniform/shapeConst*3
_class)
'%loc:@residual_block_2/conv1d_1/kernel*
_output_shapes
:*
dtype0*!
valueB"      
   
�
?residual_block_2/conv1d_1/kernel/Initializer/random_uniform/minConst*3
_class)
'%loc:@residual_block_2/conv1d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *��!�
�
?residual_block_2/conv1d_1/kernel/Initializer/random_uniform/maxConst*3
_class)
'%loc:@residual_block_2/conv1d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *��!?
�
Iresidual_block_2/conv1d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniformAresidual_block_2/conv1d_1/kernel/Initializer/random_uniform/shape*
T0*3
_class)
'%loc:@residual_block_2/conv1d_1/kernel*"
_output_shapes
:
*
dtype0
�
?residual_block_2/conv1d_1/kernel/Initializer/random_uniform/subSub?residual_block_2/conv1d_1/kernel/Initializer/random_uniform/max?residual_block_2/conv1d_1/kernel/Initializer/random_uniform/min*
T0*3
_class)
'%loc:@residual_block_2/conv1d_1/kernel*
_output_shapes
: 
�
?residual_block_2/conv1d_1/kernel/Initializer/random_uniform/mulMulIresidual_block_2/conv1d_1/kernel/Initializer/random_uniform/RandomUniform?residual_block_2/conv1d_1/kernel/Initializer/random_uniform/sub*
T0*3
_class)
'%loc:@residual_block_2/conv1d_1/kernel*"
_output_shapes
:

�
;residual_block_2/conv1d_1/kernel/Initializer/random_uniformAddV2?residual_block_2/conv1d_1/kernel/Initializer/random_uniform/mul?residual_block_2/conv1d_1/kernel/Initializer/random_uniform/min*
T0*3
_class)
'%loc:@residual_block_2/conv1d_1/kernel*"
_output_shapes
:

�
 residual_block_2/conv1d_1/kernel
VariableV2*3
_class)
'%loc:@residual_block_2/conv1d_1/kernel*"
_output_shapes
:
*
dtype0*
shape:

�
'residual_block_2/conv1d_1/kernel/AssignAssign residual_block_2/conv1d_1/kernel;residual_block_2/conv1d_1/kernel/Initializer/random_uniform*
T0*3
_class)
'%loc:@residual_block_2/conv1d_1/kernel*"
_output_shapes
:

�
%residual_block_2/conv1d_1/kernel/readIdentity residual_block_2/conv1d_1/kernel*
T0*3
_class)
'%loc:@residual_block_2/conv1d_1/kernel*"
_output_shapes
:

�
0residual_block_2/conv1d_1/bias/Initializer/zerosConst*1
_class'
%#loc:@residual_block_2/conv1d_1/bias*
_output_shapes
:
*
dtype0*
valueB
*    
�
residual_block_2/conv1d_1/bias
VariableV2*1
_class'
%#loc:@residual_block_2/conv1d_1/bias*
_output_shapes
:
*
dtype0*
shape:

�
%residual_block_2/conv1d_1/bias/AssignAssignresidual_block_2/conv1d_1/bias0residual_block_2/conv1d_1/bias/Initializer/zeros*
T0*1
_class'
%#loc:@residual_block_2/conv1d_1/bias*
_output_shapes
:

�
#residual_block_2/conv1d_1/bias/readIdentityresidual_block_2/conv1d_1/bias*
T0*1
_class'
%#loc:@residual_block_2/conv1d_1/bias*
_output_shapes
:

z
/residual_block_2/conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
+residual_block_2/conv1d_1/Conv1D/ExpandDims
ExpandDims1residual_block_2/set_padding_to_sentinel_2/Select/residual_block_2/conv1d_1/Conv1D/ExpandDims/dim*
T0*8
_output_shapes&
$:"������������������
s
1residual_block_2/conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
-residual_block_2/conv1d_1/Conv1D/ExpandDims_1
ExpandDims%residual_block_2/conv1d_1/kernel/read1residual_block_2/conv1d_1/Conv1D/ExpandDims_1/dim*
T0*&
_output_shapes
:

�
 residual_block_2/conv1d_1/Conv1DConv2D+residual_block_2/conv1d_1/Conv1D/ExpandDims-residual_block_2/conv1d_1/Conv1D/ExpandDims_1*
T0*8
_output_shapes&
$:"������������������
*
paddingSAME*
strides

�
(residual_block_2/conv1d_1/Conv1D/SqueezeSqueeze residual_block_2/conv1d_1/Conv1D*
T0*4
_output_shapes"
 :������������������
*
squeeze_dims

���������
�
!residual_block_2/conv1d_1/BiasAddBiasAdd(residual_block_2/conv1d_1/Conv1D/Squeeze#residual_block_2/conv1d_1/bias/read*
T0*4
_output_shapes"
 :������������������

]
residual_block_2/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *    
�
0residual_block_2/set_padding_to_sentinel_3/ShapeShape!residual_block_2/conv1d_1/BiasAdd*
T0*
_output_shapes
::��
�
>residual_block_2/set_padding_to_sentinel_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_2/set_padding_to_sentinel_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_2/set_padding_to_sentinel_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
8residual_block_2/set_padding_to_sentinel_3/strided_sliceStridedSlice0residual_block_2/set_padding_to_sentinel_3/Shape>residual_block_2/set_padding_to_sentinel_3/strided_slice/stack@residual_block_2/set_padding_to_sentinel_3/strided_slice/stack_1@residual_block_2/set_padding_to_sentinel_3/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
2residual_block_2/set_padding_to_sentinel_3/Shape_1Shape!residual_block_2/conv1d_1/BiasAdd*
T0*
_output_shapes
::��
�
@residual_block_2/set_padding_to_sentinel_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_2/set_padding_to_sentinel_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_2/set_padding_to_sentinel_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
:residual_block_2/set_padding_to_sentinel_3/strided_slice_1StridedSlice2residual_block_2/set_padding_to_sentinel_3/Shape_1@residual_block_2/set_padding_to_sentinel_3/strided_slice_1/stackBresidual_block_2/set_padding_to_sentinel_3/strided_slice_1/stack_1Bresidual_block_2/set_padding_to_sentinel_3/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

=residual_block_2/set_padding_to_sentinel_3/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
�
?residual_block_2/set_padding_to_sentinel_3/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :
�
=residual_block_2/set_padding_to_sentinel_3/SequenceMask/RangeRange=residual_block_2/set_padding_to_sentinel_3/SequenceMask/Const8residual_block_2/set_padding_to_sentinel_3/strided_slice?residual_block_2/set_padding_to_sentinel_3/SequenceMask/Const_1*#
_output_shapes
:���������
�
Fresidual_block_2/set_padding_to_sentinel_3/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
Bresidual_block_2/set_padding_to_sentinel_3/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholderFresidual_block_2/set_padding_to_sentinel_3/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
<residual_block_2/set_padding_to_sentinel_3/SequenceMask/CastCastBresidual_block_2/set_padding_to_sentinel_3/SequenceMask/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
�
<residual_block_2/set_padding_to_sentinel_3/SequenceMask/LessLess=residual_block_2/set_padding_to_sentinel_3/SequenceMask/Range<residual_block_2/set_padding_to_sentinel_3/SequenceMask/Cast*
T0*0
_output_shapes
:������������������
�
9residual_block_2/set_padding_to_sentinel_3/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
�
5residual_block_2/set_padding_to_sentinel_3/ExpandDims
ExpandDims<residual_block_2/set_padding_to_sentinel_3/SequenceMask/Less9residual_block_2/set_padding_to_sentinel_3/ExpandDims/dim*
T0
*4
_output_shapes"
 :������������������
}
;residual_block_2/set_padding_to_sentinel_3/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :
}
;residual_block_2/set_padding_to_sentinel_3/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
�
9residual_block_2/set_padding_to_sentinel_3/Tile/multiplesPack;residual_block_2/set_padding_to_sentinel_3/Tile/multiples/0;residual_block_2/set_padding_to_sentinel_3/Tile/multiples/1:residual_block_2/set_padding_to_sentinel_3/strided_slice_1*
N*
T0*
_output_shapes
:
�
/residual_block_2/set_padding_to_sentinel_3/TileTile5residual_block_2/set_padding_to_sentinel_3/ExpandDims9residual_block_2/set_padding_to_sentinel_3/Tile/multiples*
T0
*4
_output_shapes"
 :������������������

�
5residual_block_2/set_padding_to_sentinel_3/zeros_like	ZerosLike!residual_block_2/conv1d_1/BiasAdd*
T0*4
_output_shapes"
 :������������������

�
.residual_block_2/set_padding_to_sentinel_3/addAddV25residual_block_2/set_padding_to_sentinel_3/zeros_likeresidual_block_2/Const_3*
T0*4
_output_shapes"
 :������������������

�
1residual_block_2/set_padding_to_sentinel_3/SelectSelect/residual_block_2/set_padding_to_sentinel_3/Tile!residual_block_2/conv1d_1/BiasAdd.residual_block_2/set_padding_to_sentinel_3/add*
T0*4
_output_shapes"
 :������������������

�
residual_block_2/addAddV2residual_block_1/add1residual_block_2/set_padding_to_sentinel_3/Select*
T0*4
_output_shapes"
 :������������������

�
;residual_block_3/batch_normalization/gamma/Initializer/onesConst*=
_class3
1/loc:@residual_block_3/batch_normalization/gamma*
_output_shapes
:
*
dtype0*
valueB
*  �?
�
*residual_block_3/batch_normalization/gamma
VariableV2*=
_class3
1/loc:@residual_block_3/batch_normalization/gamma*
_output_shapes
:
*
dtype0*
shape:

�
1residual_block_3/batch_normalization/gamma/AssignAssign*residual_block_3/batch_normalization/gamma;residual_block_3/batch_normalization/gamma/Initializer/ones*
T0*=
_class3
1/loc:@residual_block_3/batch_normalization/gamma*
_output_shapes
:

�
/residual_block_3/batch_normalization/gamma/readIdentity*residual_block_3/batch_normalization/gamma*
T0*=
_class3
1/loc:@residual_block_3/batch_normalization/gamma*
_output_shapes
:

�
;residual_block_3/batch_normalization/beta/Initializer/zerosConst*<
_class2
0.loc:@residual_block_3/batch_normalization/beta*
_output_shapes
:
*
dtype0*
valueB
*    
�
)residual_block_3/batch_normalization/beta
VariableV2*<
_class2
0.loc:@residual_block_3/batch_normalization/beta*
_output_shapes
:
*
dtype0*
shape:

�
0residual_block_3/batch_normalization/beta/AssignAssign)residual_block_3/batch_normalization/beta;residual_block_3/batch_normalization/beta/Initializer/zeros*
T0*<
_class2
0.loc:@residual_block_3/batch_normalization/beta*
_output_shapes
:

�
.residual_block_3/batch_normalization/beta/readIdentity)residual_block_3/batch_normalization/beta*
T0*<
_class2
0.loc:@residual_block_3/batch_normalization/beta*
_output_shapes
:

�
Bresidual_block_3/batch_normalization/moving_mean/Initializer/zerosConst*C
_class9
75loc:@residual_block_3/batch_normalization/moving_mean*
_output_shapes
:
*
dtype0*
valueB
*    
�
0residual_block_3/batch_normalization/moving_mean
VariableV2*C
_class9
75loc:@residual_block_3/batch_normalization/moving_mean*
_output_shapes
:
*
dtype0*
shape:

�
7residual_block_3/batch_normalization/moving_mean/AssignAssign0residual_block_3/batch_normalization/moving_meanBresidual_block_3/batch_normalization/moving_mean/Initializer/zeros*
T0*C
_class9
75loc:@residual_block_3/batch_normalization/moving_mean*
_output_shapes
:

�
5residual_block_3/batch_normalization/moving_mean/readIdentity0residual_block_3/batch_normalization/moving_mean*
T0*C
_class9
75loc:@residual_block_3/batch_normalization/moving_mean*
_output_shapes
:

�
Eresidual_block_3/batch_normalization/moving_variance/Initializer/onesConst*G
_class=
;9loc:@residual_block_3/batch_normalization/moving_variance*
_output_shapes
:
*
dtype0*
valueB
*  �?
�
4residual_block_3/batch_normalization/moving_variance
VariableV2*G
_class=
;9loc:@residual_block_3/batch_normalization/moving_variance*
_output_shapes
:
*
dtype0*
shape:

�
;residual_block_3/batch_normalization/moving_variance/AssignAssign4residual_block_3/batch_normalization/moving_varianceEresidual_block_3/batch_normalization/moving_variance/Initializer/ones*
T0*G
_class=
;9loc:@residual_block_3/batch_normalization/moving_variance*
_output_shapes
:

�
9residual_block_3/batch_normalization/moving_variance/readIdentity4residual_block_3/batch_normalization/moving_variance*
T0*G
_class=
;9loc:@residual_block_3/batch_normalization/moving_variance*
_output_shapes
:

y
4residual_block_3/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:
�
2residual_block_3/batch_normalization/batchnorm/addAddV29residual_block_3/batch_normalization/moving_variance/read4residual_block_3/batch_normalization/batchnorm/add/y*
T0*
_output_shapes
:

�
4residual_block_3/batch_normalization/batchnorm/RsqrtRsqrt2residual_block_3/batch_normalization/batchnorm/add*
T0*
_output_shapes
:

�
2residual_block_3/batch_normalization/batchnorm/mulMul4residual_block_3/batch_normalization/batchnorm/Rsqrt/residual_block_3/batch_normalization/gamma/read*
T0*
_output_shapes
:

�
4residual_block_3/batch_normalization/batchnorm/mul_1Mulresidual_block_2/add2residual_block_3/batch_normalization/batchnorm/mul*
T0*4
_output_shapes"
 :������������������

�
4residual_block_3/batch_normalization/batchnorm/mul_2Mul5residual_block_3/batch_normalization/moving_mean/read2residual_block_3/batch_normalization/batchnorm/mul*
T0*
_output_shapes
:

�
2residual_block_3/batch_normalization/batchnorm/subSub.residual_block_3/batch_normalization/beta/read4residual_block_3/batch_normalization/batchnorm/mul_2*
T0*
_output_shapes
:

�
4residual_block_3/batch_normalization/batchnorm/add_1AddV24residual_block_3/batch_normalization/batchnorm/mul_12residual_block_3/batch_normalization/batchnorm/sub*
T0*4
_output_shapes"
 :������������������

�
residual_block_3/ReluRelu4residual_block_3/batch_normalization/batchnorm/add_1*
T0*4
_output_shapes"
 :������������������

[
residual_block_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
�
.residual_block_3/set_padding_to_sentinel/ShapeShaperesidual_block_3/Relu*
T0*
_output_shapes
::��
�
<residual_block_3/set_padding_to_sentinel/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
>residual_block_3/set_padding_to_sentinel/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
>residual_block_3/set_padding_to_sentinel/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
6residual_block_3/set_padding_to_sentinel/strided_sliceStridedSlice.residual_block_3/set_padding_to_sentinel/Shape<residual_block_3/set_padding_to_sentinel/strided_slice/stack>residual_block_3/set_padding_to_sentinel/strided_slice/stack_1>residual_block_3/set_padding_to_sentinel/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
0residual_block_3/set_padding_to_sentinel/Shape_1Shaperesidual_block_3/Relu*
T0*
_output_shapes
::��
�
>residual_block_3/set_padding_to_sentinel/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_3/set_padding_to_sentinel/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_3/set_padding_to_sentinel/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
8residual_block_3/set_padding_to_sentinel/strided_slice_1StridedSlice0residual_block_3/set_padding_to_sentinel/Shape_1>residual_block_3/set_padding_to_sentinel/strided_slice_1/stack@residual_block_3/set_padding_to_sentinel/strided_slice_1/stack_1@residual_block_3/set_padding_to_sentinel/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
}
;residual_block_3/set_padding_to_sentinel/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : 

=residual_block_3/set_padding_to_sentinel/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :
�
;residual_block_3/set_padding_to_sentinel/SequenceMask/RangeRange;residual_block_3/set_padding_to_sentinel/SequenceMask/Const6residual_block_3/set_padding_to_sentinel/strided_slice=residual_block_3/set_padding_to_sentinel/SequenceMask/Const_1*#
_output_shapes
:���������
�
Dresidual_block_3/set_padding_to_sentinel/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
@residual_block_3/set_padding_to_sentinel/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholderDresidual_block_3/set_padding_to_sentinel/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
:residual_block_3/set_padding_to_sentinel/SequenceMask/CastCast@residual_block_3/set_padding_to_sentinel/SequenceMask/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
�
:residual_block_3/set_padding_to_sentinel/SequenceMask/LessLess;residual_block_3/set_padding_to_sentinel/SequenceMask/Range:residual_block_3/set_padding_to_sentinel/SequenceMask/Cast*
T0*0
_output_shapes
:������������������
�
7residual_block_3/set_padding_to_sentinel/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
�
3residual_block_3/set_padding_to_sentinel/ExpandDims
ExpandDims:residual_block_3/set_padding_to_sentinel/SequenceMask/Less7residual_block_3/set_padding_to_sentinel/ExpandDims/dim*
T0
*4
_output_shapes"
 :������������������
{
9residual_block_3/set_padding_to_sentinel/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :
{
9residual_block_3/set_padding_to_sentinel/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
�
7residual_block_3/set_padding_to_sentinel/Tile/multiplesPack9residual_block_3/set_padding_to_sentinel/Tile/multiples/09residual_block_3/set_padding_to_sentinel/Tile/multiples/18residual_block_3/set_padding_to_sentinel/strided_slice_1*
N*
T0*
_output_shapes
:
�
-residual_block_3/set_padding_to_sentinel/TileTile3residual_block_3/set_padding_to_sentinel/ExpandDims7residual_block_3/set_padding_to_sentinel/Tile/multiples*
T0
*4
_output_shapes"
 :������������������

�
3residual_block_3/set_padding_to_sentinel/zeros_like	ZerosLikeresidual_block_3/Relu*
T0*4
_output_shapes"
 :������������������

�
,residual_block_3/set_padding_to_sentinel/addAddV23residual_block_3/set_padding_to_sentinel/zeros_likeresidual_block_3/Const*
T0*4
_output_shapes"
 :������������������

�
/residual_block_3/set_padding_to_sentinel/SelectSelect-residual_block_3/set_padding_to_sentinel/Tileresidual_block_3/Relu,residual_block_3/set_padding_to_sentinel/add*
T0*4
_output_shapes"
 :������������������

�
?residual_block_3/conv1d/kernel/Initializer/random_uniform/shapeConst*1
_class'
%#loc:@residual_block_3/conv1d/kernel*
_output_shapes
:*
dtype0*!
valueB"	   
      
�
=residual_block_3/conv1d/kernel/Initializer/random_uniform/minConst*1
_class'
%#loc:@residual_block_3/conv1d/kernel*
_output_shapes
: *
dtype0*
valueB
 *��W�
�
=residual_block_3/conv1d/kernel/Initializer/random_uniform/maxConst*1
_class'
%#loc:@residual_block_3/conv1d/kernel*
_output_shapes
: *
dtype0*
valueB
 *��W>
�
Gresidual_block_3/conv1d/kernel/Initializer/random_uniform/RandomUniformRandomUniform?residual_block_3/conv1d/kernel/Initializer/random_uniform/shape*
T0*1
_class'
%#loc:@residual_block_3/conv1d/kernel*"
_output_shapes
:	
*
dtype0
�
=residual_block_3/conv1d/kernel/Initializer/random_uniform/subSub=residual_block_3/conv1d/kernel/Initializer/random_uniform/max=residual_block_3/conv1d/kernel/Initializer/random_uniform/min*
T0*1
_class'
%#loc:@residual_block_3/conv1d/kernel*
_output_shapes
: 
�
=residual_block_3/conv1d/kernel/Initializer/random_uniform/mulMulGresidual_block_3/conv1d/kernel/Initializer/random_uniform/RandomUniform=residual_block_3/conv1d/kernel/Initializer/random_uniform/sub*
T0*1
_class'
%#loc:@residual_block_3/conv1d/kernel*"
_output_shapes
:	

�
9residual_block_3/conv1d/kernel/Initializer/random_uniformAddV2=residual_block_3/conv1d/kernel/Initializer/random_uniform/mul=residual_block_3/conv1d/kernel/Initializer/random_uniform/min*
T0*1
_class'
%#loc:@residual_block_3/conv1d/kernel*"
_output_shapes
:	

�
residual_block_3/conv1d/kernel
VariableV2*1
_class'
%#loc:@residual_block_3/conv1d/kernel*"
_output_shapes
:	
*
dtype0*
shape:	

�
%residual_block_3/conv1d/kernel/AssignAssignresidual_block_3/conv1d/kernel9residual_block_3/conv1d/kernel/Initializer/random_uniform*
T0*1
_class'
%#loc:@residual_block_3/conv1d/kernel*"
_output_shapes
:	

�
#residual_block_3/conv1d/kernel/readIdentityresidual_block_3/conv1d/kernel*
T0*1
_class'
%#loc:@residual_block_3/conv1d/kernel*"
_output_shapes
:	

�
.residual_block_3/conv1d/bias/Initializer/zerosConst*/
_class%
#!loc:@residual_block_3/conv1d/bias*
_output_shapes
:*
dtype0*
valueB*    
�
residual_block_3/conv1d/bias
VariableV2*/
_class%
#!loc:@residual_block_3/conv1d/bias*
_output_shapes
:*
dtype0*
shape:
�
#residual_block_3/conv1d/bias/AssignAssignresidual_block_3/conv1d/bias.residual_block_3/conv1d/bias/Initializer/zeros*
T0*/
_class%
#!loc:@residual_block_3/conv1d/bias*
_output_shapes
:
�
!residual_block_3/conv1d/bias/readIdentityresidual_block_3/conv1d/bias*
T0*/
_class%
#!loc:@residual_block_3/conv1d/bias*
_output_shapes
:
v
,residual_block_3/conv1d/Conv1D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB:
�
+residual_block_3/conv1d/Conv1D/filter_shapeConst*
_output_shapes
:*
dtype0*!
valueB"	   
      
}
$residual_block_3/conv1d/Conv1D/stackConst*
_output_shapes

:*
dtype0*!
valueB"l   l   
�
$residual_block_3/conv1d/Conv1D/ShapeShape/residual_block_3/set_padding_to_sentinel/Select*
T0*
_output_shapes
::��
|
2residual_block_3/conv1d/Conv1D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
~
4residual_block_3/conv1d/Conv1D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
~
4residual_block_3/conv1d/Conv1D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
,residual_block_3/conv1d/Conv1D/strided_sliceStridedSlice$residual_block_3/conv1d/Conv1D/Shape2residual_block_3/conv1d/Conv1D/strided_slice/stack4residual_block_3/conv1d/Conv1D/strided_slice/stack_14residual_block_3/conv1d/Conv1D/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
&residual_block_3/conv1d/Conv1D/stack_1Pack,residual_block_3/conv1d/Conv1D/strided_slice*
N*
T0*
_output_shapes
:
�
Sresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
�
Uresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
�
Uresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
�
Mresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_sliceStridedSlice$residual_block_3/conv1d/Conv1D/stackSresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice/stackUresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice/stack_1Uresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice/stack_2*
Index0*
T0*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask
�
Uresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       
�
Wresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
�
Wresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
�
Oresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1StridedSlice$residual_block_3/conv1d/Conv1D/stackUresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1/stackWresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1/stack_1Wresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask
�
Cresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/addAddV2&residual_block_3/conv1d/Conv1D/stack_1Mresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice*
T0*
_output_shapes
:
�
Eresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/add_1AddV2Cresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/addOresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1*
T0*
_output_shapes
:
�
Cresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/modFloorModEresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/add_1,residual_block_3/conv1d/Conv1D/dilation_rate*
T0*
_output_shapes
:
�
Cresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/subSub,residual_block_3/conv1d/Conv1D/dilation_rateCresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/mod*
T0*
_output_shapes
:
�
Eresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/mod_1FloorModCresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/sub,residual_block_3/conv1d/Conv1D/dilation_rate*
T0*
_output_shapes
:
�
Eresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/add_2AddV2Oresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1Eresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/mod_1*
T0*
_output_shapes
:
�
Uresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
�
Wresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Wresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
Oresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2StridedSliceMresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_sliceUresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2/stackWresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2/stack_1Wresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
Uresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 
�
Wresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Wresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
Oresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3StridedSliceEresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/add_2Uresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3/stackWresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3/stack_1Wresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
Jresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/paddings/0PackOresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2Oresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3*
N*
T0*
_output_shapes
:
�
Hresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/paddingsPackJresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/paddings/0*
N*
T0*
_output_shapes

:
�
Uresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 
�
Wresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Wresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
Oresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4StridedSliceEresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/mod_1Uresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4/stackWresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4/stack_1Wresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
Iresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/crops/0/0Const*
_output_shapes
: *
dtype0*
value	B : 
�
Gresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/crops/0PackIresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/crops/0/0Oresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4*
N*
T0*
_output_shapes
:
�
Eresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/cropsPackGresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/crops/0*
N*
T0*
_output_shapes

:
~
4residual_block_3/conv1d/Conv1D/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
�
6residual_block_3/conv1d/Conv1D/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
6residual_block_3/conv1d/Conv1D/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
.residual_block_3/conv1d/Conv1D/strided_slice_1StridedSliceHresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/paddings4residual_block_3/conv1d/Conv1D/strided_slice_1/stack6residual_block_3/conv1d/Conv1D/strided_slice_1/stack_16residual_block_3/conv1d/Conv1D/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes

:
r
0residual_block_3/conv1d/Conv1D/concat/concat_dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
,residual_block_3/conv1d/Conv1D/concat/concatIdentity.residual_block_3/conv1d/Conv1D/strided_slice_1*
T0*
_output_shapes

:
~
4residual_block_3/conv1d/Conv1D/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
�
6residual_block_3/conv1d/Conv1D/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
6residual_block_3/conv1d/Conv1D/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
.residual_block_3/conv1d/Conv1D/strided_slice_2StridedSliceEresidual_block_3/conv1d/Conv1D/required_space_to_batch_paddings/crops4residual_block_3/conv1d/Conv1D/strided_slice_2/stack6residual_block_3/conv1d/Conv1D/strided_slice_2/stack_16residual_block_3/conv1d/Conv1D/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes

:
t
2residual_block_3/conv1d/Conv1D/concat_1/concat_dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
.residual_block_3/conv1d/Conv1D/concat_1/concatIdentity.residual_block_3/conv1d/Conv1D/strided_slice_2*
T0*
_output_shapes

:
�
9residual_block_3/conv1d/Conv1D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB:
�
-residual_block_3/conv1d/Conv1D/SpaceToBatchNDSpaceToBatchND/residual_block_3/set_padding_to_sentinel/Select9residual_block_3/conv1d/Conv1D/SpaceToBatchND/block_shape,residual_block_3/conv1d/Conv1D/concat/concat*
T0*4
_output_shapes"
 :������������������

x
-residual_block_3/conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
)residual_block_3/conv1d/Conv1D/ExpandDims
ExpandDims-residual_block_3/conv1d/Conv1D/SpaceToBatchND-residual_block_3/conv1d/Conv1D/ExpandDims/dim*
T0*8
_output_shapes&
$:"������������������

q
/residual_block_3/conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
+residual_block_3/conv1d/Conv1D/ExpandDims_1
ExpandDims#residual_block_3/conv1d/kernel/read/residual_block_3/conv1d/Conv1D/ExpandDims_1/dim*
T0*&
_output_shapes
:	

�
residual_block_3/conv1d/Conv1DConv2D)residual_block_3/conv1d/Conv1D/ExpandDims+residual_block_3/conv1d/Conv1D/ExpandDims_1*
T0*8
_output_shapes&
$:"������������������*
paddingVALID*
strides

�
&residual_block_3/conv1d/Conv1D/SqueezeSqueezeresidual_block_3/conv1d/Conv1D*
T0*4
_output_shapes"
 :������������������*
squeeze_dims

���������
�
9residual_block_3/conv1d/Conv1D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB:
�
-residual_block_3/conv1d/Conv1D/BatchToSpaceNDBatchToSpaceND&residual_block_3/conv1d/Conv1D/Squeeze9residual_block_3/conv1d/Conv1D/BatchToSpaceND/block_shape.residual_block_3/conv1d/Conv1D/concat_1/concat*
T0*4
_output_shapes"
 :������������������
�
residual_block_3/conv1d/BiasAddBiasAdd-residual_block_3/conv1d/Conv1D/BatchToSpaceND!residual_block_3/conv1d/bias/read*
T0*4
_output_shapes"
 :������������������
]
residual_block_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
�
0residual_block_3/set_padding_to_sentinel_1/ShapeShaperesidual_block_3/conv1d/BiasAdd*
T0*
_output_shapes
::��
�
>residual_block_3/set_padding_to_sentinel_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_3/set_padding_to_sentinel_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_3/set_padding_to_sentinel_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
8residual_block_3/set_padding_to_sentinel_1/strided_sliceStridedSlice0residual_block_3/set_padding_to_sentinel_1/Shape>residual_block_3/set_padding_to_sentinel_1/strided_slice/stack@residual_block_3/set_padding_to_sentinel_1/strided_slice/stack_1@residual_block_3/set_padding_to_sentinel_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
2residual_block_3/set_padding_to_sentinel_1/Shape_1Shaperesidual_block_3/conv1d/BiasAdd*
T0*
_output_shapes
::��
�
@residual_block_3/set_padding_to_sentinel_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_3/set_padding_to_sentinel_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_3/set_padding_to_sentinel_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
:residual_block_3/set_padding_to_sentinel_1/strided_slice_1StridedSlice2residual_block_3/set_padding_to_sentinel_1/Shape_1@residual_block_3/set_padding_to_sentinel_1/strided_slice_1/stackBresidual_block_3/set_padding_to_sentinel_1/strided_slice_1/stack_1Bresidual_block_3/set_padding_to_sentinel_1/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

=residual_block_3/set_padding_to_sentinel_1/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
�
?residual_block_3/set_padding_to_sentinel_1/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :
�
=residual_block_3/set_padding_to_sentinel_1/SequenceMask/RangeRange=residual_block_3/set_padding_to_sentinel_1/SequenceMask/Const8residual_block_3/set_padding_to_sentinel_1/strided_slice?residual_block_3/set_padding_to_sentinel_1/SequenceMask/Const_1*#
_output_shapes
:���������
�
Fresidual_block_3/set_padding_to_sentinel_1/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
Bresidual_block_3/set_padding_to_sentinel_1/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholderFresidual_block_3/set_padding_to_sentinel_1/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
<residual_block_3/set_padding_to_sentinel_1/SequenceMask/CastCastBresidual_block_3/set_padding_to_sentinel_1/SequenceMask/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
�
<residual_block_3/set_padding_to_sentinel_1/SequenceMask/LessLess=residual_block_3/set_padding_to_sentinel_1/SequenceMask/Range<residual_block_3/set_padding_to_sentinel_1/SequenceMask/Cast*
T0*0
_output_shapes
:������������������
�
9residual_block_3/set_padding_to_sentinel_1/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
�
5residual_block_3/set_padding_to_sentinel_1/ExpandDims
ExpandDims<residual_block_3/set_padding_to_sentinel_1/SequenceMask/Less9residual_block_3/set_padding_to_sentinel_1/ExpandDims/dim*
T0
*4
_output_shapes"
 :������������������
}
;residual_block_3/set_padding_to_sentinel_1/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :
}
;residual_block_3/set_padding_to_sentinel_1/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
�
9residual_block_3/set_padding_to_sentinel_1/Tile/multiplesPack;residual_block_3/set_padding_to_sentinel_1/Tile/multiples/0;residual_block_3/set_padding_to_sentinel_1/Tile/multiples/1:residual_block_3/set_padding_to_sentinel_1/strided_slice_1*
N*
T0*
_output_shapes
:
�
/residual_block_3/set_padding_to_sentinel_1/TileTile5residual_block_3/set_padding_to_sentinel_1/ExpandDims9residual_block_3/set_padding_to_sentinel_1/Tile/multiples*
T0
*4
_output_shapes"
 :������������������
�
5residual_block_3/set_padding_to_sentinel_1/zeros_like	ZerosLikeresidual_block_3/conv1d/BiasAdd*
T0*4
_output_shapes"
 :������������������
�
.residual_block_3/set_padding_to_sentinel_1/addAddV25residual_block_3/set_padding_to_sentinel_1/zeros_likeresidual_block_3/Const_1*
T0*4
_output_shapes"
 :������������������
�
1residual_block_3/set_padding_to_sentinel_1/SelectSelect/residual_block_3/set_padding_to_sentinel_1/Tileresidual_block_3/conv1d/BiasAdd.residual_block_3/set_padding_to_sentinel_1/add*
T0*4
_output_shapes"
 :������������������
�
=residual_block_3/batch_normalization_1/gamma/Initializer/onesConst*?
_class5
31loc:@residual_block_3/batch_normalization_1/gamma*
_output_shapes
:*
dtype0*
valueB*  �?
�
,residual_block_3/batch_normalization_1/gamma
VariableV2*?
_class5
31loc:@residual_block_3/batch_normalization_1/gamma*
_output_shapes
:*
dtype0*
shape:
�
3residual_block_3/batch_normalization_1/gamma/AssignAssign,residual_block_3/batch_normalization_1/gamma=residual_block_3/batch_normalization_1/gamma/Initializer/ones*
T0*?
_class5
31loc:@residual_block_3/batch_normalization_1/gamma*
_output_shapes
:
�
1residual_block_3/batch_normalization_1/gamma/readIdentity,residual_block_3/batch_normalization_1/gamma*
T0*?
_class5
31loc:@residual_block_3/batch_normalization_1/gamma*
_output_shapes
:
�
=residual_block_3/batch_normalization_1/beta/Initializer/zerosConst*>
_class4
20loc:@residual_block_3/batch_normalization_1/beta*
_output_shapes
:*
dtype0*
valueB*    
�
+residual_block_3/batch_normalization_1/beta
VariableV2*>
_class4
20loc:@residual_block_3/batch_normalization_1/beta*
_output_shapes
:*
dtype0*
shape:
�
2residual_block_3/batch_normalization_1/beta/AssignAssign+residual_block_3/batch_normalization_1/beta=residual_block_3/batch_normalization_1/beta/Initializer/zeros*
T0*>
_class4
20loc:@residual_block_3/batch_normalization_1/beta*
_output_shapes
:
�
0residual_block_3/batch_normalization_1/beta/readIdentity+residual_block_3/batch_normalization_1/beta*
T0*>
_class4
20loc:@residual_block_3/batch_normalization_1/beta*
_output_shapes
:
�
Dresidual_block_3/batch_normalization_1/moving_mean/Initializer/zerosConst*E
_class;
97loc:@residual_block_3/batch_normalization_1/moving_mean*
_output_shapes
:*
dtype0*
valueB*    
�
2residual_block_3/batch_normalization_1/moving_mean
VariableV2*E
_class;
97loc:@residual_block_3/batch_normalization_1/moving_mean*
_output_shapes
:*
dtype0*
shape:
�
9residual_block_3/batch_normalization_1/moving_mean/AssignAssign2residual_block_3/batch_normalization_1/moving_meanDresidual_block_3/batch_normalization_1/moving_mean/Initializer/zeros*
T0*E
_class;
97loc:@residual_block_3/batch_normalization_1/moving_mean*
_output_shapes
:
�
7residual_block_3/batch_normalization_1/moving_mean/readIdentity2residual_block_3/batch_normalization_1/moving_mean*
T0*E
_class;
97loc:@residual_block_3/batch_normalization_1/moving_mean*
_output_shapes
:
�
Gresidual_block_3/batch_normalization_1/moving_variance/Initializer/onesConst*I
_class?
=;loc:@residual_block_3/batch_normalization_1/moving_variance*
_output_shapes
:*
dtype0*
valueB*  �?
�
6residual_block_3/batch_normalization_1/moving_variance
VariableV2*I
_class?
=;loc:@residual_block_3/batch_normalization_1/moving_variance*
_output_shapes
:*
dtype0*
shape:
�
=residual_block_3/batch_normalization_1/moving_variance/AssignAssign6residual_block_3/batch_normalization_1/moving_varianceGresidual_block_3/batch_normalization_1/moving_variance/Initializer/ones*
T0*I
_class?
=;loc:@residual_block_3/batch_normalization_1/moving_variance*
_output_shapes
:
�
;residual_block_3/batch_normalization_1/moving_variance/readIdentity6residual_block_3/batch_normalization_1/moving_variance*
T0*I
_class?
=;loc:@residual_block_3/batch_normalization_1/moving_variance*
_output_shapes
:
{
6residual_block_3/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:
�
4residual_block_3/batch_normalization_1/batchnorm/addAddV2;residual_block_3/batch_normalization_1/moving_variance/read6residual_block_3/batch_normalization_1/batchnorm/add/y*
T0*
_output_shapes
:
�
6residual_block_3/batch_normalization_1/batchnorm/RsqrtRsqrt4residual_block_3/batch_normalization_1/batchnorm/add*
T0*
_output_shapes
:
�
4residual_block_3/batch_normalization_1/batchnorm/mulMul6residual_block_3/batch_normalization_1/batchnorm/Rsqrt1residual_block_3/batch_normalization_1/gamma/read*
T0*
_output_shapes
:
�
6residual_block_3/batch_normalization_1/batchnorm/mul_1Mul1residual_block_3/set_padding_to_sentinel_1/Select4residual_block_3/batch_normalization_1/batchnorm/mul*
T0*4
_output_shapes"
 :������������������
�
6residual_block_3/batch_normalization_1/batchnorm/mul_2Mul7residual_block_3/batch_normalization_1/moving_mean/read4residual_block_3/batch_normalization_1/batchnorm/mul*
T0*
_output_shapes
:
�
4residual_block_3/batch_normalization_1/batchnorm/subSub0residual_block_3/batch_normalization_1/beta/read6residual_block_3/batch_normalization_1/batchnorm/mul_2*
T0*
_output_shapes
:
�
6residual_block_3/batch_normalization_1/batchnorm/add_1AddV26residual_block_3/batch_normalization_1/batchnorm/mul_14residual_block_3/batch_normalization_1/batchnorm/sub*
T0*4
_output_shapes"
 :������������������
�
residual_block_3/Relu_1Relu6residual_block_3/batch_normalization_1/batchnorm/add_1*
T0*4
_output_shapes"
 :������������������
]
residual_block_3/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *    
�
0residual_block_3/set_padding_to_sentinel_2/ShapeShaperesidual_block_3/Relu_1*
T0*
_output_shapes
::��
�
>residual_block_3/set_padding_to_sentinel_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_3/set_padding_to_sentinel_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_3/set_padding_to_sentinel_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
8residual_block_3/set_padding_to_sentinel_2/strided_sliceStridedSlice0residual_block_3/set_padding_to_sentinel_2/Shape>residual_block_3/set_padding_to_sentinel_2/strided_slice/stack@residual_block_3/set_padding_to_sentinel_2/strided_slice/stack_1@residual_block_3/set_padding_to_sentinel_2/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
2residual_block_3/set_padding_to_sentinel_2/Shape_1Shaperesidual_block_3/Relu_1*
T0*
_output_shapes
::��
�
@residual_block_3/set_padding_to_sentinel_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_3/set_padding_to_sentinel_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_3/set_padding_to_sentinel_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
:residual_block_3/set_padding_to_sentinel_2/strided_slice_1StridedSlice2residual_block_3/set_padding_to_sentinel_2/Shape_1@residual_block_3/set_padding_to_sentinel_2/strided_slice_1/stackBresidual_block_3/set_padding_to_sentinel_2/strided_slice_1/stack_1Bresidual_block_3/set_padding_to_sentinel_2/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

=residual_block_3/set_padding_to_sentinel_2/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
�
?residual_block_3/set_padding_to_sentinel_2/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :
�
=residual_block_3/set_padding_to_sentinel_2/SequenceMask/RangeRange=residual_block_3/set_padding_to_sentinel_2/SequenceMask/Const8residual_block_3/set_padding_to_sentinel_2/strided_slice?residual_block_3/set_padding_to_sentinel_2/SequenceMask/Const_1*#
_output_shapes
:���������
�
Fresidual_block_3/set_padding_to_sentinel_2/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
Bresidual_block_3/set_padding_to_sentinel_2/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholderFresidual_block_3/set_padding_to_sentinel_2/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
<residual_block_3/set_padding_to_sentinel_2/SequenceMask/CastCastBresidual_block_3/set_padding_to_sentinel_2/SequenceMask/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
�
<residual_block_3/set_padding_to_sentinel_2/SequenceMask/LessLess=residual_block_3/set_padding_to_sentinel_2/SequenceMask/Range<residual_block_3/set_padding_to_sentinel_2/SequenceMask/Cast*
T0*0
_output_shapes
:������������������
�
9residual_block_3/set_padding_to_sentinel_2/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
�
5residual_block_3/set_padding_to_sentinel_2/ExpandDims
ExpandDims<residual_block_3/set_padding_to_sentinel_2/SequenceMask/Less9residual_block_3/set_padding_to_sentinel_2/ExpandDims/dim*
T0
*4
_output_shapes"
 :������������������
}
;residual_block_3/set_padding_to_sentinel_2/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :
}
;residual_block_3/set_padding_to_sentinel_2/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
�
9residual_block_3/set_padding_to_sentinel_2/Tile/multiplesPack;residual_block_3/set_padding_to_sentinel_2/Tile/multiples/0;residual_block_3/set_padding_to_sentinel_2/Tile/multiples/1:residual_block_3/set_padding_to_sentinel_2/strided_slice_1*
N*
T0*
_output_shapes
:
�
/residual_block_3/set_padding_to_sentinel_2/TileTile5residual_block_3/set_padding_to_sentinel_2/ExpandDims9residual_block_3/set_padding_to_sentinel_2/Tile/multiples*
T0
*4
_output_shapes"
 :������������������
�
5residual_block_3/set_padding_to_sentinel_2/zeros_like	ZerosLikeresidual_block_3/Relu_1*
T0*4
_output_shapes"
 :������������������
�
.residual_block_3/set_padding_to_sentinel_2/addAddV25residual_block_3/set_padding_to_sentinel_2/zeros_likeresidual_block_3/Const_2*
T0*4
_output_shapes"
 :������������������
�
1residual_block_3/set_padding_to_sentinel_2/SelectSelect/residual_block_3/set_padding_to_sentinel_2/Tileresidual_block_3/Relu_1.residual_block_3/set_padding_to_sentinel_2/add*
T0*4
_output_shapes"
 :������������������
�
Aresidual_block_3/conv1d_1/kernel/Initializer/random_uniform/shapeConst*3
_class)
'%loc:@residual_block_3/conv1d_1/kernel*
_output_shapes
:*
dtype0*!
valueB"      
   
�
?residual_block_3/conv1d_1/kernel/Initializer/random_uniform/minConst*3
_class)
'%loc:@residual_block_3/conv1d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *��!�
�
?residual_block_3/conv1d_1/kernel/Initializer/random_uniform/maxConst*3
_class)
'%loc:@residual_block_3/conv1d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *��!?
�
Iresidual_block_3/conv1d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniformAresidual_block_3/conv1d_1/kernel/Initializer/random_uniform/shape*
T0*3
_class)
'%loc:@residual_block_3/conv1d_1/kernel*"
_output_shapes
:
*
dtype0
�
?residual_block_3/conv1d_1/kernel/Initializer/random_uniform/subSub?residual_block_3/conv1d_1/kernel/Initializer/random_uniform/max?residual_block_3/conv1d_1/kernel/Initializer/random_uniform/min*
T0*3
_class)
'%loc:@residual_block_3/conv1d_1/kernel*
_output_shapes
: 
�
?residual_block_3/conv1d_1/kernel/Initializer/random_uniform/mulMulIresidual_block_3/conv1d_1/kernel/Initializer/random_uniform/RandomUniform?residual_block_3/conv1d_1/kernel/Initializer/random_uniform/sub*
T0*3
_class)
'%loc:@residual_block_3/conv1d_1/kernel*"
_output_shapes
:

�
;residual_block_3/conv1d_1/kernel/Initializer/random_uniformAddV2?residual_block_3/conv1d_1/kernel/Initializer/random_uniform/mul?residual_block_3/conv1d_1/kernel/Initializer/random_uniform/min*
T0*3
_class)
'%loc:@residual_block_3/conv1d_1/kernel*"
_output_shapes
:

�
 residual_block_3/conv1d_1/kernel
VariableV2*3
_class)
'%loc:@residual_block_3/conv1d_1/kernel*"
_output_shapes
:
*
dtype0*
shape:

�
'residual_block_3/conv1d_1/kernel/AssignAssign residual_block_3/conv1d_1/kernel;residual_block_3/conv1d_1/kernel/Initializer/random_uniform*
T0*3
_class)
'%loc:@residual_block_3/conv1d_1/kernel*"
_output_shapes
:

�
%residual_block_3/conv1d_1/kernel/readIdentity residual_block_3/conv1d_1/kernel*
T0*3
_class)
'%loc:@residual_block_3/conv1d_1/kernel*"
_output_shapes
:

�
0residual_block_3/conv1d_1/bias/Initializer/zerosConst*1
_class'
%#loc:@residual_block_3/conv1d_1/bias*
_output_shapes
:
*
dtype0*
valueB
*    
�
residual_block_3/conv1d_1/bias
VariableV2*1
_class'
%#loc:@residual_block_3/conv1d_1/bias*
_output_shapes
:
*
dtype0*
shape:

�
%residual_block_3/conv1d_1/bias/AssignAssignresidual_block_3/conv1d_1/bias0residual_block_3/conv1d_1/bias/Initializer/zeros*
T0*1
_class'
%#loc:@residual_block_3/conv1d_1/bias*
_output_shapes
:

�
#residual_block_3/conv1d_1/bias/readIdentityresidual_block_3/conv1d_1/bias*
T0*1
_class'
%#loc:@residual_block_3/conv1d_1/bias*
_output_shapes
:

z
/residual_block_3/conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
+residual_block_3/conv1d_1/Conv1D/ExpandDims
ExpandDims1residual_block_3/set_padding_to_sentinel_2/Select/residual_block_3/conv1d_1/Conv1D/ExpandDims/dim*
T0*8
_output_shapes&
$:"������������������
s
1residual_block_3/conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
-residual_block_3/conv1d_1/Conv1D/ExpandDims_1
ExpandDims%residual_block_3/conv1d_1/kernel/read1residual_block_3/conv1d_1/Conv1D/ExpandDims_1/dim*
T0*&
_output_shapes
:

�
 residual_block_3/conv1d_1/Conv1DConv2D+residual_block_3/conv1d_1/Conv1D/ExpandDims-residual_block_3/conv1d_1/Conv1D/ExpandDims_1*
T0*8
_output_shapes&
$:"������������������
*
paddingSAME*
strides

�
(residual_block_3/conv1d_1/Conv1D/SqueezeSqueeze residual_block_3/conv1d_1/Conv1D*
T0*4
_output_shapes"
 :������������������
*
squeeze_dims

���������
�
!residual_block_3/conv1d_1/BiasAddBiasAdd(residual_block_3/conv1d_1/Conv1D/Squeeze#residual_block_3/conv1d_1/bias/read*
T0*4
_output_shapes"
 :������������������

]
residual_block_3/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *    
�
0residual_block_3/set_padding_to_sentinel_3/ShapeShape!residual_block_3/conv1d_1/BiasAdd*
T0*
_output_shapes
::��
�
>residual_block_3/set_padding_to_sentinel_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_3/set_padding_to_sentinel_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_3/set_padding_to_sentinel_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
8residual_block_3/set_padding_to_sentinel_3/strided_sliceStridedSlice0residual_block_3/set_padding_to_sentinel_3/Shape>residual_block_3/set_padding_to_sentinel_3/strided_slice/stack@residual_block_3/set_padding_to_sentinel_3/strided_slice/stack_1@residual_block_3/set_padding_to_sentinel_3/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
2residual_block_3/set_padding_to_sentinel_3/Shape_1Shape!residual_block_3/conv1d_1/BiasAdd*
T0*
_output_shapes
::��
�
@residual_block_3/set_padding_to_sentinel_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_3/set_padding_to_sentinel_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_3/set_padding_to_sentinel_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
:residual_block_3/set_padding_to_sentinel_3/strided_slice_1StridedSlice2residual_block_3/set_padding_to_sentinel_3/Shape_1@residual_block_3/set_padding_to_sentinel_3/strided_slice_1/stackBresidual_block_3/set_padding_to_sentinel_3/strided_slice_1/stack_1Bresidual_block_3/set_padding_to_sentinel_3/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

=residual_block_3/set_padding_to_sentinel_3/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
�
?residual_block_3/set_padding_to_sentinel_3/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :
�
=residual_block_3/set_padding_to_sentinel_3/SequenceMask/RangeRange=residual_block_3/set_padding_to_sentinel_3/SequenceMask/Const8residual_block_3/set_padding_to_sentinel_3/strided_slice?residual_block_3/set_padding_to_sentinel_3/SequenceMask/Const_1*#
_output_shapes
:���������
�
Fresidual_block_3/set_padding_to_sentinel_3/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
Bresidual_block_3/set_padding_to_sentinel_3/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholderFresidual_block_3/set_padding_to_sentinel_3/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
<residual_block_3/set_padding_to_sentinel_3/SequenceMask/CastCastBresidual_block_3/set_padding_to_sentinel_3/SequenceMask/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
�
<residual_block_3/set_padding_to_sentinel_3/SequenceMask/LessLess=residual_block_3/set_padding_to_sentinel_3/SequenceMask/Range<residual_block_3/set_padding_to_sentinel_3/SequenceMask/Cast*
T0*0
_output_shapes
:������������������
�
9residual_block_3/set_padding_to_sentinel_3/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
�
5residual_block_3/set_padding_to_sentinel_3/ExpandDims
ExpandDims<residual_block_3/set_padding_to_sentinel_3/SequenceMask/Less9residual_block_3/set_padding_to_sentinel_3/ExpandDims/dim*
T0
*4
_output_shapes"
 :������������������
}
;residual_block_3/set_padding_to_sentinel_3/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :
}
;residual_block_3/set_padding_to_sentinel_3/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
�
9residual_block_3/set_padding_to_sentinel_3/Tile/multiplesPack;residual_block_3/set_padding_to_sentinel_3/Tile/multiples/0;residual_block_3/set_padding_to_sentinel_3/Tile/multiples/1:residual_block_3/set_padding_to_sentinel_3/strided_slice_1*
N*
T0*
_output_shapes
:
�
/residual_block_3/set_padding_to_sentinel_3/TileTile5residual_block_3/set_padding_to_sentinel_3/ExpandDims9residual_block_3/set_padding_to_sentinel_3/Tile/multiples*
T0
*4
_output_shapes"
 :������������������

�
5residual_block_3/set_padding_to_sentinel_3/zeros_like	ZerosLike!residual_block_3/conv1d_1/BiasAdd*
T0*4
_output_shapes"
 :������������������

�
.residual_block_3/set_padding_to_sentinel_3/addAddV25residual_block_3/set_padding_to_sentinel_3/zeros_likeresidual_block_3/Const_3*
T0*4
_output_shapes"
 :������������������

�
1residual_block_3/set_padding_to_sentinel_3/SelectSelect/residual_block_3/set_padding_to_sentinel_3/Tile!residual_block_3/conv1d_1/BiasAdd.residual_block_3/set_padding_to_sentinel_3/add*
T0*4
_output_shapes"
 :������������������

�
residual_block_3/addAddV2residual_block_2/add1residual_block_3/set_padding_to_sentinel_3/Select*
T0*4
_output_shapes"
 :������������������

�
;residual_block_4/batch_normalization/gamma/Initializer/onesConst*=
_class3
1/loc:@residual_block_4/batch_normalization/gamma*
_output_shapes
:
*
dtype0*
valueB
*  �?
�
*residual_block_4/batch_normalization/gamma
VariableV2*=
_class3
1/loc:@residual_block_4/batch_normalization/gamma*
_output_shapes
:
*
dtype0*
shape:

�
1residual_block_4/batch_normalization/gamma/AssignAssign*residual_block_4/batch_normalization/gamma;residual_block_4/batch_normalization/gamma/Initializer/ones*
T0*=
_class3
1/loc:@residual_block_4/batch_normalization/gamma*
_output_shapes
:

�
/residual_block_4/batch_normalization/gamma/readIdentity*residual_block_4/batch_normalization/gamma*
T0*=
_class3
1/loc:@residual_block_4/batch_normalization/gamma*
_output_shapes
:

�
;residual_block_4/batch_normalization/beta/Initializer/zerosConst*<
_class2
0.loc:@residual_block_4/batch_normalization/beta*
_output_shapes
:
*
dtype0*
valueB
*    
�
)residual_block_4/batch_normalization/beta
VariableV2*<
_class2
0.loc:@residual_block_4/batch_normalization/beta*
_output_shapes
:
*
dtype0*
shape:

�
0residual_block_4/batch_normalization/beta/AssignAssign)residual_block_4/batch_normalization/beta;residual_block_4/batch_normalization/beta/Initializer/zeros*
T0*<
_class2
0.loc:@residual_block_4/batch_normalization/beta*
_output_shapes
:

�
.residual_block_4/batch_normalization/beta/readIdentity)residual_block_4/batch_normalization/beta*
T0*<
_class2
0.loc:@residual_block_4/batch_normalization/beta*
_output_shapes
:

�
Bresidual_block_4/batch_normalization/moving_mean/Initializer/zerosConst*C
_class9
75loc:@residual_block_4/batch_normalization/moving_mean*
_output_shapes
:
*
dtype0*
valueB
*    
�
0residual_block_4/batch_normalization/moving_mean
VariableV2*C
_class9
75loc:@residual_block_4/batch_normalization/moving_mean*
_output_shapes
:
*
dtype0*
shape:

�
7residual_block_4/batch_normalization/moving_mean/AssignAssign0residual_block_4/batch_normalization/moving_meanBresidual_block_4/batch_normalization/moving_mean/Initializer/zeros*
T0*C
_class9
75loc:@residual_block_4/batch_normalization/moving_mean*
_output_shapes
:

�
5residual_block_4/batch_normalization/moving_mean/readIdentity0residual_block_4/batch_normalization/moving_mean*
T0*C
_class9
75loc:@residual_block_4/batch_normalization/moving_mean*
_output_shapes
:

�
Eresidual_block_4/batch_normalization/moving_variance/Initializer/onesConst*G
_class=
;9loc:@residual_block_4/batch_normalization/moving_variance*
_output_shapes
:
*
dtype0*
valueB
*  �?
�
4residual_block_4/batch_normalization/moving_variance
VariableV2*G
_class=
;9loc:@residual_block_4/batch_normalization/moving_variance*
_output_shapes
:
*
dtype0*
shape:

�
;residual_block_4/batch_normalization/moving_variance/AssignAssign4residual_block_4/batch_normalization/moving_varianceEresidual_block_4/batch_normalization/moving_variance/Initializer/ones*
T0*G
_class=
;9loc:@residual_block_4/batch_normalization/moving_variance*
_output_shapes
:

�
9residual_block_4/batch_normalization/moving_variance/readIdentity4residual_block_4/batch_normalization/moving_variance*
T0*G
_class=
;9loc:@residual_block_4/batch_normalization/moving_variance*
_output_shapes
:

y
4residual_block_4/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:
�
2residual_block_4/batch_normalization/batchnorm/addAddV29residual_block_4/batch_normalization/moving_variance/read4residual_block_4/batch_normalization/batchnorm/add/y*
T0*
_output_shapes
:

�
4residual_block_4/batch_normalization/batchnorm/RsqrtRsqrt2residual_block_4/batch_normalization/batchnorm/add*
T0*
_output_shapes
:

�
2residual_block_4/batch_normalization/batchnorm/mulMul4residual_block_4/batch_normalization/batchnorm/Rsqrt/residual_block_4/batch_normalization/gamma/read*
T0*
_output_shapes
:

�
4residual_block_4/batch_normalization/batchnorm/mul_1Mulresidual_block_3/add2residual_block_4/batch_normalization/batchnorm/mul*
T0*4
_output_shapes"
 :������������������

�
4residual_block_4/batch_normalization/batchnorm/mul_2Mul5residual_block_4/batch_normalization/moving_mean/read2residual_block_4/batch_normalization/batchnorm/mul*
T0*
_output_shapes
:

�
2residual_block_4/batch_normalization/batchnorm/subSub.residual_block_4/batch_normalization/beta/read4residual_block_4/batch_normalization/batchnorm/mul_2*
T0*
_output_shapes
:

�
4residual_block_4/batch_normalization/batchnorm/add_1AddV24residual_block_4/batch_normalization/batchnorm/mul_12residual_block_4/batch_normalization/batchnorm/sub*
T0*4
_output_shapes"
 :������������������

�
residual_block_4/ReluRelu4residual_block_4/batch_normalization/batchnorm/add_1*
T0*4
_output_shapes"
 :������������������

[
residual_block_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
�
.residual_block_4/set_padding_to_sentinel/ShapeShaperesidual_block_4/Relu*
T0*
_output_shapes
::��
�
<residual_block_4/set_padding_to_sentinel/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
>residual_block_4/set_padding_to_sentinel/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
>residual_block_4/set_padding_to_sentinel/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
6residual_block_4/set_padding_to_sentinel/strided_sliceStridedSlice.residual_block_4/set_padding_to_sentinel/Shape<residual_block_4/set_padding_to_sentinel/strided_slice/stack>residual_block_4/set_padding_to_sentinel/strided_slice/stack_1>residual_block_4/set_padding_to_sentinel/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
0residual_block_4/set_padding_to_sentinel/Shape_1Shaperesidual_block_4/Relu*
T0*
_output_shapes
::��
�
>residual_block_4/set_padding_to_sentinel/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_4/set_padding_to_sentinel/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_4/set_padding_to_sentinel/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
8residual_block_4/set_padding_to_sentinel/strided_slice_1StridedSlice0residual_block_4/set_padding_to_sentinel/Shape_1>residual_block_4/set_padding_to_sentinel/strided_slice_1/stack@residual_block_4/set_padding_to_sentinel/strided_slice_1/stack_1@residual_block_4/set_padding_to_sentinel/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
}
;residual_block_4/set_padding_to_sentinel/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : 

=residual_block_4/set_padding_to_sentinel/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :
�
;residual_block_4/set_padding_to_sentinel/SequenceMask/RangeRange;residual_block_4/set_padding_to_sentinel/SequenceMask/Const6residual_block_4/set_padding_to_sentinel/strided_slice=residual_block_4/set_padding_to_sentinel/SequenceMask/Const_1*#
_output_shapes
:���������
�
Dresidual_block_4/set_padding_to_sentinel/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
@residual_block_4/set_padding_to_sentinel/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholderDresidual_block_4/set_padding_to_sentinel/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
:residual_block_4/set_padding_to_sentinel/SequenceMask/CastCast@residual_block_4/set_padding_to_sentinel/SequenceMask/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
�
:residual_block_4/set_padding_to_sentinel/SequenceMask/LessLess;residual_block_4/set_padding_to_sentinel/SequenceMask/Range:residual_block_4/set_padding_to_sentinel/SequenceMask/Cast*
T0*0
_output_shapes
:������������������
�
7residual_block_4/set_padding_to_sentinel/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
�
3residual_block_4/set_padding_to_sentinel/ExpandDims
ExpandDims:residual_block_4/set_padding_to_sentinel/SequenceMask/Less7residual_block_4/set_padding_to_sentinel/ExpandDims/dim*
T0
*4
_output_shapes"
 :������������������
{
9residual_block_4/set_padding_to_sentinel/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :
{
9residual_block_4/set_padding_to_sentinel/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
�
7residual_block_4/set_padding_to_sentinel/Tile/multiplesPack9residual_block_4/set_padding_to_sentinel/Tile/multiples/09residual_block_4/set_padding_to_sentinel/Tile/multiples/18residual_block_4/set_padding_to_sentinel/strided_slice_1*
N*
T0*
_output_shapes
:
�
-residual_block_4/set_padding_to_sentinel/TileTile3residual_block_4/set_padding_to_sentinel/ExpandDims7residual_block_4/set_padding_to_sentinel/Tile/multiples*
T0
*4
_output_shapes"
 :������������������

�
3residual_block_4/set_padding_to_sentinel/zeros_like	ZerosLikeresidual_block_4/Relu*
T0*4
_output_shapes"
 :������������������

�
,residual_block_4/set_padding_to_sentinel/addAddV23residual_block_4/set_padding_to_sentinel/zeros_likeresidual_block_4/Const*
T0*4
_output_shapes"
 :������������������

�
/residual_block_4/set_padding_to_sentinel/SelectSelect-residual_block_4/set_padding_to_sentinel/Tileresidual_block_4/Relu,residual_block_4/set_padding_to_sentinel/add*
T0*4
_output_shapes"
 :������������������

�
?residual_block_4/conv1d/kernel/Initializer/random_uniform/shapeConst*1
_class'
%#loc:@residual_block_4/conv1d/kernel*
_output_shapes
:*
dtype0*!
valueB"	   
      
�
=residual_block_4/conv1d/kernel/Initializer/random_uniform/minConst*1
_class'
%#loc:@residual_block_4/conv1d/kernel*
_output_shapes
: *
dtype0*
valueB
 *��W�
�
=residual_block_4/conv1d/kernel/Initializer/random_uniform/maxConst*1
_class'
%#loc:@residual_block_4/conv1d/kernel*
_output_shapes
: *
dtype0*
valueB
 *��W>
�
Gresidual_block_4/conv1d/kernel/Initializer/random_uniform/RandomUniformRandomUniform?residual_block_4/conv1d/kernel/Initializer/random_uniform/shape*
T0*1
_class'
%#loc:@residual_block_4/conv1d/kernel*"
_output_shapes
:	
*
dtype0
�
=residual_block_4/conv1d/kernel/Initializer/random_uniform/subSub=residual_block_4/conv1d/kernel/Initializer/random_uniform/max=residual_block_4/conv1d/kernel/Initializer/random_uniform/min*
T0*1
_class'
%#loc:@residual_block_4/conv1d/kernel*
_output_shapes
: 
�
=residual_block_4/conv1d/kernel/Initializer/random_uniform/mulMulGresidual_block_4/conv1d/kernel/Initializer/random_uniform/RandomUniform=residual_block_4/conv1d/kernel/Initializer/random_uniform/sub*
T0*1
_class'
%#loc:@residual_block_4/conv1d/kernel*"
_output_shapes
:	

�
9residual_block_4/conv1d/kernel/Initializer/random_uniformAddV2=residual_block_4/conv1d/kernel/Initializer/random_uniform/mul=residual_block_4/conv1d/kernel/Initializer/random_uniform/min*
T0*1
_class'
%#loc:@residual_block_4/conv1d/kernel*"
_output_shapes
:	

�
residual_block_4/conv1d/kernel
VariableV2*1
_class'
%#loc:@residual_block_4/conv1d/kernel*"
_output_shapes
:	
*
dtype0*
shape:	

�
%residual_block_4/conv1d/kernel/AssignAssignresidual_block_4/conv1d/kernel9residual_block_4/conv1d/kernel/Initializer/random_uniform*
T0*1
_class'
%#loc:@residual_block_4/conv1d/kernel*"
_output_shapes
:	

�
#residual_block_4/conv1d/kernel/readIdentityresidual_block_4/conv1d/kernel*
T0*1
_class'
%#loc:@residual_block_4/conv1d/kernel*"
_output_shapes
:	

�
.residual_block_4/conv1d/bias/Initializer/zerosConst*/
_class%
#!loc:@residual_block_4/conv1d/bias*
_output_shapes
:*
dtype0*
valueB*    
�
residual_block_4/conv1d/bias
VariableV2*/
_class%
#!loc:@residual_block_4/conv1d/bias*
_output_shapes
:*
dtype0*
shape:
�
#residual_block_4/conv1d/bias/AssignAssignresidual_block_4/conv1d/bias.residual_block_4/conv1d/bias/Initializer/zeros*
T0*/
_class%
#!loc:@residual_block_4/conv1d/bias*
_output_shapes
:
�
!residual_block_4/conv1d/bias/readIdentityresidual_block_4/conv1d/bias*
T0*/
_class%
#!loc:@residual_block_4/conv1d/bias*
_output_shapes
:
v
,residual_block_4/conv1d/Conv1D/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB:Q
�
+residual_block_4/conv1d/Conv1D/filter_shapeConst*
_output_shapes
:*
dtype0*!
valueB"	   
      
}
$residual_block_4/conv1d/Conv1D/stackConst*
_output_shapes

:*
dtype0*!
valueB"D  D  
�
$residual_block_4/conv1d/Conv1D/ShapeShape/residual_block_4/set_padding_to_sentinel/Select*
T0*
_output_shapes
::��
|
2residual_block_4/conv1d/Conv1D/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
~
4residual_block_4/conv1d/Conv1D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
~
4residual_block_4/conv1d/Conv1D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
,residual_block_4/conv1d/Conv1D/strided_sliceStridedSlice$residual_block_4/conv1d/Conv1D/Shape2residual_block_4/conv1d/Conv1D/strided_slice/stack4residual_block_4/conv1d/Conv1D/strided_slice/stack_14residual_block_4/conv1d/Conv1D/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
&residual_block_4/conv1d/Conv1D/stack_1Pack,residual_block_4/conv1d/Conv1D/strided_slice*
N*
T0*
_output_shapes
:
�
Sresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
�
Uresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
�
Uresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
�
Mresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_sliceStridedSlice$residual_block_4/conv1d/Conv1D/stackSresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice/stackUresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice/stack_1Uresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice/stack_2*
Index0*
T0*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask
�
Uresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       
�
Wresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
�
Wresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
�
Oresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1StridedSlice$residual_block_4/conv1d/Conv1D/stackUresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1/stackWresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1/stack_1Wresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask
�
Cresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/addAddV2&residual_block_4/conv1d/Conv1D/stack_1Mresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice*
T0*
_output_shapes
:
�
Eresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/add_1AddV2Cresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/addOresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1*
T0*
_output_shapes
:
�
Cresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/modFloorModEresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/add_1,residual_block_4/conv1d/Conv1D/dilation_rate*
T0*
_output_shapes
:
�
Cresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/subSub,residual_block_4/conv1d/Conv1D/dilation_rateCresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/mod*
T0*
_output_shapes
:
�
Eresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/mod_1FloorModCresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/sub,residual_block_4/conv1d/Conv1D/dilation_rate*
T0*
_output_shapes
:
�
Eresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/add_2AddV2Oresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_1Eresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/mod_1*
T0*
_output_shapes
:
�
Uresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
�
Wresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Wresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
Oresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2StridedSliceMresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_sliceUresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2/stackWresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2/stack_1Wresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
Uresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 
�
Wresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Wresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
Oresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3StridedSliceEresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/add_2Uresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3/stackWresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3/stack_1Wresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
Jresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/paddings/0PackOresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_2Oresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_3*
N*
T0*
_output_shapes
:
�
Hresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/paddingsPackJresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/paddings/0*
N*
T0*
_output_shapes

:
�
Uresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 
�
Wresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Wresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
Oresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4StridedSliceEresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/mod_1Uresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4/stackWresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4/stack_1Wresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
Iresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/crops/0/0Const*
_output_shapes
: *
dtype0*
value	B : 
�
Gresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/crops/0PackIresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/crops/0/0Oresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/strided_slice_4*
N*
T0*
_output_shapes
:
�
Eresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/cropsPackGresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/crops/0*
N*
T0*
_output_shapes

:
~
4residual_block_4/conv1d/Conv1D/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
�
6residual_block_4/conv1d/Conv1D/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
6residual_block_4/conv1d/Conv1D/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
.residual_block_4/conv1d/Conv1D/strided_slice_1StridedSliceHresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/paddings4residual_block_4/conv1d/Conv1D/strided_slice_1/stack6residual_block_4/conv1d/Conv1D/strided_slice_1/stack_16residual_block_4/conv1d/Conv1D/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes

:
r
0residual_block_4/conv1d/Conv1D/concat/concat_dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
,residual_block_4/conv1d/Conv1D/concat/concatIdentity.residual_block_4/conv1d/Conv1D/strided_slice_1*
T0*
_output_shapes

:
~
4residual_block_4/conv1d/Conv1D/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
�
6residual_block_4/conv1d/Conv1D/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
6residual_block_4/conv1d/Conv1D/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
.residual_block_4/conv1d/Conv1D/strided_slice_2StridedSliceEresidual_block_4/conv1d/Conv1D/required_space_to_batch_paddings/crops4residual_block_4/conv1d/Conv1D/strided_slice_2/stack6residual_block_4/conv1d/Conv1D/strided_slice_2/stack_16residual_block_4/conv1d/Conv1D/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes

:
t
2residual_block_4/conv1d/Conv1D/concat_1/concat_dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
.residual_block_4/conv1d/Conv1D/concat_1/concatIdentity.residual_block_4/conv1d/Conv1D/strided_slice_2*
T0*
_output_shapes

:
�
9residual_block_4/conv1d/Conv1D/SpaceToBatchND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB:Q
�
-residual_block_4/conv1d/Conv1D/SpaceToBatchNDSpaceToBatchND/residual_block_4/set_padding_to_sentinel/Select9residual_block_4/conv1d/Conv1D/SpaceToBatchND/block_shape,residual_block_4/conv1d/Conv1D/concat/concat*
T0*4
_output_shapes"
 :������������������

x
-residual_block_4/conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
)residual_block_4/conv1d/Conv1D/ExpandDims
ExpandDims-residual_block_4/conv1d/Conv1D/SpaceToBatchND-residual_block_4/conv1d/Conv1D/ExpandDims/dim*
T0*8
_output_shapes&
$:"������������������

q
/residual_block_4/conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
+residual_block_4/conv1d/Conv1D/ExpandDims_1
ExpandDims#residual_block_4/conv1d/kernel/read/residual_block_4/conv1d/Conv1D/ExpandDims_1/dim*
T0*&
_output_shapes
:	

�
residual_block_4/conv1d/Conv1DConv2D)residual_block_4/conv1d/Conv1D/ExpandDims+residual_block_4/conv1d/Conv1D/ExpandDims_1*
T0*8
_output_shapes&
$:"������������������*
paddingVALID*
strides

�
&residual_block_4/conv1d/Conv1D/SqueezeSqueezeresidual_block_4/conv1d/Conv1D*
T0*4
_output_shapes"
 :������������������*
squeeze_dims

���������
�
9residual_block_4/conv1d/Conv1D/BatchToSpaceND/block_shapeConst*
_output_shapes
:*
dtype0*
valueB:Q
�
-residual_block_4/conv1d/Conv1D/BatchToSpaceNDBatchToSpaceND&residual_block_4/conv1d/Conv1D/Squeeze9residual_block_4/conv1d/Conv1D/BatchToSpaceND/block_shape.residual_block_4/conv1d/Conv1D/concat_1/concat*
T0*4
_output_shapes"
 :������������������
�
residual_block_4/conv1d/BiasAddBiasAdd-residual_block_4/conv1d/Conv1D/BatchToSpaceND!residual_block_4/conv1d/bias/read*
T0*4
_output_shapes"
 :������������������
]
residual_block_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
�
0residual_block_4/set_padding_to_sentinel_1/ShapeShaperesidual_block_4/conv1d/BiasAdd*
T0*
_output_shapes
::��
�
>residual_block_4/set_padding_to_sentinel_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_4/set_padding_to_sentinel_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_4/set_padding_to_sentinel_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
8residual_block_4/set_padding_to_sentinel_1/strided_sliceStridedSlice0residual_block_4/set_padding_to_sentinel_1/Shape>residual_block_4/set_padding_to_sentinel_1/strided_slice/stack@residual_block_4/set_padding_to_sentinel_1/strided_slice/stack_1@residual_block_4/set_padding_to_sentinel_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
2residual_block_4/set_padding_to_sentinel_1/Shape_1Shaperesidual_block_4/conv1d/BiasAdd*
T0*
_output_shapes
::��
�
@residual_block_4/set_padding_to_sentinel_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_4/set_padding_to_sentinel_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_4/set_padding_to_sentinel_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
:residual_block_4/set_padding_to_sentinel_1/strided_slice_1StridedSlice2residual_block_4/set_padding_to_sentinel_1/Shape_1@residual_block_4/set_padding_to_sentinel_1/strided_slice_1/stackBresidual_block_4/set_padding_to_sentinel_1/strided_slice_1/stack_1Bresidual_block_4/set_padding_to_sentinel_1/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

=residual_block_4/set_padding_to_sentinel_1/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
�
?residual_block_4/set_padding_to_sentinel_1/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :
�
=residual_block_4/set_padding_to_sentinel_1/SequenceMask/RangeRange=residual_block_4/set_padding_to_sentinel_1/SequenceMask/Const8residual_block_4/set_padding_to_sentinel_1/strided_slice?residual_block_4/set_padding_to_sentinel_1/SequenceMask/Const_1*#
_output_shapes
:���������
�
Fresidual_block_4/set_padding_to_sentinel_1/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
Bresidual_block_4/set_padding_to_sentinel_1/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholderFresidual_block_4/set_padding_to_sentinel_1/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
<residual_block_4/set_padding_to_sentinel_1/SequenceMask/CastCastBresidual_block_4/set_padding_to_sentinel_1/SequenceMask/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
�
<residual_block_4/set_padding_to_sentinel_1/SequenceMask/LessLess=residual_block_4/set_padding_to_sentinel_1/SequenceMask/Range<residual_block_4/set_padding_to_sentinel_1/SequenceMask/Cast*
T0*0
_output_shapes
:������������������
�
9residual_block_4/set_padding_to_sentinel_1/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
�
5residual_block_4/set_padding_to_sentinel_1/ExpandDims
ExpandDims<residual_block_4/set_padding_to_sentinel_1/SequenceMask/Less9residual_block_4/set_padding_to_sentinel_1/ExpandDims/dim*
T0
*4
_output_shapes"
 :������������������
}
;residual_block_4/set_padding_to_sentinel_1/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :
}
;residual_block_4/set_padding_to_sentinel_1/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
�
9residual_block_4/set_padding_to_sentinel_1/Tile/multiplesPack;residual_block_4/set_padding_to_sentinel_1/Tile/multiples/0;residual_block_4/set_padding_to_sentinel_1/Tile/multiples/1:residual_block_4/set_padding_to_sentinel_1/strided_slice_1*
N*
T0*
_output_shapes
:
�
/residual_block_4/set_padding_to_sentinel_1/TileTile5residual_block_4/set_padding_to_sentinel_1/ExpandDims9residual_block_4/set_padding_to_sentinel_1/Tile/multiples*
T0
*4
_output_shapes"
 :������������������
�
5residual_block_4/set_padding_to_sentinel_1/zeros_like	ZerosLikeresidual_block_4/conv1d/BiasAdd*
T0*4
_output_shapes"
 :������������������
�
.residual_block_4/set_padding_to_sentinel_1/addAddV25residual_block_4/set_padding_to_sentinel_1/zeros_likeresidual_block_4/Const_1*
T0*4
_output_shapes"
 :������������������
�
1residual_block_4/set_padding_to_sentinel_1/SelectSelect/residual_block_4/set_padding_to_sentinel_1/Tileresidual_block_4/conv1d/BiasAdd.residual_block_4/set_padding_to_sentinel_1/add*
T0*4
_output_shapes"
 :������������������
�
=residual_block_4/batch_normalization_1/gamma/Initializer/onesConst*?
_class5
31loc:@residual_block_4/batch_normalization_1/gamma*
_output_shapes
:*
dtype0*
valueB*  �?
�
,residual_block_4/batch_normalization_1/gamma
VariableV2*?
_class5
31loc:@residual_block_4/batch_normalization_1/gamma*
_output_shapes
:*
dtype0*
shape:
�
3residual_block_4/batch_normalization_1/gamma/AssignAssign,residual_block_4/batch_normalization_1/gamma=residual_block_4/batch_normalization_1/gamma/Initializer/ones*
T0*?
_class5
31loc:@residual_block_4/batch_normalization_1/gamma*
_output_shapes
:
�
1residual_block_4/batch_normalization_1/gamma/readIdentity,residual_block_4/batch_normalization_1/gamma*
T0*?
_class5
31loc:@residual_block_4/batch_normalization_1/gamma*
_output_shapes
:
�
=residual_block_4/batch_normalization_1/beta/Initializer/zerosConst*>
_class4
20loc:@residual_block_4/batch_normalization_1/beta*
_output_shapes
:*
dtype0*
valueB*    
�
+residual_block_4/batch_normalization_1/beta
VariableV2*>
_class4
20loc:@residual_block_4/batch_normalization_1/beta*
_output_shapes
:*
dtype0*
shape:
�
2residual_block_4/batch_normalization_1/beta/AssignAssign+residual_block_4/batch_normalization_1/beta=residual_block_4/batch_normalization_1/beta/Initializer/zeros*
T0*>
_class4
20loc:@residual_block_4/batch_normalization_1/beta*
_output_shapes
:
�
0residual_block_4/batch_normalization_1/beta/readIdentity+residual_block_4/batch_normalization_1/beta*
T0*>
_class4
20loc:@residual_block_4/batch_normalization_1/beta*
_output_shapes
:
�
Dresidual_block_4/batch_normalization_1/moving_mean/Initializer/zerosConst*E
_class;
97loc:@residual_block_4/batch_normalization_1/moving_mean*
_output_shapes
:*
dtype0*
valueB*    
�
2residual_block_4/batch_normalization_1/moving_mean
VariableV2*E
_class;
97loc:@residual_block_4/batch_normalization_1/moving_mean*
_output_shapes
:*
dtype0*
shape:
�
9residual_block_4/batch_normalization_1/moving_mean/AssignAssign2residual_block_4/batch_normalization_1/moving_meanDresidual_block_4/batch_normalization_1/moving_mean/Initializer/zeros*
T0*E
_class;
97loc:@residual_block_4/batch_normalization_1/moving_mean*
_output_shapes
:
�
7residual_block_4/batch_normalization_1/moving_mean/readIdentity2residual_block_4/batch_normalization_1/moving_mean*
T0*E
_class;
97loc:@residual_block_4/batch_normalization_1/moving_mean*
_output_shapes
:
�
Gresidual_block_4/batch_normalization_1/moving_variance/Initializer/onesConst*I
_class?
=;loc:@residual_block_4/batch_normalization_1/moving_variance*
_output_shapes
:*
dtype0*
valueB*  �?
�
6residual_block_4/batch_normalization_1/moving_variance
VariableV2*I
_class?
=;loc:@residual_block_4/batch_normalization_1/moving_variance*
_output_shapes
:*
dtype0*
shape:
�
=residual_block_4/batch_normalization_1/moving_variance/AssignAssign6residual_block_4/batch_normalization_1/moving_varianceGresidual_block_4/batch_normalization_1/moving_variance/Initializer/ones*
T0*I
_class?
=;loc:@residual_block_4/batch_normalization_1/moving_variance*
_output_shapes
:
�
;residual_block_4/batch_normalization_1/moving_variance/readIdentity6residual_block_4/batch_normalization_1/moving_variance*
T0*I
_class?
=;loc:@residual_block_4/batch_normalization_1/moving_variance*
_output_shapes
:
{
6residual_block_4/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:
�
4residual_block_4/batch_normalization_1/batchnorm/addAddV2;residual_block_4/batch_normalization_1/moving_variance/read6residual_block_4/batch_normalization_1/batchnorm/add/y*
T0*
_output_shapes
:
�
6residual_block_4/batch_normalization_1/batchnorm/RsqrtRsqrt4residual_block_4/batch_normalization_1/batchnorm/add*
T0*
_output_shapes
:
�
4residual_block_4/batch_normalization_1/batchnorm/mulMul6residual_block_4/batch_normalization_1/batchnorm/Rsqrt1residual_block_4/batch_normalization_1/gamma/read*
T0*
_output_shapes
:
�
6residual_block_4/batch_normalization_1/batchnorm/mul_1Mul1residual_block_4/set_padding_to_sentinel_1/Select4residual_block_4/batch_normalization_1/batchnorm/mul*
T0*4
_output_shapes"
 :������������������
�
6residual_block_4/batch_normalization_1/batchnorm/mul_2Mul7residual_block_4/batch_normalization_1/moving_mean/read4residual_block_4/batch_normalization_1/batchnorm/mul*
T0*
_output_shapes
:
�
4residual_block_4/batch_normalization_1/batchnorm/subSub0residual_block_4/batch_normalization_1/beta/read6residual_block_4/batch_normalization_1/batchnorm/mul_2*
T0*
_output_shapes
:
�
6residual_block_4/batch_normalization_1/batchnorm/add_1AddV26residual_block_4/batch_normalization_1/batchnorm/mul_14residual_block_4/batch_normalization_1/batchnorm/sub*
T0*4
_output_shapes"
 :������������������
�
residual_block_4/Relu_1Relu6residual_block_4/batch_normalization_1/batchnorm/add_1*
T0*4
_output_shapes"
 :������������������
]
residual_block_4/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *    
�
0residual_block_4/set_padding_to_sentinel_2/ShapeShaperesidual_block_4/Relu_1*
T0*
_output_shapes
::��
�
>residual_block_4/set_padding_to_sentinel_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_4/set_padding_to_sentinel_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_4/set_padding_to_sentinel_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
8residual_block_4/set_padding_to_sentinel_2/strided_sliceStridedSlice0residual_block_4/set_padding_to_sentinel_2/Shape>residual_block_4/set_padding_to_sentinel_2/strided_slice/stack@residual_block_4/set_padding_to_sentinel_2/strided_slice/stack_1@residual_block_4/set_padding_to_sentinel_2/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
2residual_block_4/set_padding_to_sentinel_2/Shape_1Shaperesidual_block_4/Relu_1*
T0*
_output_shapes
::��
�
@residual_block_4/set_padding_to_sentinel_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_4/set_padding_to_sentinel_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_4/set_padding_to_sentinel_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
:residual_block_4/set_padding_to_sentinel_2/strided_slice_1StridedSlice2residual_block_4/set_padding_to_sentinel_2/Shape_1@residual_block_4/set_padding_to_sentinel_2/strided_slice_1/stackBresidual_block_4/set_padding_to_sentinel_2/strided_slice_1/stack_1Bresidual_block_4/set_padding_to_sentinel_2/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

=residual_block_4/set_padding_to_sentinel_2/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
�
?residual_block_4/set_padding_to_sentinel_2/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :
�
=residual_block_4/set_padding_to_sentinel_2/SequenceMask/RangeRange=residual_block_4/set_padding_to_sentinel_2/SequenceMask/Const8residual_block_4/set_padding_to_sentinel_2/strided_slice?residual_block_4/set_padding_to_sentinel_2/SequenceMask/Const_1*#
_output_shapes
:���������
�
Fresidual_block_4/set_padding_to_sentinel_2/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
Bresidual_block_4/set_padding_to_sentinel_2/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholderFresidual_block_4/set_padding_to_sentinel_2/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
<residual_block_4/set_padding_to_sentinel_2/SequenceMask/CastCastBresidual_block_4/set_padding_to_sentinel_2/SequenceMask/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
�
<residual_block_4/set_padding_to_sentinel_2/SequenceMask/LessLess=residual_block_4/set_padding_to_sentinel_2/SequenceMask/Range<residual_block_4/set_padding_to_sentinel_2/SequenceMask/Cast*
T0*0
_output_shapes
:������������������
�
9residual_block_4/set_padding_to_sentinel_2/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
�
5residual_block_4/set_padding_to_sentinel_2/ExpandDims
ExpandDims<residual_block_4/set_padding_to_sentinel_2/SequenceMask/Less9residual_block_4/set_padding_to_sentinel_2/ExpandDims/dim*
T0
*4
_output_shapes"
 :������������������
}
;residual_block_4/set_padding_to_sentinel_2/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :
}
;residual_block_4/set_padding_to_sentinel_2/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
�
9residual_block_4/set_padding_to_sentinel_2/Tile/multiplesPack;residual_block_4/set_padding_to_sentinel_2/Tile/multiples/0;residual_block_4/set_padding_to_sentinel_2/Tile/multiples/1:residual_block_4/set_padding_to_sentinel_2/strided_slice_1*
N*
T0*
_output_shapes
:
�
/residual_block_4/set_padding_to_sentinel_2/TileTile5residual_block_4/set_padding_to_sentinel_2/ExpandDims9residual_block_4/set_padding_to_sentinel_2/Tile/multiples*
T0
*4
_output_shapes"
 :������������������
�
5residual_block_4/set_padding_to_sentinel_2/zeros_like	ZerosLikeresidual_block_4/Relu_1*
T0*4
_output_shapes"
 :������������������
�
.residual_block_4/set_padding_to_sentinel_2/addAddV25residual_block_4/set_padding_to_sentinel_2/zeros_likeresidual_block_4/Const_2*
T0*4
_output_shapes"
 :������������������
�
1residual_block_4/set_padding_to_sentinel_2/SelectSelect/residual_block_4/set_padding_to_sentinel_2/Tileresidual_block_4/Relu_1.residual_block_4/set_padding_to_sentinel_2/add*
T0*4
_output_shapes"
 :������������������
�
Aresidual_block_4/conv1d_1/kernel/Initializer/random_uniform/shapeConst*3
_class)
'%loc:@residual_block_4/conv1d_1/kernel*
_output_shapes
:*
dtype0*!
valueB"      
   
�
?residual_block_4/conv1d_1/kernel/Initializer/random_uniform/minConst*3
_class)
'%loc:@residual_block_4/conv1d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *��!�
�
?residual_block_4/conv1d_1/kernel/Initializer/random_uniform/maxConst*3
_class)
'%loc:@residual_block_4/conv1d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *��!?
�
Iresidual_block_4/conv1d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniformAresidual_block_4/conv1d_1/kernel/Initializer/random_uniform/shape*
T0*3
_class)
'%loc:@residual_block_4/conv1d_1/kernel*"
_output_shapes
:
*
dtype0
�
?residual_block_4/conv1d_1/kernel/Initializer/random_uniform/subSub?residual_block_4/conv1d_1/kernel/Initializer/random_uniform/max?residual_block_4/conv1d_1/kernel/Initializer/random_uniform/min*
T0*3
_class)
'%loc:@residual_block_4/conv1d_1/kernel*
_output_shapes
: 
�
?residual_block_4/conv1d_1/kernel/Initializer/random_uniform/mulMulIresidual_block_4/conv1d_1/kernel/Initializer/random_uniform/RandomUniform?residual_block_4/conv1d_1/kernel/Initializer/random_uniform/sub*
T0*3
_class)
'%loc:@residual_block_4/conv1d_1/kernel*"
_output_shapes
:

�
;residual_block_4/conv1d_1/kernel/Initializer/random_uniformAddV2?residual_block_4/conv1d_1/kernel/Initializer/random_uniform/mul?residual_block_4/conv1d_1/kernel/Initializer/random_uniform/min*
T0*3
_class)
'%loc:@residual_block_4/conv1d_1/kernel*"
_output_shapes
:

�
 residual_block_4/conv1d_1/kernel
VariableV2*3
_class)
'%loc:@residual_block_4/conv1d_1/kernel*"
_output_shapes
:
*
dtype0*
shape:

�
'residual_block_4/conv1d_1/kernel/AssignAssign residual_block_4/conv1d_1/kernel;residual_block_4/conv1d_1/kernel/Initializer/random_uniform*
T0*3
_class)
'%loc:@residual_block_4/conv1d_1/kernel*"
_output_shapes
:

�
%residual_block_4/conv1d_1/kernel/readIdentity residual_block_4/conv1d_1/kernel*
T0*3
_class)
'%loc:@residual_block_4/conv1d_1/kernel*"
_output_shapes
:

�
0residual_block_4/conv1d_1/bias/Initializer/zerosConst*1
_class'
%#loc:@residual_block_4/conv1d_1/bias*
_output_shapes
:
*
dtype0*
valueB
*    
�
residual_block_4/conv1d_1/bias
VariableV2*1
_class'
%#loc:@residual_block_4/conv1d_1/bias*
_output_shapes
:
*
dtype0*
shape:

�
%residual_block_4/conv1d_1/bias/AssignAssignresidual_block_4/conv1d_1/bias0residual_block_4/conv1d_1/bias/Initializer/zeros*
T0*1
_class'
%#loc:@residual_block_4/conv1d_1/bias*
_output_shapes
:

�
#residual_block_4/conv1d_1/bias/readIdentityresidual_block_4/conv1d_1/bias*
T0*1
_class'
%#loc:@residual_block_4/conv1d_1/bias*
_output_shapes
:

z
/residual_block_4/conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
+residual_block_4/conv1d_1/Conv1D/ExpandDims
ExpandDims1residual_block_4/set_padding_to_sentinel_2/Select/residual_block_4/conv1d_1/Conv1D/ExpandDims/dim*
T0*8
_output_shapes&
$:"������������������
s
1residual_block_4/conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
-residual_block_4/conv1d_1/Conv1D/ExpandDims_1
ExpandDims%residual_block_4/conv1d_1/kernel/read1residual_block_4/conv1d_1/Conv1D/ExpandDims_1/dim*
T0*&
_output_shapes
:

�
 residual_block_4/conv1d_1/Conv1DConv2D+residual_block_4/conv1d_1/Conv1D/ExpandDims-residual_block_4/conv1d_1/Conv1D/ExpandDims_1*
T0*8
_output_shapes&
$:"������������������
*
paddingSAME*
strides

�
(residual_block_4/conv1d_1/Conv1D/SqueezeSqueeze residual_block_4/conv1d_1/Conv1D*
T0*4
_output_shapes"
 :������������������
*
squeeze_dims

���������
�
!residual_block_4/conv1d_1/BiasAddBiasAdd(residual_block_4/conv1d_1/Conv1D/Squeeze#residual_block_4/conv1d_1/bias/read*
T0*4
_output_shapes"
 :������������������

]
residual_block_4/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *    
�
0residual_block_4/set_padding_to_sentinel_3/ShapeShape!residual_block_4/conv1d_1/BiasAdd*
T0*
_output_shapes
::��
�
>residual_block_4/set_padding_to_sentinel_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_4/set_padding_to_sentinel_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
@residual_block_4/set_padding_to_sentinel_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
8residual_block_4/set_padding_to_sentinel_3/strided_sliceStridedSlice0residual_block_4/set_padding_to_sentinel_3/Shape>residual_block_4/set_padding_to_sentinel_3/strided_slice/stack@residual_block_4/set_padding_to_sentinel_3/strided_slice/stack_1@residual_block_4/set_padding_to_sentinel_3/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
�
2residual_block_4/set_padding_to_sentinel_3/Shape_1Shape!residual_block_4/conv1d_1/BiasAdd*
T0*
_output_shapes
::��
�
@residual_block_4/set_padding_to_sentinel_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_4/set_padding_to_sentinel_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Bresidual_block_4/set_padding_to_sentinel_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
:residual_block_4/set_padding_to_sentinel_3/strided_slice_1StridedSlice2residual_block_4/set_padding_to_sentinel_3/Shape_1@residual_block_4/set_padding_to_sentinel_3/strided_slice_1/stackBresidual_block_4/set_padding_to_sentinel_3/strided_slice_1/stack_1Bresidual_block_4/set_padding_to_sentinel_3/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

=residual_block_4/set_padding_to_sentinel_3/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
�
?residual_block_4/set_padding_to_sentinel_3/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :
�
=residual_block_4/set_padding_to_sentinel_3/SequenceMask/RangeRange=residual_block_4/set_padding_to_sentinel_3/SequenceMask/Const8residual_block_4/set_padding_to_sentinel_3/strided_slice?residual_block_4/set_padding_to_sentinel_3/SequenceMask/Const_1*#
_output_shapes
:���������
�
Fresidual_block_4/set_padding_to_sentinel_3/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
Bresidual_block_4/set_padding_to_sentinel_3/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholderFresidual_block_4/set_padding_to_sentinel_3/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
<residual_block_4/set_padding_to_sentinel_3/SequenceMask/CastCastBresidual_block_4/set_padding_to_sentinel_3/SequenceMask/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
�
<residual_block_4/set_padding_to_sentinel_3/SequenceMask/LessLess=residual_block_4/set_padding_to_sentinel_3/SequenceMask/Range<residual_block_4/set_padding_to_sentinel_3/SequenceMask/Cast*
T0*0
_output_shapes
:������������������
�
9residual_block_4/set_padding_to_sentinel_3/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
�
5residual_block_4/set_padding_to_sentinel_3/ExpandDims
ExpandDims<residual_block_4/set_padding_to_sentinel_3/SequenceMask/Less9residual_block_4/set_padding_to_sentinel_3/ExpandDims/dim*
T0
*4
_output_shapes"
 :������������������
}
;residual_block_4/set_padding_to_sentinel_3/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :
}
;residual_block_4/set_padding_to_sentinel_3/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
�
9residual_block_4/set_padding_to_sentinel_3/Tile/multiplesPack;residual_block_4/set_padding_to_sentinel_3/Tile/multiples/0;residual_block_4/set_padding_to_sentinel_3/Tile/multiples/1:residual_block_4/set_padding_to_sentinel_3/strided_slice_1*
N*
T0*
_output_shapes
:
�
/residual_block_4/set_padding_to_sentinel_3/TileTile5residual_block_4/set_padding_to_sentinel_3/ExpandDims9residual_block_4/set_padding_to_sentinel_3/Tile/multiples*
T0
*4
_output_shapes"
 :������������������

�
5residual_block_4/set_padding_to_sentinel_3/zeros_like	ZerosLike!residual_block_4/conv1d_1/BiasAdd*
T0*4
_output_shapes"
 :������������������

�
.residual_block_4/set_padding_to_sentinel_3/addAddV25residual_block_4/set_padding_to_sentinel_3/zeros_likeresidual_block_4/Const_3*
T0*4
_output_shapes"
 :������������������

�
1residual_block_4/set_padding_to_sentinel_3/SelectSelect/residual_block_4/set_padding_to_sentinel_3/Tile!residual_block_4/conv1d_1/BiasAdd.residual_block_4/set_padding_to_sentinel_3/add*
T0*4
_output_shapes"
 :������������������

�
residual_block_4/addAddV2residual_block_3/add1residual_block_4/set_padding_to_sentinel_3/Select*
T0*4
_output_shapes"
 :������������������

o
representationIdentityresidual_block_4/add*
T0*4
_output_shapes"
 :������������������

�
0conv1d_1/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv1d_1/kernel*
_output_shapes
:*
dtype0*!
valueB"   
      
�
.conv1d_1/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv1d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *q��
�
.conv1d_1/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv1d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *q�?
�
8conv1d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv1d_1/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv1d_1/kernel*"
_output_shapes
:
*
dtype0
�
.conv1d_1/kernel/Initializer/random_uniform/subSub.conv1d_1/kernel/Initializer/random_uniform/max.conv1d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv1d_1/kernel*
_output_shapes
: 
�
.conv1d_1/kernel/Initializer/random_uniform/mulMul8conv1d_1/kernel/Initializer/random_uniform/RandomUniform.conv1d_1/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv1d_1/kernel*"
_output_shapes
:

�
*conv1d_1/kernel/Initializer/random_uniformAddV2.conv1d_1/kernel/Initializer/random_uniform/mul.conv1d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv1d_1/kernel*"
_output_shapes
:

�
conv1d_1/kernel
VariableV2*"
_class
loc:@conv1d_1/kernel*"
_output_shapes
:
*
dtype0*
shape:

�
conv1d_1/kernel/AssignAssignconv1d_1/kernel*conv1d_1/kernel/Initializer/random_uniform*
T0*"
_class
loc:@conv1d_1/kernel*"
_output_shapes
:

�
conv1d_1/kernel/readIdentityconv1d_1/kernel*
T0*"
_class
loc:@conv1d_1/kernel*"
_output_shapes
:

�
conv1d_1/bias/Initializer/zerosConst* 
_class
loc:@conv1d_1/bias*
_output_shapes
:*
dtype0*
valueB*    
w
conv1d_1/bias
VariableV2* 
_class
loc:@conv1d_1/bias*
_output_shapes
:*
dtype0*
shape:
�
conv1d_1/bias/AssignAssignconv1d_1/biasconv1d_1/bias/Initializer/zeros*
T0* 
_class
loc:@conv1d_1/bias*
_output_shapes
:
t
conv1d_1/bias/readIdentityconv1d_1/bias*
T0* 
_class
loc:@conv1d_1/bias*
_output_shapes
:
i
conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
conv1d_1/Conv1D/ExpandDims
ExpandDimsrepresentationconv1d_1/Conv1D/ExpandDims/dim*
T0*8
_output_shapes&
$:"������������������

b
 conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
conv1d_1/Conv1D/ExpandDims_1
ExpandDimsconv1d_1/kernel/read conv1d_1/Conv1D/ExpandDims_1/dim*
T0*&
_output_shapes
:

�
conv1d_1/Conv1DConv2Dconv1d_1/Conv1D/ExpandDimsconv1d_1/Conv1D/ExpandDims_1*
T0*8
_output_shapes&
$:"������������������*
paddingVALID*
strides

�
conv1d_1/Conv1D/SqueezeSqueezeconv1d_1/Conv1D*
T0*4
_output_shapes"
 :������������������*
squeeze_dims

���������
�
conv1d_1/BiasAddBiasAddconv1d_1/Conv1D/Squeezeconv1d_1/bias/read*
T0*4
_output_shapes"
 :������������������
L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *    
m
set_padding_to_sentinel_2/ShapeShapeconv1d_1/BiasAdd*
T0*
_output_shapes
::��
w
-set_padding_to_sentinel_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
y
/set_padding_to_sentinel_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
y
/set_padding_to_sentinel_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
'set_padding_to_sentinel_2/strided_sliceStridedSliceset_padding_to_sentinel_2/Shape-set_padding_to_sentinel_2/strided_slice/stack/set_padding_to_sentinel_2/strided_slice/stack_1/set_padding_to_sentinel_2/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
o
!set_padding_to_sentinel_2/Shape_1Shapeconv1d_1/BiasAdd*
T0*
_output_shapes
::��
y
/set_padding_to_sentinel_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
{
1set_padding_to_sentinel_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
{
1set_padding_to_sentinel_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
)set_padding_to_sentinel_2/strided_slice_1StridedSlice!set_padding_to_sentinel_2/Shape_1/set_padding_to_sentinel_2/strided_slice_1/stack1set_padding_to_sentinel_2/strided_slice_1/stack_11set_padding_to_sentinel_2/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
n
,set_padding_to_sentinel_2/SequenceMask/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
p
.set_padding_to_sentinel_2/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0*
value	B :
�
,set_padding_to_sentinel_2/SequenceMask/RangeRange,set_padding_to_sentinel_2/SequenceMask/Const'set_padding_to_sentinel_2/strided_slice.set_padding_to_sentinel_2/SequenceMask/Const_1*#
_output_shapes
:���������
�
5set_padding_to_sentinel_2/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
1set_padding_to_sentinel_2/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholder5set_padding_to_sentinel_2/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
+set_padding_to_sentinel_2/SequenceMask/CastCast1set_padding_to_sentinel_2/SequenceMask/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
�
+set_padding_to_sentinel_2/SequenceMask/LessLess,set_padding_to_sentinel_2/SequenceMask/Range+set_padding_to_sentinel_2/SequenceMask/Cast*
T0*0
_output_shapes
:������������������
r
(set_padding_to_sentinel_2/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
�
$set_padding_to_sentinel_2/ExpandDims
ExpandDims+set_padding_to_sentinel_2/SequenceMask/Less(set_padding_to_sentinel_2/ExpandDims/dim*
T0
*4
_output_shapes"
 :������������������
l
*set_padding_to_sentinel_2/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :
l
*set_padding_to_sentinel_2/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
�
(set_padding_to_sentinel_2/Tile/multiplesPack*set_padding_to_sentinel_2/Tile/multiples/0*set_padding_to_sentinel_2/Tile/multiples/1)set_padding_to_sentinel_2/strided_slice_1*
N*
T0*
_output_shapes
:
�
set_padding_to_sentinel_2/TileTile$set_padding_to_sentinel_2/ExpandDims(set_padding_to_sentinel_2/Tile/multiples*
T0
*4
_output_shapes"
 :������������������
�
$set_padding_to_sentinel_2/zeros_like	ZerosLikeconv1d_1/BiasAdd*
T0*4
_output_shapes"
 :������������������
�
set_padding_to_sentinel_2/addAddV2$set_padding_to_sentinel_2/zeros_likeConst_2*
T0*4
_output_shapes"
 :������������������
�
 set_padding_to_sentinel_2/SelectSelectset_padding_to_sentinel_2/Tileconv1d_1/BiasAddset_padding_to_sentinel_2/add*
T0*4
_output_shapes"
 :������������������
s
SigmoidSigmoid set_padding_to_sentinel_2/Select*
T0*4
_output_shapes"
 :������������������
_
confidencesIdentitySigmoid*
T0*4
_output_shapes"
 :������������������
o
RaggedFromTensor/ShapeShapeconfidences*
T0*
_output_shapes
:*
out_type0	:��
n
$RaggedFromTensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
p
&RaggedFromTensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
p
&RaggedFromTensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
RaggedFromTensor/strided_sliceStridedSliceRaggedFromTensor/Shape$RaggedFromTensor/strided_slice/stack&RaggedFromTensor/strided_slice/stack_1&RaggedFromTensor/strided_slice/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
w
RaggedFromTensor/CastCastsequence_length_placeholder*

DstT0	*

SrcT0*#
_output_shapes
:���������
�
RaggedFromTensor/MinimumMinimumRaggedFromTensor/CastRaggedFromTensor/strided_slice*
T0	*#
_output_shapes
:���������
\
RaggedFromTensor/Maximum/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
�
RaggedFromTensor/MaximumMaximumRaggedFromTensor/MinimumRaggedFromTensor/Maximum/y*
T0	*#
_output_shapes
:���������
^
RaggedFromTensor/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 
�
RaggedFromTensor/CumsumCumsumRaggedFromTensor/MaximumRaggedFromTensor/Cumsum/axis*
T0	*#
_output_shapes
:���������
`
RaggedFromTensor/zerosConst*
_output_shapes
:*
dtype0	*
valueB	R 
^
RaggedFromTensor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
�
RaggedFromTensor/concatConcatV2RaggedFromTensor/zerosRaggedFromTensor/CumsumRaggedFromTensor/concat/axis*
N*
T0	*#
_output_shapes
:���������
e
#RaggedFromTensor/SequenceMask/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
g
%RaggedFromTensor/SequenceMask/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R
�
#RaggedFromTensor/SequenceMask/RangeRange#RaggedFromTensor/SequenceMask/ConstRaggedFromTensor/strided_slice%RaggedFromTensor/SequenceMask/Const_1*

Tidx0	*#
_output_shapes
:���������
w
,RaggedFromTensor/SequenceMask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
(RaggedFromTensor/SequenceMask/ExpandDims
ExpandDimsRaggedFromTensor/Maximum,RaggedFromTensor/SequenceMask/ExpandDims/dim*
T0	*'
_output_shapes
:���������
�
"RaggedFromTensor/SequenceMask/CastCast(RaggedFromTensor/SequenceMask/ExpandDims*

DstT0	*

SrcT0	*'
_output_shapes
:���������
�
"RaggedFromTensor/SequenceMask/LessLess#RaggedFromTensor/SequenceMask/Range"RaggedFromTensor/SequenceMask/Cast*
T0	*0
_output_shapes
:������������������
l
#RaggedFromTensor/boolean_mask/ShapeShapeconfidences*
T0*
_output_shapes
::��
{
1RaggedFromTensor/boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
}
3RaggedFromTensor/boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
}
3RaggedFromTensor/boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
+RaggedFromTensor/boolean_mask/strided_sliceStridedSlice#RaggedFromTensor/boolean_mask/Shape1RaggedFromTensor/boolean_mask/strided_slice/stack3RaggedFromTensor/boolean_mask/strided_slice/stack_13RaggedFromTensor/boolean_mask/strided_slice/stack_2*
Index0*
T0*
_output_shapes
:
~
4RaggedFromTensor/boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
�
"RaggedFromTensor/boolean_mask/ProdProd+RaggedFromTensor/boolean_mask/strided_slice4RaggedFromTensor/boolean_mask/Prod/reduction_indices*
T0*
_output_shapes
: 
n
%RaggedFromTensor/boolean_mask/Shape_1Shapeconfidences*
T0*
_output_shapes
::��
}
3RaggedFromTensor/boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 

5RaggedFromTensor/boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 

5RaggedFromTensor/boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
-RaggedFromTensor/boolean_mask/strided_slice_1StridedSlice%RaggedFromTensor/boolean_mask/Shape_13RaggedFromTensor/boolean_mask/strided_slice_1/stack5RaggedFromTensor/boolean_mask/strided_slice_1/stack_15RaggedFromTensor/boolean_mask/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask
n
%RaggedFromTensor/boolean_mask/Shape_2Shapeconfidences*
T0*
_output_shapes
::��
}
3RaggedFromTensor/boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:

5RaggedFromTensor/boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 

5RaggedFromTensor/boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
-RaggedFromTensor/boolean_mask/strided_slice_2StridedSlice%RaggedFromTensor/boolean_mask/Shape_23RaggedFromTensor/boolean_mask/strided_slice_2/stack5RaggedFromTensor/boolean_mask/strided_slice_2/stack_15RaggedFromTensor/boolean_mask/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
:*
end_mask
�
-RaggedFromTensor/boolean_mask/concat/values_1Pack"RaggedFromTensor/boolean_mask/Prod*
N*
T0*
_output_shapes
:
k
)RaggedFromTensor/boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
�
$RaggedFromTensor/boolean_mask/concatConcatV2-RaggedFromTensor/boolean_mask/strided_slice_1-RaggedFromTensor/boolean_mask/concat/values_1-RaggedFromTensor/boolean_mask/strided_slice_2)RaggedFromTensor/boolean_mask/concat/axis*
N*
T0*
_output_shapes
:
�
%RaggedFromTensor/boolean_mask/ReshapeReshapeconfidences$RaggedFromTensor/boolean_mask/concat*
T0*'
_output_shapes
:���������
�
-RaggedFromTensor/boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������
�
'RaggedFromTensor/boolean_mask/Reshape_1Reshape"RaggedFromTensor/SequenceMask/Less-RaggedFromTensor/boolean_mask/Reshape_1/shape*
T0
*#
_output_shapes
:���������
~
#RaggedFromTensor/boolean_mask/WhereWhere'RaggedFromTensor/boolean_mask/Reshape_1*'
_output_shapes
:���������
�
%RaggedFromTensor/boolean_mask/SqueezeSqueeze#RaggedFromTensor/boolean_mask/Where*
T0	*#
_output_shapes
:���������*
squeeze_dims

m
+RaggedFromTensor/boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
�
&RaggedFromTensor/boolean_mask/GatherV2GatherV2%RaggedFromTensor/boolean_mask/Reshape%RaggedFromTensor/boolean_mask/Squeeze+RaggedFromTensor/boolean_mask/GatherV2/axis*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:���������
4
initNoOp*&
 _has_manual_control_dependencies(
?
init_all_tablesNoOp*&
 _has_manual_control_dependencies(
6
init_1NoOp*&
 _has_manual_control_dependencies(
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
{
save/StaticRegexFullMatchStaticRegexFullMatch
save/Const"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
a
save/Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
f
save/Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
|
save/SelectSelectsave/StaticRegexFullMatchsave/Const_1save/Const_2"/device:CPU:**
T0*
_output_shapes
: 
f
save/StringJoin
StringJoin
save/Constsave/Select"/device:CPU:**
N*
_output_shapes
: 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
�
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
�
save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:A*
dtype0*�
value�B�ABconv1d/biasBconv1d/kernelBconv1d_1/biasBconv1d_1/kernelBglobal_stepB)residual_block_0/batch_normalization/betaB*residual_block_0/batch_normalization/gammaB0residual_block_0/batch_normalization/moving_meanB4residual_block_0/batch_normalization/moving_varianceB+residual_block_0/batch_normalization_1/betaB,residual_block_0/batch_normalization_1/gammaB2residual_block_0/batch_normalization_1/moving_meanB6residual_block_0/batch_normalization_1/moving_varianceBresidual_block_0/conv1d/biasBresidual_block_0/conv1d/kernelBresidual_block_0/conv1d_1/biasB residual_block_0/conv1d_1/kernelB)residual_block_1/batch_normalization/betaB*residual_block_1/batch_normalization/gammaB0residual_block_1/batch_normalization/moving_meanB4residual_block_1/batch_normalization/moving_varianceB+residual_block_1/batch_normalization_1/betaB,residual_block_1/batch_normalization_1/gammaB2residual_block_1/batch_normalization_1/moving_meanB6residual_block_1/batch_normalization_1/moving_varianceBresidual_block_1/conv1d/biasBresidual_block_1/conv1d/kernelBresidual_block_1/conv1d_1/biasB residual_block_1/conv1d_1/kernelB)residual_block_2/batch_normalization/betaB*residual_block_2/batch_normalization/gammaB0residual_block_2/batch_normalization/moving_meanB4residual_block_2/batch_normalization/moving_varianceB+residual_block_2/batch_normalization_1/betaB,residual_block_2/batch_normalization_1/gammaB2residual_block_2/batch_normalization_1/moving_meanB6residual_block_2/batch_normalization_1/moving_varianceBresidual_block_2/conv1d/biasBresidual_block_2/conv1d/kernelBresidual_block_2/conv1d_1/biasB residual_block_2/conv1d_1/kernelB)residual_block_3/batch_normalization/betaB*residual_block_3/batch_normalization/gammaB0residual_block_3/batch_normalization/moving_meanB4residual_block_3/batch_normalization/moving_varianceB+residual_block_3/batch_normalization_1/betaB,residual_block_3/batch_normalization_1/gammaB2residual_block_3/batch_normalization_1/moving_meanB6residual_block_3/batch_normalization_1/moving_varianceBresidual_block_3/conv1d/biasBresidual_block_3/conv1d/kernelBresidual_block_3/conv1d_1/biasB residual_block_3/conv1d_1/kernelB)residual_block_4/batch_normalization/betaB*residual_block_4/batch_normalization/gammaB0residual_block_4/batch_normalization/moving_meanB4residual_block_4/batch_normalization/moving_varianceB+residual_block_4/batch_normalization_1/betaB,residual_block_4/batch_normalization_1/gammaB2residual_block_4/batch_normalization_1/moving_meanB6residual_block_4/batch_normalization_1/moving_varianceBresidual_block_4/conv1d/biasBresidual_block_4/conv1d/kernelBresidual_block_4/conv1d_1/biasB residual_block_4/conv1d_1/kernel
�
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:A*
dtype0*�
value�B�AB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
�
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesconv1d/biasconv1d/kernelconv1d_1/biasconv1d_1/kernelglobal_step)residual_block_0/batch_normalization/beta*residual_block_0/batch_normalization/gamma0residual_block_0/batch_normalization/moving_mean4residual_block_0/batch_normalization/moving_variance+residual_block_0/batch_normalization_1/beta,residual_block_0/batch_normalization_1/gamma2residual_block_0/batch_normalization_1/moving_mean6residual_block_0/batch_normalization_1/moving_varianceresidual_block_0/conv1d/biasresidual_block_0/conv1d/kernelresidual_block_0/conv1d_1/bias residual_block_0/conv1d_1/kernel)residual_block_1/batch_normalization/beta*residual_block_1/batch_normalization/gamma0residual_block_1/batch_normalization/moving_mean4residual_block_1/batch_normalization/moving_variance+residual_block_1/batch_normalization_1/beta,residual_block_1/batch_normalization_1/gamma2residual_block_1/batch_normalization_1/moving_mean6residual_block_1/batch_normalization_1/moving_varianceresidual_block_1/conv1d/biasresidual_block_1/conv1d/kernelresidual_block_1/conv1d_1/bias residual_block_1/conv1d_1/kernel)residual_block_2/batch_normalization/beta*residual_block_2/batch_normalization/gamma0residual_block_2/batch_normalization/moving_mean4residual_block_2/batch_normalization/moving_variance+residual_block_2/batch_normalization_1/beta,residual_block_2/batch_normalization_1/gamma2residual_block_2/batch_normalization_1/moving_mean6residual_block_2/batch_normalization_1/moving_varianceresidual_block_2/conv1d/biasresidual_block_2/conv1d/kernelresidual_block_2/conv1d_1/bias residual_block_2/conv1d_1/kernel)residual_block_3/batch_normalization/beta*residual_block_3/batch_normalization/gamma0residual_block_3/batch_normalization/moving_mean4residual_block_3/batch_normalization/moving_variance+residual_block_3/batch_normalization_1/beta,residual_block_3/batch_normalization_1/gamma2residual_block_3/batch_normalization_1/moving_mean6residual_block_3/batch_normalization_1/moving_varianceresidual_block_3/conv1d/biasresidual_block_3/conv1d/kernelresidual_block_3/conv1d_1/bias residual_block_3/conv1d_1/kernel)residual_block_4/batch_normalization/beta*residual_block_4/batch_normalization/gamma0residual_block_4/batch_normalization/moving_mean4residual_block_4/batch_normalization/moving_variance+residual_block_4/batch_normalization_1/beta,residual_block_4/batch_normalization_1/gamma2residual_block_4/batch_normalization_1/moving_mean6residual_block_4/batch_normalization_1/moving_varianceresidual_block_4/conv1d/biasresidual_block_4/conv1d/kernelresidual_block_4/conv1d_1/bias residual_block_4/conv1d_1/kernel"/device:CPU:0*&
 _has_manual_control_dependencies(*O
dtypesE
C2A	
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*&
 _has_manual_control_dependencies(*
_output_shapes
: 
�
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:
�
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*&
 _has_manual_control_dependencies(
�
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:A*
dtype0*�
value�B�ABconv1d/biasBconv1d/kernelBconv1d_1/biasBconv1d_1/kernelBglobal_stepB)residual_block_0/batch_normalization/betaB*residual_block_0/batch_normalization/gammaB0residual_block_0/batch_normalization/moving_meanB4residual_block_0/batch_normalization/moving_varianceB+residual_block_0/batch_normalization_1/betaB,residual_block_0/batch_normalization_1/gammaB2residual_block_0/batch_normalization_1/moving_meanB6residual_block_0/batch_normalization_1/moving_varianceBresidual_block_0/conv1d/biasBresidual_block_0/conv1d/kernelBresidual_block_0/conv1d_1/biasB residual_block_0/conv1d_1/kernelB)residual_block_1/batch_normalization/betaB*residual_block_1/batch_normalization/gammaB0residual_block_1/batch_normalization/moving_meanB4residual_block_1/batch_normalization/moving_varianceB+residual_block_1/batch_normalization_1/betaB,residual_block_1/batch_normalization_1/gammaB2residual_block_1/batch_normalization_1/moving_meanB6residual_block_1/batch_normalization_1/moving_varianceBresidual_block_1/conv1d/biasBresidual_block_1/conv1d/kernelBresidual_block_1/conv1d_1/biasB residual_block_1/conv1d_1/kernelB)residual_block_2/batch_normalization/betaB*residual_block_2/batch_normalization/gammaB0residual_block_2/batch_normalization/moving_meanB4residual_block_2/batch_normalization/moving_varianceB+residual_block_2/batch_normalization_1/betaB,residual_block_2/batch_normalization_1/gammaB2residual_block_2/batch_normalization_1/moving_meanB6residual_block_2/batch_normalization_1/moving_varianceBresidual_block_2/conv1d/biasBresidual_block_2/conv1d/kernelBresidual_block_2/conv1d_1/biasB residual_block_2/conv1d_1/kernelB)residual_block_3/batch_normalization/betaB*residual_block_3/batch_normalization/gammaB0residual_block_3/batch_normalization/moving_meanB4residual_block_3/batch_normalization/moving_varianceB+residual_block_3/batch_normalization_1/betaB,residual_block_3/batch_normalization_1/gammaB2residual_block_3/batch_normalization_1/moving_meanB6residual_block_3/batch_normalization_1/moving_varianceBresidual_block_3/conv1d/biasBresidual_block_3/conv1d/kernelBresidual_block_3/conv1d_1/biasB residual_block_3/conv1d_1/kernelB)residual_block_4/batch_normalization/betaB*residual_block_4/batch_normalization/gammaB0residual_block_4/batch_normalization/moving_meanB4residual_block_4/batch_normalization/moving_varianceB+residual_block_4/batch_normalization_1/betaB,residual_block_4/batch_normalization_1/gammaB2residual_block_4/batch_normalization_1/moving_meanB6residual_block_4/batch_normalization_1/moving_varianceBresidual_block_4/conv1d/biasBresidual_block_4/conv1d/kernelBresidual_block_4/conv1d_1/biasB residual_block_4/conv1d_1/kernel
�
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:A*
dtype0*�
value�B�AB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*O
dtypesE
C2A	
�
save/AssignAssignconv1d/biassave/RestoreV2*
T0*
_class
loc:@conv1d/bias*&
 _has_manual_control_dependencies(*
_output_shapes
:

�
save/Assign_1Assignconv1d/kernelsave/RestoreV2:1*
T0* 
_class
loc:@conv1d/kernel*&
 _has_manual_control_dependencies(*"
_output_shapes
:	

�
save/Assign_2Assignconv1d_1/biassave/RestoreV2:2*
T0* 
_class
loc:@conv1d_1/bias*&
 _has_manual_control_dependencies(*
_output_shapes
:
�
save/Assign_3Assignconv1d_1/kernelsave/RestoreV2:3*
T0*"
_class
loc:@conv1d_1/kernel*&
 _has_manual_control_dependencies(*"
_output_shapes
:

�
save/Assign_4Assignglobal_stepsave/RestoreV2:4*
T0	*
_class
loc:@global_step*&
 _has_manual_control_dependencies(*
_output_shapes
: 
�
save/Assign_5Assign)residual_block_0/batch_normalization/betasave/RestoreV2:5*
T0*<
_class2
0.loc:@residual_block_0/batch_normalization/beta*&
 _has_manual_control_dependencies(*
_output_shapes
:

�
save/Assign_6Assign*residual_block_0/batch_normalization/gammasave/RestoreV2:6*
T0*=
_class3
1/loc:@residual_block_0/batch_normalization/gamma*&
 _has_manual_control_dependencies(*
_output_shapes
:

�
save/Assign_7Assign0residual_block_0/batch_normalization/moving_meansave/RestoreV2:7*
T0*C
_class9
75loc:@residual_block_0/batch_normalization/moving_mean*&
 _has_manual_control_dependencies(*
_output_shapes
:

�
save/Assign_8Assign4residual_block_0/batch_normalization/moving_variancesave/RestoreV2:8*
T0*G
_class=
;9loc:@residual_block_0/batch_normalization/moving_variance*&
 _has_manual_control_dependencies(*
_output_shapes
:

�
save/Assign_9Assign+residual_block_0/batch_normalization_1/betasave/RestoreV2:9*
T0*>
_class4
20loc:@residual_block_0/batch_normalization_1/beta*&
 _has_manual_control_dependencies(*
_output_shapes
:
�
save/Assign_10Assign,residual_block_0/batch_normalization_1/gammasave/RestoreV2:10*
T0*?
_class5
31loc:@residual_block_0/batch_normalization_1/gamma*&
 _has_manual_control_dependencies(*
_output_shapes
:
�
save/Assign_11Assign2residual_block_0/batch_normalization_1/moving_meansave/RestoreV2:11*
T0*E
_class;
97loc:@residual_block_0/batch_normalization_1/moving_mean*&
 _has_manual_control_dependencies(*
_output_shapes
:
�
save/Assign_12Assign6residual_block_0/batch_normalization_1/moving_variancesave/RestoreV2:12*
T0*I
_class?
=;loc:@residual_block_0/batch_normalization_1/moving_variance*&
 _has_manual_control_dependencies(*
_output_shapes
:
�
save/Assign_13Assignresidual_block_0/conv1d/biassave/RestoreV2:13*
T0*/
_class%
#!loc:@residual_block_0/conv1d/bias*&
 _has_manual_control_dependencies(*
_output_shapes
:
�
save/Assign_14Assignresidual_block_0/conv1d/kernelsave/RestoreV2:14*
T0*1
_class'
%#loc:@residual_block_0/conv1d/kernel*&
 _has_manual_control_dependencies(*"
_output_shapes
:	

�
save/Assign_15Assignresidual_block_0/conv1d_1/biassave/RestoreV2:15*
T0*1
_class'
%#loc:@residual_block_0/conv1d_1/bias*&
 _has_manual_control_dependencies(*
_output_shapes
:

�
save/Assign_16Assign residual_block_0/conv1d_1/kernelsave/RestoreV2:16*
T0*3
_class)
'%loc:@residual_block_0/conv1d_1/kernel*&
 _has_manual_control_dependencies(*"
_output_shapes
:

�
save/Assign_17Assign)residual_block_1/batch_normalization/betasave/RestoreV2:17*
T0*<
_class2
0.loc:@residual_block_1/batch_normalization/beta*&
 _has_manual_control_dependencies(*
_output_shapes
:

�
save/Assign_18Assign*residual_block_1/batch_normalization/gammasave/RestoreV2:18*
T0*=
_class3
1/loc:@residual_block_1/batch_normalization/gamma*&
 _has_manual_control_dependencies(*
_output_shapes
:

�
save/Assign_19Assign0residual_block_1/batch_normalization/moving_meansave/RestoreV2:19*
T0*C
_class9
75loc:@residual_block_1/batch_normalization/moving_mean*&
 _has_manual_control_dependencies(*
_output_shapes
:

�
save/Assign_20Assign4residual_block_1/batch_normalization/moving_variancesave/RestoreV2:20*
T0*G
_class=
;9loc:@residual_block_1/batch_normalization/moving_variance*&
 _has_manual_control_dependencies(*
_output_shapes
:

�
save/Assign_21Assign+residual_block_1/batch_normalization_1/betasave/RestoreV2:21*
T0*>
_class4
20loc:@residual_block_1/batch_normalization_1/beta*&
 _has_manual_control_dependencies(*
_output_shapes
:
�
save/Assign_22Assign,residual_block_1/batch_normalization_1/gammasave/RestoreV2:22*
T0*?
_class5
31loc:@residual_block_1/batch_normalization_1/gamma*&
 _has_manual_control_dependencies(*
_output_shapes
:
�
save/Assign_23Assign2residual_block_1/batch_normalization_1/moving_meansave/RestoreV2:23*
T0*E
_class;
97loc:@residual_block_1/batch_normalization_1/moving_mean*&
 _has_manual_control_dependencies(*
_output_shapes
:
�
save/Assign_24Assign6residual_block_1/batch_normalization_1/moving_variancesave/RestoreV2:24*
T0*I
_class?
=;loc:@residual_block_1/batch_normalization_1/moving_variance*&
 _has_manual_control_dependencies(*
_output_shapes
:
�
save/Assign_25Assignresidual_block_1/conv1d/biassave/RestoreV2:25*
T0*/
_class%
#!loc:@residual_block_1/conv1d/bias*&
 _has_manual_control_dependencies(*
_output_shapes
:
�
save/Assign_26Assignresidual_block_1/conv1d/kernelsave/RestoreV2:26*
T0*1
_class'
%#loc:@residual_block_1/conv1d/kernel*&
 _has_manual_control_dependencies(*"
_output_shapes
:	

�
save/Assign_27Assignresidual_block_1/conv1d_1/biassave/RestoreV2:27*
T0*1
_class'
%#loc:@residual_block_1/conv1d_1/bias*&
 _has_manual_control_dependencies(*
_output_shapes
:

�
save/Assign_28Assign residual_block_1/conv1d_1/kernelsave/RestoreV2:28*
T0*3
_class)
'%loc:@residual_block_1/conv1d_1/kernel*&
 _has_manual_control_dependencies(*"
_output_shapes
:

�
save/Assign_29Assign)residual_block_2/batch_normalization/betasave/RestoreV2:29*
T0*<
_class2
0.loc:@residual_block_2/batch_normalization/beta*&
 _has_manual_control_dependencies(*
_output_shapes
:

�
save/Assign_30Assign*residual_block_2/batch_normalization/gammasave/RestoreV2:30*
T0*=
_class3
1/loc:@residual_block_2/batch_normalization/gamma*&
 _has_manual_control_dependencies(*
_output_shapes
:

�
save/Assign_31Assign0residual_block_2/batch_normalization/moving_meansave/RestoreV2:31*
T0*C
_class9
75loc:@residual_block_2/batch_normalization/moving_mean*&
 _has_manual_control_dependencies(*
_output_shapes
:

�
save/Assign_32Assign4residual_block_2/batch_normalization/moving_variancesave/RestoreV2:32*
T0*G
_class=
;9loc:@residual_block_2/batch_normalization/moving_variance*&
 _has_manual_control_dependencies(*
_output_shapes
:

�
save/Assign_33Assign+residual_block_2/batch_normalization_1/betasave/RestoreV2:33*
T0*>
_class4
20loc:@residual_block_2/batch_normalization_1/beta*&
 _has_manual_control_dependencies(*
_output_shapes
:
�
save/Assign_34Assign,residual_block_2/batch_normalization_1/gammasave/RestoreV2:34*
T0*?
_class5
31loc:@residual_block_2/batch_normalization_1/gamma*&
 _has_manual_control_dependencies(*
_output_shapes
:
�
save/Assign_35Assign2residual_block_2/batch_normalization_1/moving_meansave/RestoreV2:35*
T0*E
_class;
97loc:@residual_block_2/batch_normalization_1/moving_mean*&
 _has_manual_control_dependencies(*
_output_shapes
:
�
save/Assign_36Assign6residual_block_2/batch_normalization_1/moving_variancesave/RestoreV2:36*
T0*I
_class?
=;loc:@residual_block_2/batch_normalization_1/moving_variance*&
 _has_manual_control_dependencies(*
_output_shapes
:
�
save/Assign_37Assignresidual_block_2/conv1d/biassave/RestoreV2:37*
T0*/
_class%
#!loc:@residual_block_2/conv1d/bias*&
 _has_manual_control_dependencies(*
_output_shapes
:
�
save/Assign_38Assignresidual_block_2/conv1d/kernelsave/RestoreV2:38*
T0*1
_class'
%#loc:@residual_block_2/conv1d/kernel*&
 _has_manual_control_dependencies(*"
_output_shapes
:	

�
save/Assign_39Assignresidual_block_2/conv1d_1/biassave/RestoreV2:39*
T0*1
_class'
%#loc:@residual_block_2/conv1d_1/bias*&
 _has_manual_control_dependencies(*
_output_shapes
:

�
save/Assign_40Assign residual_block_2/conv1d_1/kernelsave/RestoreV2:40*
T0*3
_class)
'%loc:@residual_block_2/conv1d_1/kernel*&
 _has_manual_control_dependencies(*"
_output_shapes
:

�
save/Assign_41Assign)residual_block_3/batch_normalization/betasave/RestoreV2:41*
T0*<
_class2
0.loc:@residual_block_3/batch_normalization/beta*&
 _has_manual_control_dependencies(*
_output_shapes
:

�
save/Assign_42Assign*residual_block_3/batch_normalization/gammasave/RestoreV2:42*
T0*=
_class3
1/loc:@residual_block_3/batch_normalization/gamma*&
 _has_manual_control_dependencies(*
_output_shapes
:

�
save/Assign_43Assign0residual_block_3/batch_normalization/moving_meansave/RestoreV2:43*
T0*C
_class9
75loc:@residual_block_3/batch_normalization/moving_mean*&
 _has_manual_control_dependencies(*
_output_shapes
:

�
save/Assign_44Assign4residual_block_3/batch_normalization/moving_variancesave/RestoreV2:44*
T0*G
_class=
;9loc:@residual_block_3/batch_normalization/moving_variance*&
 _has_manual_control_dependencies(*
_output_shapes
:

�
save/Assign_45Assign+residual_block_3/batch_normalization_1/betasave/RestoreV2:45*
T0*>
_class4
20loc:@residual_block_3/batch_normalization_1/beta*&
 _has_manual_control_dependencies(*
_output_shapes
:
�
save/Assign_46Assign,residual_block_3/batch_normalization_1/gammasave/RestoreV2:46*
T0*?
_class5
31loc:@residual_block_3/batch_normalization_1/gamma*&
 _has_manual_control_dependencies(*
_output_shapes
:
�
save/Assign_47Assign2residual_block_3/batch_normalization_1/moving_meansave/RestoreV2:47*
T0*E
_class;
97loc:@residual_block_3/batch_normalization_1/moving_mean*&
 _has_manual_control_dependencies(*
_output_shapes
:
�
save/Assign_48Assign6residual_block_3/batch_normalization_1/moving_variancesave/RestoreV2:48*
T0*I
_class?
=;loc:@residual_block_3/batch_normalization_1/moving_variance*&
 _has_manual_control_dependencies(*
_output_shapes
:
�
save/Assign_49Assignresidual_block_3/conv1d/biassave/RestoreV2:49*
T0*/
_class%
#!loc:@residual_block_3/conv1d/bias*&
 _has_manual_control_dependencies(*
_output_shapes
:
�
save/Assign_50Assignresidual_block_3/conv1d/kernelsave/RestoreV2:50*
T0*1
_class'
%#loc:@residual_block_3/conv1d/kernel*&
 _has_manual_control_dependencies(*"
_output_shapes
:	

�
save/Assign_51Assignresidual_block_3/conv1d_1/biassave/RestoreV2:51*
T0*1
_class'
%#loc:@residual_block_3/conv1d_1/bias*&
 _has_manual_control_dependencies(*
_output_shapes
:

�
save/Assign_52Assign residual_block_3/conv1d_1/kernelsave/RestoreV2:52*
T0*3
_class)
'%loc:@residual_block_3/conv1d_1/kernel*&
 _has_manual_control_dependencies(*"
_output_shapes
:

�
save/Assign_53Assign)residual_block_4/batch_normalization/betasave/RestoreV2:53*
T0*<
_class2
0.loc:@residual_block_4/batch_normalization/beta*&
 _has_manual_control_dependencies(*
_output_shapes
:

�
save/Assign_54Assign*residual_block_4/batch_normalization/gammasave/RestoreV2:54*
T0*=
_class3
1/loc:@residual_block_4/batch_normalization/gamma*&
 _has_manual_control_dependencies(*
_output_shapes
:

�
save/Assign_55Assign0residual_block_4/batch_normalization/moving_meansave/RestoreV2:55*
T0*C
_class9
75loc:@residual_block_4/batch_normalization/moving_mean*&
 _has_manual_control_dependencies(*
_output_shapes
:

�
save/Assign_56Assign4residual_block_4/batch_normalization/moving_variancesave/RestoreV2:56*
T0*G
_class=
;9loc:@residual_block_4/batch_normalization/moving_variance*&
 _has_manual_control_dependencies(*
_output_shapes
:

�
save/Assign_57Assign+residual_block_4/batch_normalization_1/betasave/RestoreV2:57*
T0*>
_class4
20loc:@residual_block_4/batch_normalization_1/beta*&
 _has_manual_control_dependencies(*
_output_shapes
:
�
save/Assign_58Assign,residual_block_4/batch_normalization_1/gammasave/RestoreV2:58*
T0*?
_class5
31loc:@residual_block_4/batch_normalization_1/gamma*&
 _has_manual_control_dependencies(*
_output_shapes
:
�
save/Assign_59Assign2residual_block_4/batch_normalization_1/moving_meansave/RestoreV2:59*
T0*E
_class;
97loc:@residual_block_4/batch_normalization_1/moving_mean*&
 _has_manual_control_dependencies(*
_output_shapes
:
�
save/Assign_60Assign6residual_block_4/batch_normalization_1/moving_variancesave/RestoreV2:60*
T0*I
_class?
=;loc:@residual_block_4/batch_normalization_1/moving_variance*&
 _has_manual_control_dependencies(*
_output_shapes
:
�
save/Assign_61Assignresidual_block_4/conv1d/biassave/RestoreV2:61*
T0*/
_class%
#!loc:@residual_block_4/conv1d/bias*&
 _has_manual_control_dependencies(*
_output_shapes
:
�
save/Assign_62Assignresidual_block_4/conv1d/kernelsave/RestoreV2:62*
T0*1
_class'
%#loc:@residual_block_4/conv1d/kernel*&
 _has_manual_control_dependencies(*"
_output_shapes
:	

�
save/Assign_63Assignresidual_block_4/conv1d_1/biassave/RestoreV2:63*
T0*1
_class'
%#loc:@residual_block_4/conv1d_1/bias*&
 _has_manual_control_dependencies(*
_output_shapes
:

�
save/Assign_64Assign residual_block_4/conv1d_1/kernelsave/RestoreV2:64*
T0*3
_class)
'%loc:@residual_block_4/conv1d_1/kernel*&
 _has_manual_control_dependencies(*"
_output_shapes
:

�	
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_6^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_7^save/Assign_8^save/Assign_9*&
 _has_manual_control_dependencies(
-
save/restore_allNoOp^save/restore_shard"�<
save/Const:0save/Identity:0save/restore_all (5 @F8"m
global_step^\
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H"%
saved_model_main_op


group_deps"�@
trainable_variables�@�@
k
conv1d/kernel:0conv1d/kernel/Assignconv1d/kernel/read:02*conv1d/kernel/Initializer/random_uniform:08
Z
conv1d/bias:0conv1d/bias/Assignconv1d/bias/read:02conv1d/bias/Initializer/zeros:08
�
,residual_block_0/batch_normalization/gamma:01residual_block_0/batch_normalization/gamma/Assign1residual_block_0/batch_normalization/gamma/read:02=residual_block_0/batch_normalization/gamma/Initializer/ones:08
�
+residual_block_0/batch_normalization/beta:00residual_block_0/batch_normalization/beta/Assign0residual_block_0/batch_normalization/beta/read:02=residual_block_0/batch_normalization/beta/Initializer/zeros:08
�
 residual_block_0/conv1d/kernel:0%residual_block_0/conv1d/kernel/Assign%residual_block_0/conv1d/kernel/read:02;residual_block_0/conv1d/kernel/Initializer/random_uniform:08
�
residual_block_0/conv1d/bias:0#residual_block_0/conv1d/bias/Assign#residual_block_0/conv1d/bias/read:020residual_block_0/conv1d/bias/Initializer/zeros:08
�
.residual_block_0/batch_normalization_1/gamma:03residual_block_0/batch_normalization_1/gamma/Assign3residual_block_0/batch_normalization_1/gamma/read:02?residual_block_0/batch_normalization_1/gamma/Initializer/ones:08
�
-residual_block_0/batch_normalization_1/beta:02residual_block_0/batch_normalization_1/beta/Assign2residual_block_0/batch_normalization_1/beta/read:02?residual_block_0/batch_normalization_1/beta/Initializer/zeros:08
�
"residual_block_0/conv1d_1/kernel:0'residual_block_0/conv1d_1/kernel/Assign'residual_block_0/conv1d_1/kernel/read:02=residual_block_0/conv1d_1/kernel/Initializer/random_uniform:08
�
 residual_block_0/conv1d_1/bias:0%residual_block_0/conv1d_1/bias/Assign%residual_block_0/conv1d_1/bias/read:022residual_block_0/conv1d_1/bias/Initializer/zeros:08
�
,residual_block_1/batch_normalization/gamma:01residual_block_1/batch_normalization/gamma/Assign1residual_block_1/batch_normalization/gamma/read:02=residual_block_1/batch_normalization/gamma/Initializer/ones:08
�
+residual_block_1/batch_normalization/beta:00residual_block_1/batch_normalization/beta/Assign0residual_block_1/batch_normalization/beta/read:02=residual_block_1/batch_normalization/beta/Initializer/zeros:08
�
 residual_block_1/conv1d/kernel:0%residual_block_1/conv1d/kernel/Assign%residual_block_1/conv1d/kernel/read:02;residual_block_1/conv1d/kernel/Initializer/random_uniform:08
�
residual_block_1/conv1d/bias:0#residual_block_1/conv1d/bias/Assign#residual_block_1/conv1d/bias/read:020residual_block_1/conv1d/bias/Initializer/zeros:08
�
.residual_block_1/batch_normalization_1/gamma:03residual_block_1/batch_normalization_1/gamma/Assign3residual_block_1/batch_normalization_1/gamma/read:02?residual_block_1/batch_normalization_1/gamma/Initializer/ones:08
�
-residual_block_1/batch_normalization_1/beta:02residual_block_1/batch_normalization_1/beta/Assign2residual_block_1/batch_normalization_1/beta/read:02?residual_block_1/batch_normalization_1/beta/Initializer/zeros:08
�
"residual_block_1/conv1d_1/kernel:0'residual_block_1/conv1d_1/kernel/Assign'residual_block_1/conv1d_1/kernel/read:02=residual_block_1/conv1d_1/kernel/Initializer/random_uniform:08
�
 residual_block_1/conv1d_1/bias:0%residual_block_1/conv1d_1/bias/Assign%residual_block_1/conv1d_1/bias/read:022residual_block_1/conv1d_1/bias/Initializer/zeros:08
�
,residual_block_2/batch_normalization/gamma:01residual_block_2/batch_normalization/gamma/Assign1residual_block_2/batch_normalization/gamma/read:02=residual_block_2/batch_normalization/gamma/Initializer/ones:08
�
+residual_block_2/batch_normalization/beta:00residual_block_2/batch_normalization/beta/Assign0residual_block_2/batch_normalization/beta/read:02=residual_block_2/batch_normalization/beta/Initializer/zeros:08
�
 residual_block_2/conv1d/kernel:0%residual_block_2/conv1d/kernel/Assign%residual_block_2/conv1d/kernel/read:02;residual_block_2/conv1d/kernel/Initializer/random_uniform:08
�
residual_block_2/conv1d/bias:0#residual_block_2/conv1d/bias/Assign#residual_block_2/conv1d/bias/read:020residual_block_2/conv1d/bias/Initializer/zeros:08
�
.residual_block_2/batch_normalization_1/gamma:03residual_block_2/batch_normalization_1/gamma/Assign3residual_block_2/batch_normalization_1/gamma/read:02?residual_block_2/batch_normalization_1/gamma/Initializer/ones:08
�
-residual_block_2/batch_normalization_1/beta:02residual_block_2/batch_normalization_1/beta/Assign2residual_block_2/batch_normalization_1/beta/read:02?residual_block_2/batch_normalization_1/beta/Initializer/zeros:08
�
"residual_block_2/conv1d_1/kernel:0'residual_block_2/conv1d_1/kernel/Assign'residual_block_2/conv1d_1/kernel/read:02=residual_block_2/conv1d_1/kernel/Initializer/random_uniform:08
�
 residual_block_2/conv1d_1/bias:0%residual_block_2/conv1d_1/bias/Assign%residual_block_2/conv1d_1/bias/read:022residual_block_2/conv1d_1/bias/Initializer/zeros:08
�
,residual_block_3/batch_normalization/gamma:01residual_block_3/batch_normalization/gamma/Assign1residual_block_3/batch_normalization/gamma/read:02=residual_block_3/batch_normalization/gamma/Initializer/ones:08
�
+residual_block_3/batch_normalization/beta:00residual_block_3/batch_normalization/beta/Assign0residual_block_3/batch_normalization/beta/read:02=residual_block_3/batch_normalization/beta/Initializer/zeros:08
�
 residual_block_3/conv1d/kernel:0%residual_block_3/conv1d/kernel/Assign%residual_block_3/conv1d/kernel/read:02;residual_block_3/conv1d/kernel/Initializer/random_uniform:08
�
residual_block_3/conv1d/bias:0#residual_block_3/conv1d/bias/Assign#residual_block_3/conv1d/bias/read:020residual_block_3/conv1d/bias/Initializer/zeros:08
�
.residual_block_3/batch_normalization_1/gamma:03residual_block_3/batch_normalization_1/gamma/Assign3residual_block_3/batch_normalization_1/gamma/read:02?residual_block_3/batch_normalization_1/gamma/Initializer/ones:08
�
-residual_block_3/batch_normalization_1/beta:02residual_block_3/batch_normalization_1/beta/Assign2residual_block_3/batch_normalization_1/beta/read:02?residual_block_3/batch_normalization_1/beta/Initializer/zeros:08
�
"residual_block_3/conv1d_1/kernel:0'residual_block_3/conv1d_1/kernel/Assign'residual_block_3/conv1d_1/kernel/read:02=residual_block_3/conv1d_1/kernel/Initializer/random_uniform:08
�
 residual_block_3/conv1d_1/bias:0%residual_block_3/conv1d_1/bias/Assign%residual_block_3/conv1d_1/bias/read:022residual_block_3/conv1d_1/bias/Initializer/zeros:08
�
,residual_block_4/batch_normalization/gamma:01residual_block_4/batch_normalization/gamma/Assign1residual_block_4/batch_normalization/gamma/read:02=residual_block_4/batch_normalization/gamma/Initializer/ones:08
�
+residual_block_4/batch_normalization/beta:00residual_block_4/batch_normalization/beta/Assign0residual_block_4/batch_normalization/beta/read:02=residual_block_4/batch_normalization/beta/Initializer/zeros:08
�
 residual_block_4/conv1d/kernel:0%residual_block_4/conv1d/kernel/Assign%residual_block_4/conv1d/kernel/read:02;residual_block_4/conv1d/kernel/Initializer/random_uniform:08
�
residual_block_4/conv1d/bias:0#residual_block_4/conv1d/bias/Assign#residual_block_4/conv1d/bias/read:020residual_block_4/conv1d/bias/Initializer/zeros:08
�
.residual_block_4/batch_normalization_1/gamma:03residual_block_4/batch_normalization_1/gamma/Assign3residual_block_4/batch_normalization_1/gamma/read:02?residual_block_4/batch_normalization_1/gamma/Initializer/ones:08
�
-residual_block_4/batch_normalization_1/beta:02residual_block_4/batch_normalization_1/beta/Assign2residual_block_4/batch_normalization_1/beta/read:02?residual_block_4/batch_normalization_1/beta/Initializer/zeros:08
�
"residual_block_4/conv1d_1/kernel:0'residual_block_4/conv1d_1/kernel/Assign'residual_block_4/conv1d_1/kernel/read:02=residual_block_4/conv1d_1/kernel/Initializer/random_uniform:08
�
 residual_block_4/conv1d_1/bias:0%residual_block_4/conv1d_1/bias/Assign%residual_block_4/conv1d_1/bias/read:022residual_block_4/conv1d_1/bias/Initializer/zeros:08
s
conv1d_1/kernel:0conv1d_1/kernel/Assignconv1d_1/kernel/read:02,conv1d_1/kernel/Initializer/random_uniform:08
b
conv1d_1/bias:0conv1d_1/bias/Assignconv1d_1/bias/read:02!conv1d_1/bias/Initializer/zeros:08"�i
	variables�i�i
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H
k
conv1d/kernel:0conv1d/kernel/Assignconv1d/kernel/read:02*conv1d/kernel/Initializer/random_uniform:08
Z
conv1d/bias:0conv1d/bias/Assignconv1d/bias/read:02conv1d/bias/Initializer/zeros:08
�
,residual_block_0/batch_normalization/gamma:01residual_block_0/batch_normalization/gamma/Assign1residual_block_0/batch_normalization/gamma/read:02=residual_block_0/batch_normalization/gamma/Initializer/ones:08
�
+residual_block_0/batch_normalization/beta:00residual_block_0/batch_normalization/beta/Assign0residual_block_0/batch_normalization/beta/read:02=residual_block_0/batch_normalization/beta/Initializer/zeros:08
�
2residual_block_0/batch_normalization/moving_mean:07residual_block_0/batch_normalization/moving_mean/Assign7residual_block_0/batch_normalization/moving_mean/read:02Dresidual_block_0/batch_normalization/moving_mean/Initializer/zeros:0@H
�
6residual_block_0/batch_normalization/moving_variance:0;residual_block_0/batch_normalization/moving_variance/Assign;residual_block_0/batch_normalization/moving_variance/read:02Gresidual_block_0/batch_normalization/moving_variance/Initializer/ones:0@H
�
 residual_block_0/conv1d/kernel:0%residual_block_0/conv1d/kernel/Assign%residual_block_0/conv1d/kernel/read:02;residual_block_0/conv1d/kernel/Initializer/random_uniform:08
�
residual_block_0/conv1d/bias:0#residual_block_0/conv1d/bias/Assign#residual_block_0/conv1d/bias/read:020residual_block_0/conv1d/bias/Initializer/zeros:08
�
.residual_block_0/batch_normalization_1/gamma:03residual_block_0/batch_normalization_1/gamma/Assign3residual_block_0/batch_normalization_1/gamma/read:02?residual_block_0/batch_normalization_1/gamma/Initializer/ones:08
�
-residual_block_0/batch_normalization_1/beta:02residual_block_0/batch_normalization_1/beta/Assign2residual_block_0/batch_normalization_1/beta/read:02?residual_block_0/batch_normalization_1/beta/Initializer/zeros:08
�
4residual_block_0/batch_normalization_1/moving_mean:09residual_block_0/batch_normalization_1/moving_mean/Assign9residual_block_0/batch_normalization_1/moving_mean/read:02Fresidual_block_0/batch_normalization_1/moving_mean/Initializer/zeros:0@H
�
8residual_block_0/batch_normalization_1/moving_variance:0=residual_block_0/batch_normalization_1/moving_variance/Assign=residual_block_0/batch_normalization_1/moving_variance/read:02Iresidual_block_0/batch_normalization_1/moving_variance/Initializer/ones:0@H
�
"residual_block_0/conv1d_1/kernel:0'residual_block_0/conv1d_1/kernel/Assign'residual_block_0/conv1d_1/kernel/read:02=residual_block_0/conv1d_1/kernel/Initializer/random_uniform:08
�
 residual_block_0/conv1d_1/bias:0%residual_block_0/conv1d_1/bias/Assign%residual_block_0/conv1d_1/bias/read:022residual_block_0/conv1d_1/bias/Initializer/zeros:08
�
,residual_block_1/batch_normalization/gamma:01residual_block_1/batch_normalization/gamma/Assign1residual_block_1/batch_normalization/gamma/read:02=residual_block_1/batch_normalization/gamma/Initializer/ones:08
�
+residual_block_1/batch_normalization/beta:00residual_block_1/batch_normalization/beta/Assign0residual_block_1/batch_normalization/beta/read:02=residual_block_1/batch_normalization/beta/Initializer/zeros:08
�
2residual_block_1/batch_normalization/moving_mean:07residual_block_1/batch_normalization/moving_mean/Assign7residual_block_1/batch_normalization/moving_mean/read:02Dresidual_block_1/batch_normalization/moving_mean/Initializer/zeros:0@H
�
6residual_block_1/batch_normalization/moving_variance:0;residual_block_1/batch_normalization/moving_variance/Assign;residual_block_1/batch_normalization/moving_variance/read:02Gresidual_block_1/batch_normalization/moving_variance/Initializer/ones:0@H
�
 residual_block_1/conv1d/kernel:0%residual_block_1/conv1d/kernel/Assign%residual_block_1/conv1d/kernel/read:02;residual_block_1/conv1d/kernel/Initializer/random_uniform:08
�
residual_block_1/conv1d/bias:0#residual_block_1/conv1d/bias/Assign#residual_block_1/conv1d/bias/read:020residual_block_1/conv1d/bias/Initializer/zeros:08
�
.residual_block_1/batch_normalization_1/gamma:03residual_block_1/batch_normalization_1/gamma/Assign3residual_block_1/batch_normalization_1/gamma/read:02?residual_block_1/batch_normalization_1/gamma/Initializer/ones:08
�
-residual_block_1/batch_normalization_1/beta:02residual_block_1/batch_normalization_1/beta/Assign2residual_block_1/batch_normalization_1/beta/read:02?residual_block_1/batch_normalization_1/beta/Initializer/zeros:08
�
4residual_block_1/batch_normalization_1/moving_mean:09residual_block_1/batch_normalization_1/moving_mean/Assign9residual_block_1/batch_normalization_1/moving_mean/read:02Fresidual_block_1/batch_normalization_1/moving_mean/Initializer/zeros:0@H
�
8residual_block_1/batch_normalization_1/moving_variance:0=residual_block_1/batch_normalization_1/moving_variance/Assign=residual_block_1/batch_normalization_1/moving_variance/read:02Iresidual_block_1/batch_normalization_1/moving_variance/Initializer/ones:0@H
�
"residual_block_1/conv1d_1/kernel:0'residual_block_1/conv1d_1/kernel/Assign'residual_block_1/conv1d_1/kernel/read:02=residual_block_1/conv1d_1/kernel/Initializer/random_uniform:08
�
 residual_block_1/conv1d_1/bias:0%residual_block_1/conv1d_1/bias/Assign%residual_block_1/conv1d_1/bias/read:022residual_block_1/conv1d_1/bias/Initializer/zeros:08
�
,residual_block_2/batch_normalization/gamma:01residual_block_2/batch_normalization/gamma/Assign1residual_block_2/batch_normalization/gamma/read:02=residual_block_2/batch_normalization/gamma/Initializer/ones:08
�
+residual_block_2/batch_normalization/beta:00residual_block_2/batch_normalization/beta/Assign0residual_block_2/batch_normalization/beta/read:02=residual_block_2/batch_normalization/beta/Initializer/zeros:08
�
2residual_block_2/batch_normalization/moving_mean:07residual_block_2/batch_normalization/moving_mean/Assign7residual_block_2/batch_normalization/moving_mean/read:02Dresidual_block_2/batch_normalization/moving_mean/Initializer/zeros:0@H
�
6residual_block_2/batch_normalization/moving_variance:0;residual_block_2/batch_normalization/moving_variance/Assign;residual_block_2/batch_normalization/moving_variance/read:02Gresidual_block_2/batch_normalization/moving_variance/Initializer/ones:0@H
�
 residual_block_2/conv1d/kernel:0%residual_block_2/conv1d/kernel/Assign%residual_block_2/conv1d/kernel/read:02;residual_block_2/conv1d/kernel/Initializer/random_uniform:08
�
residual_block_2/conv1d/bias:0#residual_block_2/conv1d/bias/Assign#residual_block_2/conv1d/bias/read:020residual_block_2/conv1d/bias/Initializer/zeros:08
�
.residual_block_2/batch_normalization_1/gamma:03residual_block_2/batch_normalization_1/gamma/Assign3residual_block_2/batch_normalization_1/gamma/read:02?residual_block_2/batch_normalization_1/gamma/Initializer/ones:08
�
-residual_block_2/batch_normalization_1/beta:02residual_block_2/batch_normalization_1/beta/Assign2residual_block_2/batch_normalization_1/beta/read:02?residual_block_2/batch_normalization_1/beta/Initializer/zeros:08
�
4residual_block_2/batch_normalization_1/moving_mean:09residual_block_2/batch_normalization_1/moving_mean/Assign9residual_block_2/batch_normalization_1/moving_mean/read:02Fresidual_block_2/batch_normalization_1/moving_mean/Initializer/zeros:0@H
�
8residual_block_2/batch_normalization_1/moving_variance:0=residual_block_2/batch_normalization_1/moving_variance/Assign=residual_block_2/batch_normalization_1/moving_variance/read:02Iresidual_block_2/batch_normalization_1/moving_variance/Initializer/ones:0@H
�
"residual_block_2/conv1d_1/kernel:0'residual_block_2/conv1d_1/kernel/Assign'residual_block_2/conv1d_1/kernel/read:02=residual_block_2/conv1d_1/kernel/Initializer/random_uniform:08
�
 residual_block_2/conv1d_1/bias:0%residual_block_2/conv1d_1/bias/Assign%residual_block_2/conv1d_1/bias/read:022residual_block_2/conv1d_1/bias/Initializer/zeros:08
�
,residual_block_3/batch_normalization/gamma:01residual_block_3/batch_normalization/gamma/Assign1residual_block_3/batch_normalization/gamma/read:02=residual_block_3/batch_normalization/gamma/Initializer/ones:08
�
+residual_block_3/batch_normalization/beta:00residual_block_3/batch_normalization/beta/Assign0residual_block_3/batch_normalization/beta/read:02=residual_block_3/batch_normalization/beta/Initializer/zeros:08
�
2residual_block_3/batch_normalization/moving_mean:07residual_block_3/batch_normalization/moving_mean/Assign7residual_block_3/batch_normalization/moving_mean/read:02Dresidual_block_3/batch_normalization/moving_mean/Initializer/zeros:0@H
�
6residual_block_3/batch_normalization/moving_variance:0;residual_block_3/batch_normalization/moving_variance/Assign;residual_block_3/batch_normalization/moving_variance/read:02Gresidual_block_3/batch_normalization/moving_variance/Initializer/ones:0@H
�
 residual_block_3/conv1d/kernel:0%residual_block_3/conv1d/kernel/Assign%residual_block_3/conv1d/kernel/read:02;residual_block_3/conv1d/kernel/Initializer/random_uniform:08
�
residual_block_3/conv1d/bias:0#residual_block_3/conv1d/bias/Assign#residual_block_3/conv1d/bias/read:020residual_block_3/conv1d/bias/Initializer/zeros:08
�
.residual_block_3/batch_normalization_1/gamma:03residual_block_3/batch_normalization_1/gamma/Assign3residual_block_3/batch_normalization_1/gamma/read:02?residual_block_3/batch_normalization_1/gamma/Initializer/ones:08
�
-residual_block_3/batch_normalization_1/beta:02residual_block_3/batch_normalization_1/beta/Assign2residual_block_3/batch_normalization_1/beta/read:02?residual_block_3/batch_normalization_1/beta/Initializer/zeros:08
�
4residual_block_3/batch_normalization_1/moving_mean:09residual_block_3/batch_normalization_1/moving_mean/Assign9residual_block_3/batch_normalization_1/moving_mean/read:02Fresidual_block_3/batch_normalization_1/moving_mean/Initializer/zeros:0@H
�
8residual_block_3/batch_normalization_1/moving_variance:0=residual_block_3/batch_normalization_1/moving_variance/Assign=residual_block_3/batch_normalization_1/moving_variance/read:02Iresidual_block_3/batch_normalization_1/moving_variance/Initializer/ones:0@H
�
"residual_block_3/conv1d_1/kernel:0'residual_block_3/conv1d_1/kernel/Assign'residual_block_3/conv1d_1/kernel/read:02=residual_block_3/conv1d_1/kernel/Initializer/random_uniform:08
�
 residual_block_3/conv1d_1/bias:0%residual_block_3/conv1d_1/bias/Assign%residual_block_3/conv1d_1/bias/read:022residual_block_3/conv1d_1/bias/Initializer/zeros:08
�
,residual_block_4/batch_normalization/gamma:01residual_block_4/batch_normalization/gamma/Assign1residual_block_4/batch_normalization/gamma/read:02=residual_block_4/batch_normalization/gamma/Initializer/ones:08
�
+residual_block_4/batch_normalization/beta:00residual_block_4/batch_normalization/beta/Assign0residual_block_4/batch_normalization/beta/read:02=residual_block_4/batch_normalization/beta/Initializer/zeros:08
�
2residual_block_4/batch_normalization/moving_mean:07residual_block_4/batch_normalization/moving_mean/Assign7residual_block_4/batch_normalization/moving_mean/read:02Dresidual_block_4/batch_normalization/moving_mean/Initializer/zeros:0@H
�
6residual_block_4/batch_normalization/moving_variance:0;residual_block_4/batch_normalization/moving_variance/Assign;residual_block_4/batch_normalization/moving_variance/read:02Gresidual_block_4/batch_normalization/moving_variance/Initializer/ones:0@H
�
 residual_block_4/conv1d/kernel:0%residual_block_4/conv1d/kernel/Assign%residual_block_4/conv1d/kernel/read:02;residual_block_4/conv1d/kernel/Initializer/random_uniform:08
�
residual_block_4/conv1d/bias:0#residual_block_4/conv1d/bias/Assign#residual_block_4/conv1d/bias/read:020residual_block_4/conv1d/bias/Initializer/zeros:08
�
.residual_block_4/batch_normalization_1/gamma:03residual_block_4/batch_normalization_1/gamma/Assign3residual_block_4/batch_normalization_1/gamma/read:02?residual_block_4/batch_normalization_1/gamma/Initializer/ones:08
�
-residual_block_4/batch_normalization_1/beta:02residual_block_4/batch_normalization_1/beta/Assign2residual_block_4/batch_normalization_1/beta/read:02?residual_block_4/batch_normalization_1/beta/Initializer/zeros:08
�
4residual_block_4/batch_normalization_1/moving_mean:09residual_block_4/batch_normalization_1/moving_mean/Assign9residual_block_4/batch_normalization_1/moving_mean/read:02Fresidual_block_4/batch_normalization_1/moving_mean/Initializer/zeros:0@H
�
8residual_block_4/batch_normalization_1/moving_variance:0=residual_block_4/batch_normalization_1/moving_variance/Assign=residual_block_4/batch_normalization_1/moving_variance/read:02Iresidual_block_4/batch_normalization_1/moving_variance/Initializer/ones:0@H
�
"residual_block_4/conv1d_1/kernel:0'residual_block_4/conv1d_1/kernel/Assign'residual_block_4/conv1d_1/kernel/read:02=residual_block_4/conv1d_1/kernel/Initializer/random_uniform:08
�
 residual_block_4/conv1d_1/bias:0%residual_block_4/conv1d_1/bias/Assign%residual_block_4/conv1d_1/bias/read:022residual_block_4/conv1d_1/bias/Initializer/zeros:08
s
conv1d_1/kernel:0conv1d_1/kernel/Assignconv1d_1/kernel/read:02,conv1d_1/kernel/Initializer/random_uniform:08
b
conv1d_1/bias:0conv1d_1/bias/Assignconv1d_1/bias/read:02!conv1d_1/bias/Initializer/zeros:08*�
label�
W
sequenceK
'batched_one_hot_sequences_placeholder:0������������������
C
sequence_length0
sequence_length_placeholder:0���������;
output1
confidences:0������������������tensorflow/serving/predict*�
logits�
W
sequenceK
'batched_one_hot_sequences_placeholder:0������������������
C
sequence_length0
sequence_length_placeholder:0���������P
outputF
"set_padding_to_sentinel_2/Select:0������������������tensorflow/serving/predict*�
representation�
W
sequenceK
'batched_one_hot_sequences_placeholder:0������������������
C
sequence_length0
sequence_length_placeholder:0���������>
output4
representation:0������������������
tensorflow/serving/predict*�
serving_default�
W
sequenceK
'batched_one_hot_sequences_placeholder:0������������������
C
sequence_length0
sequence_length_placeholder:0����������
output�*�
L4�1
!�������������������
�
`
�	RaggedTensorSpec ?
(RaggedFromTensor/boolean_mask/GatherV2:0���������,
RaggedFromTensor/concat:0	���������tensorflow/serving/predict