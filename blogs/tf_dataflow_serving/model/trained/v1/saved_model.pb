їШ
∆/°/
9
Add
x"T
y"T
z"T"
Ttype:
2	
T
AddN
inputs"T*N
sum"T"
Nint(0"
Ttype:
2	АР
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeintИ
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
S
	Bucketize

input"T

output"
Ttype:
2	"

boundarieslist(float)
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
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
A
Equal
x"T
y"T
z
"
Ttype:
2	
Р
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
М
Gather
params"Tparams
indices"Tindices
output"Tparams"
validate_indicesbool("
Tparamstype"
Tindicestype:
2	
?
GreaterEqual
x"T
y"T
z
"
Ttype:
2		
°
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetypeИ
S
HistogramSummary
tag
values"T
summary"
Ttype0:
2		
.
Identity

input"T
output"T"	
Ttype
b
InitializeTableV2
table_handle
keys"Tkey
values"Tval"
Tkeytype"
TvaltypeИ
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
TouttypeИ
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
К
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
<
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
D
NotEqual
x"T
y"T
z
"
Ttype:
2	
Р
М
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint€€€€€€€€€"	
Ttype"
TItype0	:
2	
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
К
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
)
Rank

input"T

output"	
Ttype
A
Relu
features"T
activations"T"
Ttype:
2		
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
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
р
SparseCross
indices	*N
values2sparse_types
shapes	*N
dense_inputs2dense_types
output_indices	
output_values"out_type
output_shape	"

Nint("
hashed_outputbool"
num_bucketsint("
hash_keyint"$
sparse_types
list(type)(:
2	"#
dense_types
list(type)(:
2	"
out_typetype:
2	"
internal_typetype:
2	
Ј
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	
z
SparseSegmentMean	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2"
Tidxtype0:
2	
А
SparseSegmentSum	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2		"
Tidxtype0:
2	
Љ
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
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
9
Sub
x"T
y"T
z"T"
Ttype:
2	
Й
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И

Where	
input
	
index	
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.4.12v1.4.0-19-ga52c8d9Нц

global_step/Initializer/zerosConst*
dtype0	*
_output_shapes
: *
_class
loc:@global_step*
value	B	 R 
П
global_step
VariableV2*
	container *
dtype0	*
_class
loc:@global_step*
_output_shapes
: *
shape: *
shared_name 
≤
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
_output_shapes
: *
T0	
f
PlaceholderPlaceholder*
dtype0*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€
h
Placeholder_1Placeholder*
dtype0*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€
h
Placeholder_2Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
h
Placeholder_3Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
h
Placeholder_4Placeholder*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€*
dtype0
h
Placeholder_5Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
h
Placeholder_6Placeholder*
dtype0*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€
h
Placeholder_7Placeholder*
dtype0*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€
Y
ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
u

ExpandDims
ExpandDimsPlaceholder_4ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:€€€€€€€€€
[
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€
y
ExpandDims_1
ExpandDimsPlaceholder_2ExpandDims_1/dim*

Tdim0*
T0*'
_output_shapes
:€€€€€€€€€
[
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€
y
ExpandDims_2
ExpandDimsPlaceholder_7ExpandDims_2/dim*
T0*'
_output_shapes
:€€€€€€€€€*

Tdim0
[
ExpandDims_3/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
y
ExpandDims_3
ExpandDimsPlaceholder_3ExpandDims_3/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
[
ExpandDims_4/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
y
ExpandDims_4
ExpandDimsPlaceholder_1ExpandDims_4/dim*

Tdim0*
T0*'
_output_shapes
:€€€€€€€€€
[
ExpandDims_5/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
y
ExpandDims_5
ExpandDimsPlaceholder_5ExpandDims_5/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
[
ExpandDims_6/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€
y
ExpandDims_6
ExpandDimsPlaceholder_6ExpandDims_6/dim*'
_output_shapes
:€€€€€€€€€*
T0*

Tdim0
[
ExpandDims_7/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
w
ExpandDims_7
ExpandDimsPlaceholderExpandDims_7/dim*
T0*'
_output_shapes
:€€€€€€€€€*

Tdim0
Ґ
Vdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/ShapeShapeExpandDims_5*
T0*
out_type0*
_output_shapes
:
й
Udnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/CastCastVdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/Shape*

SrcT0*
_output_shapes
:*

DstT0	
Ъ
Ydnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/Cast_1/xConst*
valueB B *
_output_shapes
: *
dtype0
А
Ydnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/NotEqualNotEqualExpandDims_5Ydnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
г
Vdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/WhereWhereYdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
±
^dnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Н
Xdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/ReshapeReshapeExpandDims_5^dnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
µ
ddnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/strided_slice/stackConst*
valueB"       *
dtype0*
_output_shapes
:
Ј
fdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
Ј
fdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Ы
^dnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/strided_sliceStridedSliceVdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/Whereddnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/strided_slice/stackfdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/strided_slice/stack_1fdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/strided_slice/stack_2*
Index0*
T0	*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
end_mask
Ј
fdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
є
hdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
є
hdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
І
`dnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/strided_slice_1StridedSliceVdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/Wherefdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/strided_slice_1/stackhdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/strided_slice_1/stack_1hdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/strided_slice_1/stack_2*

begin_mask*
ellipsis_mask *'
_output_shapes
:€€€€€€€€€*
end_mask*
T0	*
Index0*
shrink_axis_mask *
new_axis_mask 
у
Xdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/unstackUnpackUdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/Cast*
T0	*	
num*
_output_shapes
: : *

axis 
ф
Vdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/stackPackZdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/unstack:1*

axis *
_output_shapes
:*
T0	*
N
«
Tdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/MulMul`dnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/strided_slice_1Vdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
∞
fdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
д
Tdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/SumSumTdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/Mulfdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/Sum/reduction_indices*#
_output_shapes
:€€€€€€€€€*
T0	*

Tidx0*
	keep_dims( 
њ
Tdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/AddAdd^dnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/strided_sliceTdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
н
Wdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/GatherGatherXdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/ReshapeTdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/Add*#
_output_shapes
:€€€€€€€€€*
Tparams0*
validate_indices(*
Tindices0	
≥
Ydnn/input_from_feature_columns/input_layer/alcohol_use_indicator/alcohol_use_lookup/ConstConst*
_output_shapes
:*
dtype0*&
valueBBTrueBFalseBNone
Ъ
Xdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/alcohol_use_lookup/SizeConst*
dtype0*
_output_shapes
: *
value	B :
°
_dnn/input_from_feature_columns/input_layer/alcohol_use_indicator/alcohol_use_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
°
_dnn/input_from_feature_columns/input_layer/alcohol_use_indicator/alcohol_use_lookup/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
¶
Ydnn/input_from_feature_columns/input_layer/alcohol_use_indicator/alcohol_use_lookup/rangeRange_dnn/input_from_feature_columns/input_layer/alcohol_use_indicator/alcohol_use_lookup/range/startXdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/alcohol_use_lookup/Size_dnn/input_from_feature_columns/input_layer/alcohol_use_indicator/alcohol_use_lookup/range/delta*

Tidx0*
_output_shapes
:
т
[dnn/input_from_feature_columns/input_layer/alcohol_use_indicator/alcohol_use_lookup/ToInt64CastYdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/alcohol_use_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
к
^dnn/input_from_feature_columns/input_layer/alcohol_use_indicator/alcohol_use_lookup/hash_tableHashTableV2*
	key_dtype0*
	container *
shared_name *
value_dtype0	*
_output_shapes
: *
use_node_name_sharing( 
ѓ
ddnn/input_from_feature_columns/input_layer/alcohol_use_indicator/alcohol_use_lookup/hash_table/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 R
€€€€€€€€€
Ѓ
idnn/input_from_feature_columns/input_layer/alcohol_use_indicator/alcohol_use_lookup/hash_table/table_initInitializeTableV2^dnn/input_from_feature_columns/input_layer/alcohol_use_indicator/alcohol_use_lookup/hash_tableYdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/alcohol_use_lookup/Const[dnn/input_from_feature_columns/input_layer/alcohol_use_indicator/alcohol_use_lookup/ToInt64*

Tval0	*

Tkey0
¬
Rdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/hash_table_LookupLookupTableFindV2^dnn/input_from_feature_columns/input_layer/alcohol_use_indicator/alcohol_use_lookup/hash_tableWdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/Gatherddnn/input_from_feature_columns/input_layer/alcohol_use_indicator/alcohol_use_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:€€€€€€€€€*	
Tin0
І
\dnn/input_from_feature_columns/input_layer/alcohol_use_indicator/SparseToDense/default_valueConst*
valueB	 R
€€€€€€€€€*
dtype0	*
_output_shapes
: 
£
Ndnn/input_from_feature_columns/input_layer/alcohol_use_indicator/SparseToDenseSparseToDenseVdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/WhereUdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/to_sparse_input/CastRdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/hash_table_Lookup\dnn/input_from_feature_columns/input_layer/alcohol_use_indicator/SparseToDense/default_value*
Tindices0	*
T0	*
validate_indices(*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
У
Ndnn/input_from_feature_columns/input_layer/alcohol_use_indicator/one_hot/ConstConst*
valueB
 *  А?*
_output_shapes
: *
dtype0
Х
Pdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
Р
Ndnn/input_from_feature_columns/input_layer/alcohol_use_indicator/one_hot/depthConst*
dtype0*
_output_shapes
: *
value	B :
Ц
Qdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/one_hot/on_valueConst*
valueB
 *  А?*
_output_shapes
: *
dtype0
Ч
Rdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ч
Hdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/one_hotOneHotNdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/SparseToDenseNdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/one_hot/depthQdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/one_hot/on_valueRdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/one_hot/off_value*
axis€€€€€€€€€*
TI0	*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
T0
©
Vdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/Sum/reduction_indicesConst*
valueB:
ю€€€€€€€€*
_output_shapes
:*
dtype0
Љ
Ddnn/input_from_feature_columns/input_layer/alcohol_use_indicator/SumSumHdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/one_hotVdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/Sum/reduction_indices*'
_output_shapes
:€€€€€€€€€*
T0*

Tidx0*
	keep_dims( 
 
Fdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/ShapeShapeDdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/Sum*
T0*
_output_shapes
:*
out_type0
Ю
Tdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
†
Vdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
†
Vdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Њ
Ndnn/input_from_feature_columns/input_layer/alcohol_use_indicator/strided_sliceStridedSliceFdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/ShapeTdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/strided_slice/stackVdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/strided_slice/stack_1Vdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/strided_slice/stack_2*
_output_shapes
: *
end_mask *
new_axis_mask *

begin_mask *
ellipsis_mask *
shrink_axis_mask*
T0*
Index0
Т
Pdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
≤
Ndnn/input_from_feature_columns/input_layer/alcohol_use_indicator/Reshape/shapePackNdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/strided_slicePdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/Reshape/shape/1*

axis *
_output_shapes
:*
T0*
N
©
Hdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/ReshapeReshapeDdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/SumNdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Ґ
Xdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/ShapeShape
ExpandDims*
_output_shapes
:*
out_type0*
T0
н
Wdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/CastCastXdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/Shape*

SrcT0*
_output_shapes
:*

DstT0	
Ь
[dnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/Cast_1/xConst*
valueB B *
dtype0*
_output_shapes
: 
В
[dnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/NotEqualNotEqual
ExpandDims[dnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
з
Xdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/WhereWhere[dnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
≥
`dnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
П
Zdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/ReshapeReshape
ExpandDims`dnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/Reshape/shape*#
_output_shapes
:€€€€€€€€€*
Tshape0*
T0
Ј
fdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/strided_slice/stackConst*
valueB"       *
dtype0*
_output_shapes
:
є
hdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
є
hdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
•
`dnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/strided_sliceStridedSliceXdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/Wherefdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/strided_slice/stackhdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/strided_slice/stack_1hdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/strided_slice/stack_2*
T0	*
Index0*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:€€€€€€€€€
є
hdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
ї
jdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
ї
jdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
±
bdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/strided_slice_1StridedSliceXdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/Wherehdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/strided_slice_1/stackjdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/strided_slice_1/stack_1jdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/strided_slice_1/stack_2*
shrink_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
Index0*
end_mask*
new_axis_mask *

begin_mask*
ellipsis_mask 
ч
Zdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/unstackUnpackWdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/Cast*
_output_shapes
: : *

axis *
T0	*	
num
ш
Xdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/stackPack\dnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/unstack:1*
_output_shapes
:*
N*

axis *
T0	
Ќ
Vdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/MulMulbdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/strided_slice_1Xdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
≤
hdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
к
Vdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/SumSumVdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/Mulhdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/Sum/reduction_indices*

Tidx0*
	keep_dims( *
T0	*#
_output_shapes
:€€€€€€€€€
≈
Vdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/AddAdd`dnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/strided_sliceVdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
у
Ydnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/GatherGatherZdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/ReshapeVdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/Add*#
_output_shapes
:€€€€€€€€€*
Tparams0*
validate_indices(*
Tindices0	
Ј
]dnn/input_from_feature_columns/input_layer/cigarette_use_indicator/cigarette_use_lookup/ConstConst*
_output_shapes
:*
dtype0*&
valueBBTrueBFalseBNone
Ю
\dnn/input_from_feature_columns/input_layer/cigarette_use_indicator/cigarette_use_lookup/SizeConst*
_output_shapes
: *
dtype0*
value	B :
•
cdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/cigarette_use_lookup/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
•
cdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/cigarette_use_lookup/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
ґ
]dnn/input_from_feature_columns/input_layer/cigarette_use_indicator/cigarette_use_lookup/rangeRangecdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/cigarette_use_lookup/range/start\dnn/input_from_feature_columns/input_layer/cigarette_use_indicator/cigarette_use_lookup/Sizecdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/cigarette_use_lookup/range/delta*

Tidx0*
_output_shapes
:
ъ
_dnn/input_from_feature_columns/input_layer/cigarette_use_indicator/cigarette_use_lookup/ToInt64Cast]dnn/input_from_feature_columns/input_layer/cigarette_use_indicator/cigarette_use_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
о
bdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/cigarette_use_lookup/hash_tableHashTableV2*
shared_name *
	key_dtype0*
_output_shapes
: *
use_node_name_sharing( *
value_dtype0	*
	container 
≥
hdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/cigarette_use_lookup/hash_table/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
€€€€€€€€€
Њ
mdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/cigarette_use_lookup/hash_table/table_initInitializeTableV2bdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/cigarette_use_lookup/hash_table]dnn/input_from_feature_columns/input_layer/cigarette_use_indicator/cigarette_use_lookup/Const_dnn/input_from_feature_columns/input_layer/cigarette_use_indicator/cigarette_use_lookup/ToInt64*

Tkey0*

Tval0	
ќ
Tdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/hash_table_LookupLookupTableFindV2bdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/cigarette_use_lookup/hash_tableYdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/Gatherhdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/cigarette_use_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:€€€€€€€€€*	
Tin0
©
^dnn/input_from_feature_columns/input_layer/cigarette_use_indicator/SparseToDense/default_valueConst*
dtype0	*
_output_shapes
: *
valueB	 R
€€€€€€€€€
≠
Pdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/SparseToDenseSparseToDenseXdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/WhereWdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/to_sparse_input/CastTdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/hash_table_Lookup^dnn/input_from_feature_columns/input_layer/cigarette_use_indicator/SparseToDense/default_value*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0	*
validate_indices(*
Tindices0	
Х
Pdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/one_hot/ConstConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ч
Rdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Т
Pdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/one_hot/depthConst*
value	B :*
_output_shapes
: *
dtype0
Ш
Sdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/one_hot/on_valueConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Щ
Tdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/one_hot/off_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
Б
Jdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/one_hotOneHotPdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/SparseToDensePdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/one_hot/depthSdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/one_hot/on_valueTdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/one_hot/off_value*
axis€€€€€€€€€*
TI0	*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
T0
Ђ
Xdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/Sum/reduction_indicesConst*
valueB:
ю€€€€€€€€*
_output_shapes
:*
dtype0
¬
Fdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/SumSumJdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/one_hotXdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/Sum/reduction_indices*'
_output_shapes
:€€€€€€€€€*
T0*

Tidx0*
	keep_dims( 
ќ
Hdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/ShapeShapeFdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/Sum*
T0*
_output_shapes
:*
out_type0
†
Vdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ґ
Xdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Ґ
Xdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
»
Pdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/strided_sliceStridedSliceHdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/ShapeVdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/strided_slice/stackXdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/strided_slice/stack_1Xdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
_output_shapes
: *
end_mask *
T0*
Index0*
shrink_axis_mask*
new_axis_mask 
Ф
Rdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
Є
Pdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/Reshape/shapePackPdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/strided_sliceRdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/Reshape/shape/1*

axis *
_output_shapes
:*
T0*
N
ѓ
Jdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/ReshapeReshapeFdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/SumPdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
Tshape0*
T0
М
@dnn/input_from_feature_columns/input_layer/gestation_weeks/ShapeShapeExpandDims_1*
T0*
_output_shapes
:*
out_type0
Ш
Ndnn/input_from_feature_columns/input_layer/gestation_weeks/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ъ
Pdnn/input_from_feature_columns/input_layer/gestation_weeks/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Ъ
Pdnn/input_from_feature_columns/input_layer/gestation_weeks/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
†
Hdnn/input_from_feature_columns/input_layer/gestation_weeks/strided_sliceStridedSlice@dnn/input_from_feature_columns/input_layer/gestation_weeks/ShapeNdnn/input_from_feature_columns/input_layer/gestation_weeks/strided_slice/stackPdnn/input_from_feature_columns/input_layer/gestation_weeks/strided_slice/stack_1Pdnn/input_from_feature_columns/input_layer/gestation_weeks/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
М
Jdnn/input_from_feature_columns/input_layer/gestation_weeks/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
†
Hdnn/input_from_feature_columns/input_layer/gestation_weeks/Reshape/shapePackHdnn/input_from_feature_columns/input_layer/gestation_weeks/strided_sliceJdnn/input_from_feature_columns/input_layer/gestation_weeks/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
е
Bdnn/input_from_feature_columns/input_layer/gestation_weeks/ReshapeReshapeExpandDims_1Hdnn/input_from_feature_columns/input_layer/gestation_weeks/Reshape/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
Ю
Rdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/ShapeShapeExpandDims_2*
T0*
out_type0*
_output_shapes
:
б
Qdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/CastCastRdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/Shape*
_output_shapes
:*

DstT0	*

SrcT0
Ц
Udnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/Cast_1/xConst*
dtype0*
_output_shapes
: *
valueB B 
ш
Udnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/NotEqualNotEqualExpandDims_2Udnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
џ
Rdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/WhereWhereUdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
≠
Zdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
Е
Tdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/ReshapeReshapeExpandDims_2Zdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
±
`dnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
≥
bdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
≥
bdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
З
Zdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/strided_sliceStridedSliceRdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/Where`dnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/strided_slice/stackbdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/strided_slice/stack_1bdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/strided_slice/stack_2*
T0	*
Index0*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
end_mask
≥
bdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
µ
ddnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
µ
ddnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
У
\dnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/strided_slice_1StridedSliceRdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/Wherebdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/strided_slice_1/stackddnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/strided_slice_1/stack_1ddnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/strided_slice_1/stack_2*
shrink_axis_mask *'
_output_shapes
:€€€€€€€€€*
Index0*
T0	*
end_mask*
new_axis_mask *

begin_mask*
ellipsis_mask 
л
Tdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/unstackUnpackQdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/Cast*
T0	*	
num*
_output_shapes
: : *

axis 
м
Rdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/stackPackVdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/unstack:1*
T0	*

axis *
N*
_output_shapes
:
ї
Pdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/MulMul\dnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/strided_slice_1Rdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/stack*
T0	*'
_output_shapes
:€€€€€€€€€
ђ
bdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Ў
Pdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/SumSumPdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/Mulbdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/Sum/reduction_indices*

Tidx0*
	keep_dims( *
T0	*#
_output_shapes
:€€€€€€€€€
≥
Pdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/AddAddZdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/strided_slicePdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
б
Sdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/GatherGatherTdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/ReshapePdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/Add*
Tindices0	*
Tparams0*
validate_indices(*#
_output_shapes
:€€€€€€€€€
•
Qdnn/input_from_feature_columns/input_layer/is_male_indicator/is_male_lookup/ConstConst* 
valueBBTrueBFalse*
_output_shapes
:*
dtype0
Т
Pdnn/input_from_feature_columns/input_layer/is_male_indicator/is_male_lookup/SizeConst*
value	B :*
_output_shapes
: *
dtype0
Щ
Wdnn/input_from_feature_columns/input_layer/is_male_indicator/is_male_lookup/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
Щ
Wdnn/input_from_feature_columns/input_layer/is_male_indicator/is_male_lookup/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
Ж
Qdnn/input_from_feature_columns/input_layer/is_male_indicator/is_male_lookup/rangeRangeWdnn/input_from_feature_columns/input_layer/is_male_indicator/is_male_lookup/range/startPdnn/input_from_feature_columns/input_layer/is_male_indicator/is_male_lookup/SizeWdnn/input_from_feature_columns/input_layer/is_male_indicator/is_male_lookup/range/delta*
_output_shapes
:*

Tidx0
в
Sdnn/input_from_feature_columns/input_layer/is_male_indicator/is_male_lookup/ToInt64CastQdnn/input_from_feature_columns/input_layer/is_male_indicator/is_male_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
в
Vdnn/input_from_feature_columns/input_layer/is_male_indicator/is_male_lookup/hash_tableHashTableV2*
shared_name *
use_node_name_sharing( *
	key_dtype0*
	container *
value_dtype0	*
_output_shapes
: 
І
\dnn/input_from_feature_columns/input_layer/is_male_indicator/is_male_lookup/hash_table/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 R
€€€€€€€€€
О
adnn/input_from_feature_columns/input_layer/is_male_indicator/is_male_lookup/hash_table/table_initInitializeTableV2Vdnn/input_from_feature_columns/input_layer/is_male_indicator/is_male_lookup/hash_tableQdnn/input_from_feature_columns/input_layer/is_male_indicator/is_male_lookup/ConstSdnn/input_from_feature_columns/input_layer/is_male_indicator/is_male_lookup/ToInt64*

Tval0	*

Tkey0
™
Ndnn/input_from_feature_columns/input_layer/is_male_indicator/hash_table_LookupLookupTableFindV2Vdnn/input_from_feature_columns/input_layer/is_male_indicator/is_male_lookup/hash_tableSdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/Gather\dnn/input_from_feature_columns/input_layer/is_male_indicator/is_male_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:€€€€€€€€€*	
Tin0
£
Xdnn/input_from_feature_columns/input_layer/is_male_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
€€€€€€€€€
П
Jdnn/input_from_feature_columns/input_layer/is_male_indicator/SparseToDenseSparseToDenseRdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/WhereQdnn/input_from_feature_columns/input_layer/is_male_indicator/to_sparse_input/CastNdnn/input_from_feature_columns/input_layer/is_male_indicator/hash_table_LookupXdnn/input_from_feature_columns/input_layer/is_male_indicator/SparseToDense/default_value*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0	*
validate_indices(*
Tindices0	
П
Jdnn/input_from_feature_columns/input_layer/is_male_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
С
Ldnn/input_from_feature_columns/input_layer/is_male_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
М
Jdnn/input_from_feature_columns/input_layer/is_male_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :
Т
Mdnn/input_from_feature_columns/input_layer/is_male_indicator/one_hot/on_valueConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
У
Ndnn/input_from_feature_columns/input_layer/is_male_indicator/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
г
Ddnn/input_from_feature_columns/input_layer/is_male_indicator/one_hotOneHotJdnn/input_from_feature_columns/input_layer/is_male_indicator/SparseToDenseJdnn/input_from_feature_columns/input_layer/is_male_indicator/one_hot/depthMdnn/input_from_feature_columns/input_layer/is_male_indicator/one_hot/on_valueNdnn/input_from_feature_columns/input_layer/is_male_indicator/one_hot/off_value*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
axis€€€€€€€€€*
TI0	
•
Rdnn/input_from_feature_columns/input_layer/is_male_indicator/Sum/reduction_indicesConst*
valueB:
ю€€€€€€€€*
dtype0*
_output_shapes
:
∞
@dnn/input_from_feature_columns/input_layer/is_male_indicator/SumSumDdnn/input_from_feature_columns/input_layer/is_male_indicator/one_hotRdnn/input_from_feature_columns/input_layer/is_male_indicator/Sum/reduction_indices*'
_output_shapes
:€€€€€€€€€*
T0*

Tidx0*
	keep_dims( 
¬
Bdnn/input_from_feature_columns/input_layer/is_male_indicator/ShapeShape@dnn/input_from_feature_columns/input_layer/is_male_indicator/Sum*
T0*
out_type0*
_output_shapes
:
Ъ
Pdnn/input_from_feature_columns/input_layer/is_male_indicator/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
Ь
Rdnn/input_from_feature_columns/input_layer/is_male_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Ь
Rdnn/input_from_feature_columns/input_layer/is_male_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
™
Jdnn/input_from_feature_columns/input_layer/is_male_indicator/strided_sliceStridedSliceBdnn/input_from_feature_columns/input_layer/is_male_indicator/ShapePdnn/input_from_feature_columns/input_layer/is_male_indicator/strided_slice/stackRdnn/input_from_feature_columns/input_layer/is_male_indicator/strided_slice/stack_1Rdnn/input_from_feature_columns/input_layer/is_male_indicator/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
О
Ldnn/input_from_feature_columns/input_layer/is_male_indicator/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
¶
Jdnn/input_from_feature_columns/input_layer/is_male_indicator/Reshape/shapePackJdnn/input_from_feature_columns/input_layer/is_male_indicator/strided_sliceLdnn/input_from_feature_columns/input_layer/is_male_indicator/Reshape/shape/1*
_output_shapes
:*
N*

axis *
T0
Э
Ddnn/input_from_feature_columns/input_layer/is_male_indicator/ReshapeReshape@dnn/input_from_feature_columns/input_layer/is_male_indicator/SumJdnn/input_from_feature_columns/input_layer/is_male_indicator/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
З
;dnn/input_from_feature_columns/input_layer/mother_age/ShapeShapeExpandDims_7*
out_type0*
_output_shapes
:*
T0
У
Idnn/input_from_feature_columns/input_layer/mother_age/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Х
Kdnn/input_from_feature_columns/input_layer/mother_age/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Х
Kdnn/input_from_feature_columns/input_layer/mother_age/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
З
Cdnn/input_from_feature_columns/input_layer/mother_age/strided_sliceStridedSlice;dnn/input_from_feature_columns/input_layer/mother_age/ShapeIdnn/input_from_feature_columns/input_layer/mother_age/strided_slice/stackKdnn/input_from_feature_columns/input_layer/mother_age/strided_slice/stack_1Kdnn/input_from_feature_columns/input_layer/mother_age/strided_slice/stack_2*
Index0*
T0*
new_axis_mask *
_output_shapes
: *
shrink_axis_mask*

begin_mask *
ellipsis_mask *
end_mask 
З
Ednn/input_from_feature_columns/input_layer/mother_age/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
С
Cdnn/input_from_feature_columns/input_layer/mother_age/Reshape/shapePackCdnn/input_from_feature_columns/input_layer/mother_age/strided_sliceEdnn/input_from_feature_columns/input_layer/mother_age/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
џ
=dnn/input_from_feature_columns/input_layer/mother_age/ReshapeReshapeExpandDims_7Cdnn/input_from_feature_columns/input_layer/mother_age/Reshape/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
з
bdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/Bucketize	BucketizeExpandDims_7*'
_output_shapes
:€€€€€€€€€*
T0*6

boundaries(
&"$  РA  ∞A  аA   B  B   B  (B  4B  HB
А
^dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/ShapeShapebdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/Bucketize*
out_type0*
_output_shapes
:*
T0
ґ
ldnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Є
ndnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Є
ndnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ґ
fdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/strided_sliceStridedSlice^dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/Shapeldnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/strided_slice/stackndnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/strided_slice/stack_1ndnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
¶
ddnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
¶
ddnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
ћ
^dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/rangeRangeddnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/range/startfdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/strided_sliceddnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/range/delta*

Tidx0*#
_output_shapes
:€€€€€€€€€
©
gdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/ExpandDims/dimConst*
value	B :*
_output_shapes
: *
dtype0
ш
cdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/ExpandDims
ExpandDims^dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/rangegdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/ExpandDims/dim*
T0*'
_output_shapes
:€€€€€€€€€*

Tdim0
Є
gdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/Tile/multiplesConst*
valueB"      *
dtype0*
_output_shapes
:
ч
]dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/TileTilecdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/ExpandDimsgdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/Tile/multiples*'
_output_shapes
:€€€€€€€€€*
T0*

Tmultiples0
є
fdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
о
`dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/ReshapeReshape]dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/Tilefdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
®
fdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/range_1/startConst*
value	B : *
_output_shapes
: *
dtype0
®
fdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/range_1/limitConst*
_output_shapes
: *
dtype0*
value	B :
®
fdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
…
`dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/range_1Rangefdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/range_1/startfdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/range_1/limitfdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/range_1/delta*
_output_shapes
:*

Tidx0
У
idnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/Tile_1/multiplesPackfdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/strided_slice*
T0*

axis *
N*
_output_shapes
:
ф
_dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/Tile_1Tile`dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/range_1idnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/Tile_1/multiples*

Tmultiples0*
T0*#
_output_shapes
:€€€€€€€€€
ї
hdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
ч
bdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/Reshape_1Reshapebdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/Bucketizehdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/Reshape_1/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
†
^dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mul/xConst*
dtype0*
_output_shapes
: *
value	B :

“
\dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mulMul^dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mul/x_dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/Tile_1*#
_output_shapes
:€€€€€€€€€*
T0
”
\dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/addAddbdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/Reshape_1\dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mul*#
_output_shapes
:€€€€€€€€€*
T0
р
^dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/stackPack`dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/Reshape_dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/Tile_1*'
_output_shapes
:€€€€€€€€€*
N*

axis *
T0
р
gdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/transpose/RankRank^dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/stack*
_output_shapes
: *
T0
™
hdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/transpose/sub/yConst*
dtype0*
_output_shapes
: *
value	B :
б
fdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/transpose/subSubgdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/transpose/Rankhdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/transpose/sub/y*
T0*
_output_shapes
: 
∞
ndnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/transpose/Range/startConst*
dtype0*
_output_shapes
: *
value	B : 
∞
ndnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/transpose/Range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
в
hdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/transpose/RangeRangendnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/transpose/Range/startgdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/transpose/Rankndnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/transpose/Range/delta*

Tidx0*
_output_shapes
:
ж
hdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/transpose/sub_1Subfdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/transpose/subhdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/transpose/Range*
_output_shapes
:*
T0
ш
bdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/transpose	Transpose^dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/stackhdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/transpose/sub_1*
Tperm0*'
_output_shapes
:€€€€€€€€€*
T0
Н
`dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/ToInt64Castbdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/transpose*'
_output_shapes
:€€€€€€€€€*

DstT0	*

SrcT0
§
bdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/stack_1/1Const*
value	B :*
_output_shapes
: *
dtype0
о
`dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/stack_1Packfdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/strided_slicebdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/stack_1/1*

axis *
_output_shapes
:*
T0*
N
А
bdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/ToInt64_1Cast`dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/stack_1*
_output_shapes
:*

DstT0	*

SrcT0
Ї
ndnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/ShapeShapeExpandDims_3*
T0*
_output_shapes
:*
out_type0
Щ
mdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/CastCastndnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/Shape*
_output_shapes
:*

DstT0	*

SrcT0
≤
qdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/Cast_1/xConst*
valueB B *
dtype0*
_output_shapes
: 
∞
qdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/NotEqualNotEqualExpandDims_3qdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
У
ndnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/WhereWhereqdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
…
vdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
љ
pdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/ReshapeReshapeExpandDims_3vdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
Ќ
|dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"       
ѕ
~dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
ѕ
~dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
У
vdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/strided_sliceStridedSlicendnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/Where|dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/strided_slice/stack~dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/strided_slice/stack_1~dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/strided_slice/stack_2*
shrink_axis_mask*#
_output_shapes
:€€€€€€€€€*
T0	*
Index0*
end_mask*
new_axis_mask *

begin_mask*
ellipsis_mask 
ѕ
~dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
dtype0*
_output_shapes
:
“
Аdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
“
Аdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
°
xdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/strided_slice_1StridedSlicendnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/Where~dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/strided_slice_1/stackАdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/strided_slice_1/stack_1Аdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/strided_slice_1/stack_2*
ellipsis_mask *

begin_mask*'
_output_shapes
:€€€€€€€€€*
end_mask*
T0	*
Index0*
shrink_axis_mask *
new_axis_mask 
£
pdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/unstackUnpackmdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/Cast*

axis *
_output_shapes
: : *
T0	*	
num
§
ndnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/stackPackrdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/unstack:1*
N*
T0	*
_output_shapes
:*

axis 
П
ldnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/MulMulxdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/strided_slice_1ndnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
»
~dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
ђ
ldnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/SumSumldnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/Mul~dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/Sum/reduction_indices*#
_output_shapes
:€€€€€€€€€*
T0	*

Tidx0*
	keep_dims( 
З
ldnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/AddAddvdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/strided_sliceldnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/Sum*
T0	*#
_output_shapes
:€€€€€€€€€
µ
odnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/GatherGatherpdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/Reshapeldnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/Add*
Tindices0	*
Tparams0*
validate_indices(*#
_output_shapes
:€€€€€€€€€
і
qdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_race_lookup/ConstConst*
dtype0*
_output_shapes
:*О
valueДBБBWhiteBBlackBAmerican IndianBChineseBJapaneseBHawaiianBFilipinoBUnknownBAsian IndianBKoreanBSamaonB
Vietnamese
≤
pdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_race_lookup/SizeConst*
value	B :*
_output_shapes
: *
dtype0
є
wdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_race_lookup/range/startConst*
value	B : *
_output_shapes
: *
dtype0
є
wdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_race_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ж
qdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_race_lookup/rangeRangewdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_race_lookup/range/startpdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_race_lookup/Sizewdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_race_lookup/range/delta*
_output_shapes
:*

Tidx0
Ґ
sdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_race_lookup/ToInt64Castqdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_race_lookup/range*
_output_shapes
:*

DstT0	*

SrcT0
В
vdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_race_lookup/hash_tableHashTableV2*
	container *
value_dtype0	*
use_node_name_sharing( *
_output_shapes
: *
	key_dtype0*
shared_name 
«
|dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_race_lookup/hash_table/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 R
€€€€€€€€€
П
Бdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_race_lookup/hash_table/table_initInitializeTableV2vdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_race_lookup/hash_tableqdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_race_lookup/Constsdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_race_lookup/ToInt64*

Tkey0*

Tval0	
Ґ
jdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/hash_table_LookupLookupTableFindV2vdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_race_lookup/hash_tableodnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/Gather|dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_race_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:€€€€€€€€€*	
Tin0
Е
bdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/ToInt64_2Cast\dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/add*

SrcT0*#
_output_shapes
:€€€€€€€€€*

DstT0	
Љ
ddnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/SparseCrossSparseCross`dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/ToInt64ndnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/Wherebdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/ToInt64_2jdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/hash_table_Lookupbdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/ToInt64_1mdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/Cast*
hash_keyюят„м*
hashed_output(*
sparse_types
2		*
internal_type0	*
out_type0	*<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
dense_types
 *
num_bucketsx*
N
н
Фdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0/Initializer/truncated_normal/shapeConst*Д
_classz
xvloc:@dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0*
valueB"x      *
_output_shapes
:*
dtype0
а
Уdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0/Initializer/truncated_normal/meanConst*
_output_shapes
: *
dtype0*Д
_classz
xvloc:@dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0*
valueB
 *    
в
Хdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
dtype0*Д
_classz
xvloc:@dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0*
valueB
 *.щд>
£
Юdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormalФdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0/Initializer/truncated_normal/shape*
seed2О*
T0*
seed“ЃЇ	*
dtype0*Д
_classz
xvloc:@dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0*
_output_shapes

:x
Г
Тdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0/Initializer/truncated_normal/mulMulЮdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormalХdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddev*Д
_classz
xvloc:@dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0*
_output_shapes

:x*
T0
с
Оdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0/Initializer/truncated_normalAddТdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0/Initializer/truncated_normal/mulУdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0/Initializer/truncated_normal/mean*
T0*Д
_classz
xvloc:@dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0*
_output_shapes

:x
м
qdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0
VariableV2*
shared_name *
shape
:x*
_output_shapes

:x*Д
_classz
xvloc:@dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0*
dtype0*
	container 
я
xdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0/AssignAssignqdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0Оdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0/Initializer/truncated_normal*
use_locking(*
T0*Д
_classz
xvloc:@dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0*
validate_shape(*
_output_shapes

:x
•
vdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0/readIdentityqdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0*
_output_shapes

:x*Д
_classz
xvloc:@dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0*
T0
е
Ъdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
д
Щdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
с
Фdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/SliceSlicefdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/SparseCross:2Ъdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Slice/beginЩdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Slice/size*
_output_shapes
:*
T0	*
Index0
я
Фdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
И
Уdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/ProdProdФdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/SliceФdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Const*
_output_shapes
: *
T0	*

Tidx0*
	keep_dims( 
а
Эdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Gather/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
ч
Хdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/GatherGatherfdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/SparseCross:2Эdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Gather/indices*
_output_shapes
: *
Tparams0	*
validate_indices(*
Tindices0
Ж
Хdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Cast/xPackУdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/ProdХdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Gather*

axis *
_output_shapes
:*
T0	*
N
√
Ьdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/SparseReshapeSparseReshapeddnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/SparseCrossfdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/SparseCross:2Хdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Cast/x*-
_output_shapes
:€€€€€€€€€:
»
•dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/SparseReshape/IdentityIdentityfdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/SparseCross:1*
T0	*#
_output_shapes
:€€€€€€€€€
а
Эdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
Ґ
Ыdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/GreaterEqualGreaterEqual•dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/SparseReshape/IdentityЭdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
е
Фdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/WhereWhereЫdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/GreaterEqual*'
_output_shapes
:€€€€€€€€€
р
Ьdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Ф
Цdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/ReshapeReshapeФdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/WhereЬdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:€€€€€€€€€
Ї
Чdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Gather_1GatherЬdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/SparseReshapeЦdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Reshape*
Tindices0	*
Tparams0	*
validate_indices(*'
_output_shapes
:€€€€€€€€€
њ
Чdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Gather_2Gather•dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/SparseReshape/IdentityЦdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Reshape*#
_output_shapes
:€€€€€€€€€*
Tparams0	*
validate_indices(*
Tindices0	
к
Чdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/IdentityIdentityЮdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/SparseReshape:1*
_output_shapes
:*
T0	
л
®dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
¶
ґdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsЧdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Gather_1Чdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Gather_2Чdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Identity®dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
М
Їdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
О
Љdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
О
Љdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Ў
іdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceґdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsЇdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/embedding_lookup_sparse/strided_slice/stackЉdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Љdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*

begin_mask*
ellipsis_mask *
shrink_axis_mask*#
_output_shapes
:€€€€€€€€€*
new_axis_mask *
T0	*
Index0
®
Ђdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/embedding_lookup_sparse/CastCastіdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/embedding_lookup_sparse/strided_slice*#
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0	
њ
≠dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/embedding_lookup_sparse/UniqueUniqueЄdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*
out_idx0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
—
Јdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/embedding_lookup_sparse/embedding_lookupGathervdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0/read≠dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/embedding_lookup_sparse/Unique*Д
_classz
xvloc:@dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tparams0*
validate_indices(*
Tindices0	
Ф
¶dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/embedding_lookup_sparseSparseSegmentMeanЈdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/embedding_lookup_sparse/embedding_lookupѓdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/embedding_lookup_sparse/Unique:1Ђdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:€€€€€€€€€*
T0*

Tidx0
р
Юdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"€€€€   
ј
Шdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Reshape_1ReshapeЄdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2Юdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

ь
Фdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/ShapeShape¶dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/embedding_lookup_sparse*
_output_shapes
:*
out_type0*
T0
н
Ґdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
п
§dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
п
§dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
…
Ьdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/strided_sliceStridedSliceФdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/ShapeҐdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/strided_slice/stack§dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/strided_slice/stack_1§dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
_output_shapes
: *
end_mask *
T0*
Index0*
shrink_axis_mask*
new_axis_mask 
ў
Цdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
П
Фdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/stackPackЦdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/stack/0Ьdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/strided_slice*

axis *
_output_shapes
:*
T0*
N
Ы
Уdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/TileTileШdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Reshape_1Фdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
*

Tmultiples0
В
Щdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/zeros_like	ZerosLike¶dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
¶
Оdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weightsSelectУdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/TileЩdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/zeros_like¶dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
Ї
Хdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Cast_1Castfdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/SparseCross:2*
_output_shapes
:*

DstT0*

SrcT0	
з
Ьdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
ж
Ыdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
І
Цdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Slice_1SliceХdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Cast_1Ьdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Slice_1/beginЫdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Slice_1/size*
_output_shapes
:*
T0*
Index0
ж
Цdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Shape_1ShapeОdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights*
T0*
_output_shapes
:*
out_type0
з
Ьdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB:
п
Ыdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
®
Цdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Slice_2SliceЦdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Shape_1Ьdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Slice_2/beginЫdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Slice_2/size*
_output_shapes
:*
T0*
Index0
Ё
Ъdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
Ђ
Хdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/concatConcatV2Цdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Slice_1Цdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Slice_2Ъdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/concat/axis*
_output_shapes
:*
N*
T0*

Tidx0
Н
Шdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Reshape_2ReshapeОdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weightsХdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/concat*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
є
`dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/Shape_1ShapeШdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Reshape_2*
out_type0*
_output_shapes
:*
T0
Є
ndnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/strided_slice_1/stackConst*
valueB: *
_output_shapes
:*
dtype0
Ї
pdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Ї
pdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ј
hdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/strided_slice_1StridedSlice`dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/Shape_1ndnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/strided_slice_1/stackpdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/strided_slice_1/stack_1pdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/strided_slice_1/stack_2*
end_mask *

begin_mask *
ellipsis_mask *
shrink_axis_mask*
_output_shapes
: *
new_axis_mask *
Index0*
T0
ђ
jdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/Reshape_2/shape/1Const*
value	B :*
_output_shapes
: *
dtype0
А
hdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/Reshape_2/shapePackhdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/strided_slice_1jdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/Reshape_2/shape/1*
N*
T0*
_output_shapes
:*

axis 
≤
bdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/Reshape_2ReshapeШdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_age_bucketized_X_mother_race_embedding_weights/Reshape_2hdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/Reshape_2/shape*'
_output_shapes
:€€€€€€€€€*
Tshape0*
T0
•
Ydnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/ShapeShapeExpandDims_6*
T0*
out_type0*
_output_shapes
:
п
Xdnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/CastCastYdnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/Shape*

SrcT0*
_output_shapes
:*

DstT0	
Э
\dnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/Cast_1/xConst*
valueB B *
dtype0*
_output_shapes
: 
Ж
\dnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/NotEqualNotEqualExpandDims_6\dnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/Cast_1/x*
T0*'
_output_shapes
:€€€€€€€€€
й
Ydnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/WhereWhere\dnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
і
adnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
У
[dnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/ReshapeReshapeExpandDims_6adnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
Є
gdnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
Ї
idnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
Ї
idnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
™
adnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/strided_sliceStridedSliceYdnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/Wheregdnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/strided_slice/stackidnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/strided_slice/stack_1idnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/strided_slice/stack_2*
new_axis_mask *
shrink_axis_mask*
Index0*
T0	*
end_mask*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask *

begin_mask
Ї
idnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Љ
kdnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
Љ
kdnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/strided_slice_1/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
ґ
cdnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/strided_slice_1StridedSliceYdnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/Whereidnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/strided_slice_1/stackkdnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/strided_slice_1/stack_1kdnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *
shrink_axis_mask *
Index0*
T0	*
end_mask*'
_output_shapes
:€€€€€€€€€*

begin_mask*
ellipsis_mask 
щ
[dnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/unstackUnpackXdnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/Cast*

axis *
_output_shapes
: : *
T0	*	
num
ъ
Ydnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/stackPack]dnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/unstack:1*
T0	*

axis *
N*
_output_shapes
:
–
Wdnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/MulMulcdnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/strided_slice_1Ydnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
≥
idnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
н
Wdnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/SumSumWdnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/Mulidnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/Sum/reduction_indices*#
_output_shapes
:€€€€€€€€€*
T0	*

Tidx0*
	keep_dims( 
»
Wdnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/AddAddadnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/strided_sliceWdnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
ц
Zdnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/GatherGather[dnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/ReshapeWdnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/Add*#
_output_shapes
:€€€€€€€€€*
Tparams0*
validate_indices(*
Tindices0	
≥
_dnn/input_from_feature_columns/input_layer/mother_married_indicator/mother_married_lookup/ConstConst* 
valueBBTrueBFalse*
_output_shapes
:*
dtype0
†
^dnn/input_from_feature_columns/input_layer/mother_married_indicator/mother_married_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
І
ednn/input_from_feature_columns/input_layer/mother_married_indicator/mother_married_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
І
ednn/input_from_feature_columns/input_layer/mother_married_indicator/mother_married_lookup/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
Њ
_dnn/input_from_feature_columns/input_layer/mother_married_indicator/mother_married_lookup/rangeRangeednn/input_from_feature_columns/input_layer/mother_married_indicator/mother_married_lookup/range/start^dnn/input_from_feature_columns/input_layer/mother_married_indicator/mother_married_lookup/Sizeednn/input_from_feature_columns/input_layer/mother_married_indicator/mother_married_lookup/range/delta*
_output_shapes
:*

Tidx0
ю
adnn/input_from_feature_columns/input_layer/mother_married_indicator/mother_married_lookup/ToInt64Cast_dnn/input_from_feature_columns/input_layer/mother_married_indicator/mother_married_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
р
ddnn/input_from_feature_columns/input_layer/mother_married_indicator/mother_married_lookup/hash_tableHashTableV2*
_output_shapes
: *
value_dtype0	*
	container *
	key_dtype0*
use_node_name_sharing( *
shared_name 
µ
jdnn/input_from_feature_columns/input_layer/mother_married_indicator/mother_married_lookup/hash_table/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 R
€€€€€€€€€
∆
odnn/input_from_feature_columns/input_layer/mother_married_indicator/mother_married_lookup/hash_table/table_initInitializeTableV2ddnn/input_from_feature_columns/input_layer/mother_married_indicator/mother_married_lookup/hash_table_dnn/input_from_feature_columns/input_layer/mother_married_indicator/mother_married_lookup/Constadnn/input_from_feature_columns/input_layer/mother_married_indicator/mother_married_lookup/ToInt64*

Tval0	*

Tkey0
‘
Udnn/input_from_feature_columns/input_layer/mother_married_indicator/hash_table_LookupLookupTableFindV2ddnn/input_from_feature_columns/input_layer/mother_married_indicator/mother_married_lookup/hash_tableZdnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/Gatherjdnn/input_from_feature_columns/input_layer/mother_married_indicator/mother_married_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:€€€€€€€€€*	
Tin0
™
_dnn/input_from_feature_columns/input_layer/mother_married_indicator/SparseToDense/default_valueConst*
valueB	 R
€€€€€€€€€*
dtype0	*
_output_shapes
: 
≤
Qdnn/input_from_feature_columns/input_layer/mother_married_indicator/SparseToDenseSparseToDenseYdnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/WhereXdnn/input_from_feature_columns/input_layer/mother_married_indicator/to_sparse_input/CastUdnn/input_from_feature_columns/input_layer/mother_married_indicator/hash_table_Lookup_dnn/input_from_feature_columns/input_layer/mother_married_indicator/SparseToDense/default_value*
Tindices0	*
T0	*
validate_indices(*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Ц
Qdnn/input_from_feature_columns/input_layer/mother_married_indicator/one_hot/ConstConst*
valueB
 *  А?*
_output_shapes
: *
dtype0
Ш
Sdnn/input_from_feature_columns/input_layer/mother_married_indicator/one_hot/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
У
Qdnn/input_from_feature_columns/input_layer/mother_married_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :
Щ
Tdnn/input_from_feature_columns/input_layer/mother_married_indicator/one_hot/on_valueConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
Ъ
Udnn/input_from_feature_columns/input_layer/mother_married_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ж
Kdnn/input_from_feature_columns/input_layer/mother_married_indicator/one_hotOneHotQdnn/input_from_feature_columns/input_layer/mother_married_indicator/SparseToDenseQdnn/input_from_feature_columns/input_layer/mother_married_indicator/one_hot/depthTdnn/input_from_feature_columns/input_layer/mother_married_indicator/one_hot/on_valueUdnn/input_from_feature_columns/input_layer/mother_married_indicator/one_hot/off_value*
axis€€€€€€€€€*
TI0	*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
T0
ђ
Ydnn/input_from_feature_columns/input_layer/mother_married_indicator/Sum/reduction_indicesConst*
valueB:
ю€€€€€€€€*
_output_shapes
:*
dtype0
≈
Gdnn/input_from_feature_columns/input_layer/mother_married_indicator/SumSumKdnn/input_from_feature_columns/input_layer/mother_married_indicator/one_hotYdnn/input_from_feature_columns/input_layer/mother_married_indicator/Sum/reduction_indices*'
_output_shapes
:€€€€€€€€€*
T0*

Tidx0*
	keep_dims( 
–
Idnn/input_from_feature_columns/input_layer/mother_married_indicator/ShapeShapeGdnn/input_from_feature_columns/input_layer/mother_married_indicator/Sum*
T0*
_output_shapes
:*
out_type0
°
Wdnn/input_from_feature_columns/input_layer/mother_married_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
£
Ydnn/input_from_feature_columns/input_layer/mother_married_indicator/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
£
Ydnn/input_from_feature_columns/input_layer/mother_married_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ќ
Qdnn/input_from_feature_columns/input_layer/mother_married_indicator/strided_sliceStridedSliceIdnn/input_from_feature_columns/input_layer/mother_married_indicator/ShapeWdnn/input_from_feature_columns/input_layer/mother_married_indicator/strided_slice/stackYdnn/input_from_feature_columns/input_layer/mother_married_indicator/strided_slice/stack_1Ydnn/input_from_feature_columns/input_layer/mother_married_indicator/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
Х
Sdnn/input_from_feature_columns/input_layer/mother_married_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
ї
Qdnn/input_from_feature_columns/input_layer/mother_married_indicator/Reshape/shapePackQdnn/input_from_feature_columns/input_layer/mother_married_indicator/strided_sliceSdnn/input_from_feature_columns/input_layer/mother_married_indicator/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
≤
Kdnn/input_from_feature_columns/input_layer/mother_married_indicator/ReshapeReshapeGdnn/input_from_feature_columns/input_layer/mother_married_indicator/SumQdnn/input_from_feature_columns/input_layer/mother_married_indicator/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€*
Tshape0
І
\dnn/input_from_feature_columns/input_layer/mother_race_indicator/SparseToDense/default_valueConst*
valueB	 R
€€€€€€€€€*
_output_shapes
: *
dtype0	
л
Ndnn/input_from_feature_columns/input_layer/mother_race_indicator/SparseToDenseSparseToDensendnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/Wheremdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/to_sparse_input/Castjdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/hash_table_Lookup\dnn/input_from_feature_columns/input_layer/mother_race_indicator/SparseToDense/default_value*
Tindices0	*
T0	*
validate_indices(*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
У
Ndnn/input_from_feature_columns/input_layer/mother_race_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
Х
Pdnn/input_from_feature_columns/input_layer/mother_race_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Р
Ndnn/input_from_feature_columns/input_layer/mother_race_indicator/one_hot/depthConst*
value	B :*
_output_shapes
: *
dtype0
Ц
Qdnn/input_from_feature_columns/input_layer/mother_race_indicator/one_hot/on_valueConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
Ч
Rdnn/input_from_feature_columns/input_layer/mother_race_indicator/one_hot/off_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
ч
Hdnn/input_from_feature_columns/input_layer/mother_race_indicator/one_hotOneHotNdnn/input_from_feature_columns/input_layer/mother_race_indicator/SparseToDenseNdnn/input_from_feature_columns/input_layer/mother_race_indicator/one_hot/depthQdnn/input_from_feature_columns/input_layer/mother_race_indicator/one_hot/on_valueRdnn/input_from_feature_columns/input_layer/mother_race_indicator/one_hot/off_value*
axis€€€€€€€€€*
TI0	*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
T0
©
Vdnn/input_from_feature_columns/input_layer/mother_race_indicator/Sum/reduction_indicesConst*
valueB:
ю€€€€€€€€*
dtype0*
_output_shapes
:
Љ
Ddnn/input_from_feature_columns/input_layer/mother_race_indicator/SumSumHdnn/input_from_feature_columns/input_layer/mother_race_indicator/one_hotVdnn/input_from_feature_columns/input_layer/mother_race_indicator/Sum/reduction_indices*'
_output_shapes
:€€€€€€€€€*
T0*

Tidx0*
	keep_dims( 
 
Fdnn/input_from_feature_columns/input_layer/mother_race_indicator/ShapeShapeDdnn/input_from_feature_columns/input_layer/mother_race_indicator/Sum*
out_type0*
_output_shapes
:*
T0
Ю
Tdnn/input_from_feature_columns/input_layer/mother_race_indicator/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
†
Vdnn/input_from_feature_columns/input_layer/mother_race_indicator/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
†
Vdnn/input_from_feature_columns/input_layer/mother_race_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Њ
Ndnn/input_from_feature_columns/input_layer/mother_race_indicator/strided_sliceStridedSliceFdnn/input_from_feature_columns/input_layer/mother_race_indicator/ShapeTdnn/input_from_feature_columns/input_layer/mother_race_indicator/strided_slice/stackVdnn/input_from_feature_columns/input_layer/mother_race_indicator/strided_slice/stack_1Vdnn/input_from_feature_columns/input_layer/mother_race_indicator/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0*
end_mask *
new_axis_mask *
ellipsis_mask *

begin_mask 
Т
Pdnn/input_from_feature_columns/input_layer/mother_race_indicator/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
≤
Ndnn/input_from_feature_columns/input_layer/mother_race_indicator/Reshape/shapePackNdnn/input_from_feature_columns/input_layer/mother_race_indicator/strided_slicePdnn/input_from_feature_columns/input_layer/mother_race_indicator/Reshape/shape/1*
N*
T0*
_output_shapes
:*

axis 
©
Hdnn/input_from_feature_columns/input_layer/mother_race_indicator/ReshapeReshapeDdnn/input_from_feature_columns/input_layer/mother_race_indicator/SumNdnn/input_from_feature_columns/input_layer/mother_race_indicator/Reshape/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
Ж
:dnn/input_from_feature_columns/input_layer/plurality/ShapeShapeExpandDims_4*
_output_shapes
:*
out_type0*
T0
Т
Hdnn/input_from_feature_columns/input_layer/plurality/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
Ф
Jdnn/input_from_feature_columns/input_layer/plurality/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Ф
Jdnn/input_from_feature_columns/input_layer/plurality/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
В
Bdnn/input_from_feature_columns/input_layer/plurality/strided_sliceStridedSlice:dnn/input_from_feature_columns/input_layer/plurality/ShapeHdnn/input_from_feature_columns/input_layer/plurality/strided_slice/stackJdnn/input_from_feature_columns/input_layer/plurality/strided_slice/stack_1Jdnn/input_from_feature_columns/input_layer/plurality/strided_slice/stack_2*
_output_shapes
: *
end_mask *
new_axis_mask *
ellipsis_mask *

begin_mask *
shrink_axis_mask*
Index0*
T0
Ж
Ddnn/input_from_feature_columns/input_layer/plurality/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
О
Bdnn/input_from_feature_columns/input_layer/plurality/Reshape/shapePackBdnn/input_from_feature_columns/input_layer/plurality/strided_sliceDdnn/input_from_feature_columns/input_layer/plurality/Reshape/shape/1*

axis *
_output_shapes
:*
T0*
N
ў
<dnn/input_from_feature_columns/input_layer/plurality/ReshapeReshapeExpandDims_4Bdnn/input_from_feature_columns/input_layer/plurality/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
Tshape0*
T0
x
6dnn/input_from_feature_columns/input_layer/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
‘
1dnn/input_from_feature_columns/input_layer/concatConcatV2Hdnn/input_from_feature_columns/input_layer/alcohol_use_indicator/ReshapeJdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/ReshapeBdnn/input_from_feature_columns/input_layer/gestation_weeks/ReshapeDdnn/input_from_feature_columns/input_layer/is_male_indicator/Reshape=dnn/input_from_feature_columns/input_layer/mother_age/Reshapebdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/Reshape_2Kdnn/input_from_feature_columns/input_layer/mother_married_indicator/ReshapeHdnn/input_from_feature_columns/input_layer/mother_race_indicator/Reshape<dnn/input_from_feature_columns/input_layer/plurality/Reshape6dnn/input_from_feature_columns/input_layer/concat/axis*'
_output_shapes
:€€€€€€€€€*
N	*
T0*

Tidx0
≈
@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
valueB"   @   *
_output_shapes
:*
dtype0
Ј
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/minConst*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
valueB
 *√ZБЊ*
_output_shapes
: *
dtype0
Ј
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/maxConst*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
valueB
 *√ZБ>*
dtype0*
_output_shapes
: 
Ґ
Hdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shape*
seed2†*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
seed“ЃЇ	*
_output_shapes

:@*
T0
Ъ
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
ђ
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:@
Ю
:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
_output_shapes

:@*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
T0
«
dnn/hiddenlayer_0/kernel/part_0
VariableV2*
	container *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:@*
shape
:@*
shared_name 
У
&dnn/hiddenlayer_0/kernel/part_0/AssignAssigndnn/hiddenlayer_0/kernel/part_0:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform*
_output_shapes

:@*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
T0*
use_locking(
Ѓ
$dnn/hiddenlayer_0/kernel/part_0/readIdentitydnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:@*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
T0
Ѓ
/dnn/hiddenlayer_0/bias/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:@*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
valueB@*    
ї
dnn/hiddenlayer_0/bias/part_0
VariableV2*
shape:@*
_output_shapes
:@*
shared_name *0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
dtype0*
	container 
ю
$dnn/hiddenlayer_0/bias/part_0/AssignAssigndnn/hiddenlayer_0/bias/part_0/dnn/hiddenlayer_0/bias/part_0/Initializer/zeros*
use_locking(*
T0*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
validate_shape(*
_output_shapes
:@
§
"dnn/hiddenlayer_0/bias/part_0/readIdentitydnn/hiddenlayer_0/bias/part_0*
_output_shapes
:@*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
T0
s
dnn/hiddenlayer_0/kernelIdentity$dnn/hiddenlayer_0/kernel/part_0/read*
T0*
_output_shapes

:@
«
dnn/hiddenlayer_0/MatMulMatMul1dnn/input_from_feature_columns/input_layer/concatdnn/hiddenlayer_0/kernel*
transpose_b( *'
_output_shapes
:€€€€€€€€€@*
transpose_a( *
T0
k
dnn/hiddenlayer_0/biasIdentity"dnn/hiddenlayer_0/bias/part_0/read*
_output_shapes
:@*
T0
Я
dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMuldnn/hiddenlayer_0/bias*
data_formatNHWC*
T0*'
_output_shapes
:€€€€€€€€€@
k
dnn/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€@
[
dnn/zero_fraction/zeroConst*
dtype0*
_output_shapes
: *
valueB
 *    
В
dnn/zero_fraction/EqualEqualdnn/hiddenlayer_0/Reludnn/zero_fraction/zero*'
_output_shapes
:€€€€€€€€€@*
T0
x
dnn/zero_fraction/CastCastdnn/zero_fraction/Equal*

SrcT0
*'
_output_shapes
:€€€€€€€€€@*

DstT0
h
dnn/zero_fraction/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
Н
dnn/zero_fraction/MeanMeandnn/zero_fraction/Castdnn/zero_fraction/Const*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
†
2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_0/fraction_of_zero_values*
dtype0*
_output_shapes
: 
Ђ
-dnn/dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/Mean*
T0*
_output_shapes
: 
Е
$dnn/dnn/hiddenlayer_0/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_0/activation*
_output_shapes
: *
dtype0
У
 dnn/dnn/hiddenlayer_0/activationHistogramSummary$dnn/dnn/hiddenlayer_0/activation/tagdnn/hiddenlayer_0/Relu*
_output_shapes
: *
T0
≈
@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
valueB"@       
Ј
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
valueB
 *  АЊ
Ј
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/maxConst*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
valueB
 *  А>*
dtype0*
_output_shapes
: 
Ґ
Hdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shape*
seed2Љ*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
seed“ЃЇ	*
_output_shapes

:@ *
T0
Ъ
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
ђ
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/sub*
T0*
_output_shapes

:@ *2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
Ю
:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes

:@ *2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
«
dnn/hiddenlayer_1/kernel/part_0
VariableV2*
shared_name *
shape
:@ *
_output_shapes

:@ *2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
dtype0*
	container 
У
&dnn/hiddenlayer_1/kernel/part_0/AssignAssigndnn/hiddenlayer_1/kernel/part_0:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform*
use_locking(*
validate_shape(*
T0*
_output_shapes

:@ *2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
Ѓ
$dnn/hiddenlayer_1/kernel/part_0/readIdentitydnn/hiddenlayer_1/kernel/part_0*
T0*
_output_shapes

:@ *2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
Ѓ
/dnn/hiddenlayer_1/bias/part_0/Initializer/zerosConst*
_output_shapes
: *
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
valueB *    
ї
dnn/hiddenlayer_1/bias/part_0
VariableV2*
	container *
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
shared_name *
_output_shapes
: *
shape: 
ю
$dnn/hiddenlayer_1/bias/part_0/AssignAssigndnn/hiddenlayer_1/bias/part_0/dnn/hiddenlayer_1/bias/part_0/Initializer/zeros*
_output_shapes
: *
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
T0*
use_locking(
§
"dnn/hiddenlayer_1/bias/part_0/readIdentitydnn/hiddenlayer_1/bias/part_0*
T0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
_output_shapes
: 
s
dnn/hiddenlayer_1/kernelIdentity$dnn/hiddenlayer_1/kernel/part_0/read*
_output_shapes

:@ *
T0
ђ
dnn/hiddenlayer_1/MatMulMatMuldnn/hiddenlayer_0/Reludnn/hiddenlayer_1/kernel*
transpose_b( *
T0*'
_output_shapes
:€€€€€€€€€ *
transpose_a( 
k
dnn/hiddenlayer_1/biasIdentity"dnn/hiddenlayer_1/bias/part_0/read*
_output_shapes
: *
T0
Я
dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMuldnn/hiddenlayer_1/bias*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€ 
k
dnn/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*'
_output_shapes
:€€€€€€€€€ *
T0
]
dnn/zero_fraction_1/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ж
dnn/zero_fraction_1/EqualEqualdnn/hiddenlayer_1/Reludnn/zero_fraction_1/zero*
T0*'
_output_shapes
:€€€€€€€€€ 
|
dnn/zero_fraction_1/CastCastdnn/zero_fraction_1/Equal*'
_output_shapes
:€€€€€€€€€ *

DstT0*

SrcT0

j
dnn/zero_fraction_1/ConstConst*
valueB"       *
_output_shapes
:*
dtype0
У
dnn/zero_fraction_1/MeanMeandnn/zero_fraction_1/Castdnn/zero_fraction_1/Const*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
†
2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_1/fraction_of_zero_values*
_output_shapes
: *
dtype0
≠
-dnn/dnn/hiddenlayer_1/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsdnn/zero_fraction_1/Mean*
T0*
_output_shapes
: 
Е
$dnn/dnn/hiddenlayer_1/activation/tagConst*
_output_shapes
: *
dtype0*1
value(B& B dnn/dnn/hiddenlayer_1/activation
У
 dnn/dnn/hiddenlayer_1/activationHistogramSummary$dnn/dnn/hiddenlayer_1/activation/tagdnn/hiddenlayer_1/Relu*
T0*
_output_shapes
: 
≈
@dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
valueB"       *
_output_shapes
:*
dtype0
Ј
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/minConst*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
valueB
 *уµЊ*
dtype0*
_output_shapes
: 
Ј
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/maxConst*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
valueB
 *уµ>*
_output_shapes
: *
dtype0
Ґ
Hdnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/shape*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

: *
T0*
dtype0*
seed2Ў*
seed“ЃЇ	
Ъ
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/min*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
T0
ђ
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

: 
Ю
:dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes

: *2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0
«
dnn/hiddenlayer_2/kernel/part_0
VariableV2*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

: *
shape
: *
dtype0*
shared_name *
	container 
У
&dnn/hiddenlayer_2/kernel/part_0/AssignAssigndnn/hiddenlayer_2/kernel/part_0:dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform*
use_locking(*
validate_shape(*
T0*
_output_shapes

: *2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0
Ѓ
$dnn/hiddenlayer_2/kernel/part_0/readIdentitydnn/hiddenlayer_2/kernel/part_0*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

: 
Ѓ
/dnn/hiddenlayer_2/bias/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
valueB*    
ї
dnn/hiddenlayer_2/bias/part_0
VariableV2*
	container *
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
shared_name *
_output_shapes
:*
shape:
ю
$dnn/hiddenlayer_2/bias/part_0/AssignAssigndnn/hiddenlayer_2/bias/part_0/dnn/hiddenlayer_2/bias/part_0/Initializer/zeros*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
§
"dnn/hiddenlayer_2/bias/part_0/readIdentitydnn/hiddenlayer_2/bias/part_0*
T0*
_output_shapes
:*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0
s
dnn/hiddenlayer_2/kernelIdentity$dnn/hiddenlayer_2/kernel/part_0/read*
_output_shapes

: *
T0
ђ
dnn/hiddenlayer_2/MatMulMatMuldnn/hiddenlayer_1/Reludnn/hiddenlayer_2/kernel*
transpose_b( *'
_output_shapes
:€€€€€€€€€*
transpose_a( *
T0
k
dnn/hiddenlayer_2/biasIdentity"dnn/hiddenlayer_2/bias/part_0/read*
_output_shapes
:*
T0
Я
dnn/hiddenlayer_2/BiasAddBiasAdddnn/hiddenlayer_2/MatMuldnn/hiddenlayer_2/bias*
data_formatNHWC*
T0*'
_output_shapes
:€€€€€€€€€
k
dnn/hiddenlayer_2/ReluReludnn/hiddenlayer_2/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€
]
dnn/zero_fraction_2/zeroConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ж
dnn/zero_fraction_2/EqualEqualdnn/hiddenlayer_2/Reludnn/zero_fraction_2/zero*
T0*'
_output_shapes
:€€€€€€€€€
|
dnn/zero_fraction_2/CastCastdnn/zero_fraction_2/Equal*

SrcT0
*'
_output_shapes
:€€€€€€€€€*

DstT0
j
dnn/zero_fraction_2/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
У
dnn/zero_fraction_2/MeanMeandnn/zero_fraction_2/Castdnn/zero_fraction_2/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
†
2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_2/fraction_of_zero_values*
dtype0*
_output_shapes
: 
≠
-dnn/dnn/hiddenlayer_2/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsdnn/zero_fraction_2/Mean*
_output_shapes
: *
T0
Е
$dnn/dnn/hiddenlayer_2/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_2/activation*
_output_shapes
: *
dtype0
У
 dnn/dnn/hiddenlayer_2/activationHistogramSummary$dnn/dnn/hiddenlayer_2/activation/tagdnn/hiddenlayer_2/Relu*
_output_shapes
: *
T0
Ј
9dnn/logits/kernel/part_0/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*+
_class!
loc:@dnn/logits/kernel/part_0*
valueB"      
©
7dnn/logits/kernel/part_0/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *+
_class!
loc:@dnn/logits/kernel/part_0*
valueB
 *0њ
©
7dnn/logits/kernel/part_0/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*+
_class!
loc:@dnn/logits/kernel/part_0*
valueB
 *0?
Н
Adnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform9dnn/logits/kernel/part_0/Initializer/random_uniform/shape*
seed“ЃЇ	*
seed2ф*
dtype0*
T0*
_output_shapes

:*+
_class!
loc:@dnn/logits/kernel/part_0
ю
7dnn/logits/kernel/part_0/Initializer/random_uniform/subSub7dnn/logits/kernel/part_0/Initializer/random_uniform/max7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes
: 
Р
7dnn/logits/kernel/part_0/Initializer/random_uniform/mulMulAdnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniform7dnn/logits/kernel/part_0/Initializer/random_uniform/sub*
T0*
_output_shapes

:*+
_class!
loc:@dnn/logits/kernel/part_0
В
3dnn/logits/kernel/part_0/Initializer/random_uniformAdd7dnn/logits/kernel/part_0/Initializer/random_uniform/mul7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:
є
dnn/logits/kernel/part_0
VariableV2*
shared_name *+
_class!
loc:@dnn/logits/kernel/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:
ч
dnn/logits/kernel/part_0/AssignAssigndnn/logits/kernel/part_03dnn/logits/kernel/part_0/Initializer/random_uniform*
use_locking(*
validate_shape(*
T0*
_output_shapes

:*+
_class!
loc:@dnn/logits/kernel/part_0
Щ
dnn/logits/kernel/part_0/readIdentitydnn/logits/kernel/part_0*
T0*
_output_shapes

:*+
_class!
loc:@dnn/logits/kernel/part_0
†
(dnn/logits/bias/part_0/Initializer/zerosConst*)
_class
loc:@dnn/logits/bias/part_0*
valueB*    *
dtype0*
_output_shapes
:
≠
dnn/logits/bias/part_0
VariableV2*
	container *
dtype0*)
_class
loc:@dnn/logits/bias/part_0*
shared_name *
_output_shapes
:*
shape:
в
dnn/logits/bias/part_0/AssignAssigndnn/logits/bias/part_0(dnn/logits/bias/part_0/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*)
_class
loc:@dnn/logits/bias/part_0
П
dnn/logits/bias/part_0/readIdentitydnn/logits/bias/part_0*
T0*)
_class
loc:@dnn/logits/bias/part_0*
_output_shapes
:
e
dnn/logits/kernelIdentitydnn/logits/kernel/part_0/read*
_output_shapes

:*
T0
Ю
dnn/logits/MatMulMatMuldnn/hiddenlayer_2/Reludnn/logits/kernel*
transpose_b( *'
_output_shapes
:€€€€€€€€€*
transpose_a( *
T0
]
dnn/logits/biasIdentitydnn/logits/bias/part_0/read*
T0*
_output_shapes
:
К
dnn/logits/BiasAddBiasAdddnn/logits/MatMuldnn/logits/bias*
data_formatNHWC*
T0*'
_output_shapes
:€€€€€€€€€
]
dnn/zero_fraction_3/zeroConst*
dtype0*
_output_shapes
: *
valueB
 *    
В
dnn/zero_fraction_3/EqualEqualdnn/logits/BiasAdddnn/zero_fraction_3/zero*
T0*'
_output_shapes
:€€€€€€€€€
|
dnn/zero_fraction_3/CastCastdnn/zero_fraction_3/Equal*

SrcT0
*'
_output_shapes
:€€€€€€€€€*

DstT0
j
dnn/zero_fraction_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
У
dnn/zero_fraction_3/MeanMeandnn/zero_fraction_3/Castdnn/zero_fraction_3/Const*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
Т
+dnn/dnn/logits/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*7
value.B, B&dnn/dnn/logits/fraction_of_zero_values
Я
&dnn/dnn/logits/fraction_of_zero_valuesScalarSummary+dnn/dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_3/Mean*
T0*
_output_shapes
: 
w
dnn/dnn/logits/activation/tagConst**
value!B Bdnn/dnn/logits/activation*
_output_shapes
: *
dtype0
Б
dnn/dnn/logits/activationHistogramSummarydnn/dnn/logits/activation/tagdnn/logits/BiasAdd*
T0*
_output_shapes
: 
Б
5linear/linear_model/alcohol_use/to_sparse_input/ShapeShapeExpandDims_5*
_output_shapes
:*
out_type0*
T0
І
4linear/linear_model/alcohol_use/to_sparse_input/CastCast5linear/linear_model/alcohol_use/to_sparse_input/Shape*

SrcT0*
_output_shapes
:*

DstT0	
y
8linear/linear_model/alcohol_use/to_sparse_input/Cast_1/xConst*
valueB B *
dtype0*
_output_shapes
: 
Њ
8linear/linear_model/alcohol_use/to_sparse_input/NotEqualNotEqualExpandDims_58linear/linear_model/alcohol_use/to_sparse_input/Cast_1/x*
T0*'
_output_shapes
:€€€€€€€€€
°
5linear/linear_model/alcohol_use/to_sparse_input/WhereWhere8linear/linear_model/alcohol_use/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
Р
=linear/linear_model/alcohol_use/to_sparse_input/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
Ћ
7linear/linear_model/alcohol_use/to_sparse_input/ReshapeReshapeExpandDims_5=linear/linear_model/alcohol_use/to_sparse_input/Reshape/shape*#
_output_shapes
:€€€€€€€€€*
Tshape0*
T0
Ф
Clinear/linear_model/alcohol_use/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
Ц
Elinear/linear_model/alcohol_use/to_sparse_input/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
Ц
Elinear/linear_model/alcohol_use/to_sparse_input/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
ц
=linear/linear_model/alcohol_use/to_sparse_input/strided_sliceStridedSlice5linear/linear_model/alcohol_use/to_sparse_input/WhereClinear/linear_model/alcohol_use/to_sparse_input/strided_slice/stackElinear/linear_model/alcohol_use/to_sparse_input/strided_slice/stack_1Elinear/linear_model/alcohol_use/to_sparse_input/strided_slice/stack_2*
T0	*
Index0*
new_axis_mask *#
_output_shapes
:€€€€€€€€€*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
end_mask
Ц
Elinear/linear_model/alcohol_use/to_sparse_input/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Ш
Glinear/linear_model/alcohol_use/to_sparse_input/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
Ш
Glinear/linear_model/alcohol_use/to_sparse_input/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
В
?linear/linear_model/alcohol_use/to_sparse_input/strided_slice_1StridedSlice5linear/linear_model/alcohol_use/to_sparse_input/WhereElinear/linear_model/alcohol_use/to_sparse_input/strided_slice_1/stackGlinear/linear_model/alcohol_use/to_sparse_input/strided_slice_1/stack_1Glinear/linear_model/alcohol_use/to_sparse_input/strided_slice_1/stack_2*
end_mask*

begin_mask*
ellipsis_mask *
shrink_axis_mask *'
_output_shapes
:€€€€€€€€€*
new_axis_mask *
Index0*
T0	
±
7linear/linear_model/alcohol_use/to_sparse_input/unstackUnpack4linear/linear_model/alcohol_use/to_sparse_input/Cast*
_output_shapes
: : *

axis *
T0	*	
num
≤
5linear/linear_model/alcohol_use/to_sparse_input/stackPack9linear/linear_model/alcohol_use/to_sparse_input/unstack:1*
T0	*

axis *
N*
_output_shapes
:
д
3linear/linear_model/alcohol_use/to_sparse_input/MulMul?linear/linear_model/alcohol_use/to_sparse_input/strided_slice_15linear/linear_model/alcohol_use/to_sparse_input/stack*
T0	*'
_output_shapes
:€€€€€€€€€
П
Elinear/linear_model/alcohol_use/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
Б
3linear/linear_model/alcohol_use/to_sparse_input/SumSum3linear/linear_model/alcohol_use/to_sparse_input/MulElinear/linear_model/alcohol_use/to_sparse_input/Sum/reduction_indices*#
_output_shapes
:€€€€€€€€€*
T0	*

Tidx0*
	keep_dims( 
№
3linear/linear_model/alcohol_use/to_sparse_input/AddAdd=linear/linear_model/alcohol_use/to_sparse_input/strided_slice3linear/linear_model/alcohol_use/to_sparse_input/Sum*
T0	*#
_output_shapes
:€€€€€€€€€
К
6linear/linear_model/alcohol_use/to_sparse_input/GatherGather7linear/linear_model/alcohol_use/to_sparse_input/Reshape3linear/linear_model/alcohol_use/to_sparse_input/Add*#
_output_shapes
:€€€€€€€€€*
Tparams0*
validate_indices(*
Tindices0	
Т
8linear/linear_model/alcohol_use/alcohol_use_lookup/ConstConst*
_output_shapes
:*
dtype0*&
valueBBTrueBFalseBNone
y
7linear/linear_model/alcohol_use/alcohol_use_lookup/SizeConst*
dtype0*
_output_shapes
: *
value	B :
А
>linear/linear_model/alcohol_use/alcohol_use_lookup/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
А
>linear/linear_model/alcohol_use/alcohol_use_lookup/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
Ґ
8linear/linear_model/alcohol_use/alcohol_use_lookup/rangeRange>linear/linear_model/alcohol_use/alcohol_use_lookup/range/start7linear/linear_model/alcohol_use/alcohol_use_lookup/Size>linear/linear_model/alcohol_use/alcohol_use_lookup/range/delta*

Tidx0*
_output_shapes
:
∞
:linear/linear_model/alcohol_use/alcohol_use_lookup/ToInt64Cast8linear/linear_model/alcohol_use/alcohol_use_lookup/range*
_output_shapes
:*

DstT0	*

SrcT0
…
=linear/linear_model/alcohol_use/alcohol_use_lookup/hash_tableHashTableV2*
	container *
value_dtype0	*
use_node_name_sharing( *
_output_shapes
: *
	key_dtype0*
shared_name 
О
Clinear/linear_model/alcohol_use/alcohol_use_lookup/hash_table/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 R
€€€€€€€€€
™
Hlinear/linear_model/alcohol_use/alcohol_use_lookup/hash_table/table_initInitializeTableV2=linear/linear_model/alcohol_use/alcohol_use_lookup/hash_table8linear/linear_model/alcohol_use/alcohol_use_lookup/Const:linear/linear_model/alcohol_use/alcohol_use_lookup/ToInt64*

Tkey0*

Tval0	
Њ
1linear/linear_model/alcohol_use/hash_table_LookupLookupTableFindV2=linear/linear_model/alcohol_use/alcohol_use_lookup/hash_table6linear/linear_model/alcohol_use/to_sparse_input/GatherClinear/linear_model/alcohol_use/alcohol_use_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:€€€€€€€€€*	
Tin0
Ь
*linear/linear_model/alcohol_use/Shape/CastCast4linear/linear_model/alcohol_use/to_sparse_input/Cast*

SrcT0	*
_output_shapes
:*

DstT0
}
3linear/linear_model/alcohol_use/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0

5linear/linear_model/alcohol_use/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

5linear/linear_model/alcohol_use/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ю
-linear/linear_model/alcohol_use/strided_sliceStridedSlice*linear/linear_model/alcohol_use/Shape/Cast3linear/linear_model/alcohol_use/strided_slice/stack5linear/linear_model/alcohol_use/strided_slice/stack_15linear/linear_model/alcohol_use/strided_slice/stack_2*
end_mask *

begin_mask *
ellipsis_mask *
shrink_axis_mask*
_output_shapes
: *
new_axis_mask *
T0*
Index0
s
(linear/linear_model/alcohol_use/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
Ѕ
&linear/linear_model/alcohol_use/Cast/xPack-linear/linear_model/alcohol_use/strided_slice(linear/linear_model/alcohol_use/Cast/x/1*
N*
T0*
_output_shapes
:*

axis 
И
$linear/linear_model/alcohol_use/CastCast&linear/linear_model/alcohol_use/Cast/x*
_output_shapes
:*

DstT0	*

SrcT0
А
-linear/linear_model/alcohol_use/SparseReshapeSparseReshape5linear/linear_model/alcohol_use/to_sparse_input/Where4linear/linear_model/alcohol_use/to_sparse_input/Cast$linear/linear_model/alcohol_use/Cast*-
_output_shapes
:€€€€€€€€€:
£
6linear/linear_model/alcohol_use/SparseReshape/IdentityIdentity1linear/linear_model/alcohol_use/hash_table_Lookup*
T0	*#
_output_shapes
:€€€€€€€€€
Ў
@linear/linear_model/alcohol_use/weights/part_0/Initializer/zerosConst*A
_class7
53loc:@linear/linear_model/alcohol_use/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
е
.linear/linear_model/alcohol_use/weights/part_0
VariableV2*
_output_shapes

:*
dtype0*
shape
:*
	container *A
_class7
53loc:@linear/linear_model/alcohol_use/weights/part_0*
shared_name 
∆
5linear/linear_model/alcohol_use/weights/part_0/AssignAssign.linear/linear_model/alcohol_use/weights/part_0@linear/linear_model/alcohol_use/weights/part_0/Initializer/zeros*A
_class7
53loc:@linear/linear_model/alcohol_use/weights/part_0*
_output_shapes

:*
T0*
validate_shape(*
use_locking(
џ
3linear/linear_model/alcohol_use/weights/part_0/readIdentity.linear/linear_model/alcohol_use/weights/part_0*A
_class7
53loc:@linear/linear_model/alcohol_use/weights/part_0*
_output_shapes

:*
T0
В
8linear/linear_model/alcohol_use/weighted_sum/Slice/beginConst*
dtype0*
_output_shapes
:*
valueB: 
Б
7linear/linear_model/alcohol_use/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
С
2linear/linear_model/alcohol_use/weighted_sum/SliceSlice/linear/linear_model/alcohol_use/SparseReshape:18linear/linear_model/alcohol_use/weighted_sum/Slice/begin7linear/linear_model/alcohol_use/weighted_sum/Slice/size*
T0	*
Index0*
_output_shapes
:
|
2linear/linear_model/alcohol_use/weighted_sum/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
я
1linear/linear_model/alcohol_use/weighted_sum/ProdProd2linear/linear_model/alcohol_use/weighted_sum/Slice2linear/linear_model/alcohol_use/weighted_sum/Const*
_output_shapes
: *
T0	*

Tidx0*
	keep_dims( 
}
;linear/linear_model/alcohol_use/weighted_sum/Gather/indicesConst*
_output_shapes
: *
dtype0*
value	B :
ъ
3linear/linear_model/alcohol_use/weighted_sum/GatherGather/linear/linear_model/alcohol_use/SparseReshape:1;linear/linear_model/alcohol_use/weighted_sum/Gather/indices*
_output_shapes
: *
Tparams0	*
validate_indices(*
Tindices0
Ё
3linear/linear_model/alcohol_use/weighted_sum/Cast/xPack1linear/linear_model/alcohol_use/weighted_sum/Prod3linear/linear_model/alcohol_use/weighted_sum/Gather*

axis *
_output_shapes
:*
T0	*
N
П
:linear/linear_model/alcohol_use/weighted_sum/SparseReshapeSparseReshape-linear/linear_model/alcohol_use/SparseReshape/linear/linear_model/alcohol_use/SparseReshape:13linear/linear_model/alcohol_use/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
µ
Clinear/linear_model/alcohol_use/weighted_sum/SparseReshape/IdentityIdentity6linear/linear_model/alcohol_use/SparseReshape/Identity*
T0	*#
_output_shapes
:€€€€€€€€€
}
;linear/linear_model/alcohol_use/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
щ
9linear/linear_model/alcohol_use/weighted_sum/GreaterEqualGreaterEqualClinear/linear_model/alcohol_use/weighted_sum/SparseReshape/Identity;linear/linear_model/alcohol_use/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
Я
2linear/linear_model/alcohol_use/weighted_sum/WhereWhere9linear/linear_model/alcohol_use/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Н
:linear/linear_model/alcohol_use/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
л
4linear/linear_model/alcohol_use/weighted_sum/ReshapeReshape2linear/linear_model/alcohol_use/weighted_sum/Where:linear/linear_model/alcohol_use/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:€€€€€€€€€*
Tshape0
С
5linear/linear_model/alcohol_use/weighted_sum/Gather_1Gather:linear/linear_model/alcohol_use/weighted_sum/SparseReshape4linear/linear_model/alcohol_use/weighted_sum/Reshape*'
_output_shapes
:€€€€€€€€€*
Tparams0	*
validate_indices(*
Tindices0	
Ц
5linear/linear_model/alcohol_use/weighted_sum/Gather_2GatherClinear/linear_model/alcohol_use/weighted_sum/SparseReshape/Identity4linear/linear_model/alcohol_use/weighted_sum/Reshape*#
_output_shapes
:€€€€€€€€€*
Tparams0	*
validate_indices(*
Tindices0	
§
5linear/linear_model/alcohol_use/weighted_sum/IdentityIdentity<linear/linear_model/alcohol_use/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
И
Flinear/linear_model/alcohol_use/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
Ј
Tlinear/linear_model/alcohol_use/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows5linear/linear_model/alcohol_use/weighted_sum/Gather_15linear/linear_model/alcohol_use/weighted_sum/Gather_25linear/linear_model/alcohol_use/weighted_sum/IdentityFlinear/linear_model/alcohol_use/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
©
Xlinear/linear_model/alcohol_use/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
Ђ
Zlinear/linear_model/alcohol_use/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
Ђ
Zlinear/linear_model/alcohol_use/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
й
Rlinear/linear_model/alcohol_use/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceTlinear/linear_model/alcohol_use/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsXlinear/linear_model/alcohol_use/weighted_sum/embedding_lookup_sparse/strided_slice/stackZlinear/linear_model/alcohol_use/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Zlinear/linear_model/alcohol_use/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*

begin_mask*
ellipsis_mask *#
_output_shapes
:€€€€€€€€€*
end_mask*
T0	*
Index0*
shrink_axis_mask*
new_axis_mask 
в
Ilinear/linear_model/alcohol_use/weighted_sum/embedding_lookup_sparse/CastCastRlinear/linear_model/alcohol_use/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:€€€€€€€€€*

DstT0
щ
Klinear/linear_model/alcohol_use/weighted_sum/embedding_lookup_sparse/UniqueUniqueVlinear/linear_model/alcohol_use/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0	*
out_idx0
Д
Ulinear/linear_model/alcohol_use/weighted_sum/embedding_lookup_sparse/embedding_lookupGather3linear/linear_model/alcohol_use/weights/part_0/readKlinear/linear_model/alcohol_use/weighted_sum/embedding_lookup_sparse/Unique*A
_class7
53loc:@linear/linear_model/alcohol_use/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tparams0*
validate_indices(*
Tindices0	
З
Dlinear/linear_model/alcohol_use/weighted_sum/embedding_lookup_sparseSparseSegmentSumUlinear/linear_model/alcohol_use/weighted_sum/embedding_lookup_sparse/embedding_lookupMlinear/linear_model/alcohol_use/weighted_sum/embedding_lookup_sparse/Unique:1Ilinear/linear_model/alcohol_use/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*
T0*'
_output_shapes
:€€€€€€€€€
Н
<linear/linear_model/alcohol_use/weighted_sum/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"€€€€   
Ч
6linear/linear_model/alcohol_use/weighted_sum/Reshape_1ReshapeVlinear/linear_model/alcohol_use/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2<linear/linear_model/alcohol_use/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:€€€€€€€€€*
Tshape0
ґ
2linear/linear_model/alcohol_use/weighted_sum/ShapeShapeDlinear/linear_model/alcohol_use/weighted_sum/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
К
@linear/linear_model/alcohol_use/weighted_sum/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
М
Blinear/linear_model/alcohol_use/weighted_sum/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
М
Blinear/linear_model/alcohol_use/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
Џ
:linear/linear_model/alcohol_use/weighted_sum/strided_sliceStridedSlice2linear/linear_model/alcohol_use/weighted_sum/Shape@linear/linear_model/alcohol_use/weighted_sum/strided_slice/stackBlinear/linear_model/alcohol_use/weighted_sum/strided_slice/stack_1Blinear/linear_model/alcohol_use/weighted_sum/strided_slice/stack_2*
_output_shapes
: *
end_mask *
new_axis_mask *

begin_mask *
ellipsis_mask *
shrink_axis_mask*
Index0*
T0
v
4linear/linear_model/alcohol_use/weighted_sum/stack/0Const*
dtype0*
_output_shapes
: *
value	B :
ж
2linear/linear_model/alcohol_use/weighted_sum/stackPack4linear/linear_model/alcohol_use/weighted_sum/stack/0:linear/linear_model/alcohol_use/weighted_sum/strided_slice*

axis *
_output_shapes
:*
T0*
N
т
1linear/linear_model/alcohol_use/weighted_sum/TileTile6linear/linear_model/alcohol_use/weighted_sum/Reshape_12linear/linear_model/alcohol_use/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
*

Tmultiples0
Љ
7linear/linear_model/alcohol_use/weighted_sum/zeros_like	ZerosLikeDlinear/linear_model/alcohol_use/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
Ъ
,linear/linear_model/alcohol_use/weighted_sumSelect1linear/linear_model/alcohol_use/weighted_sum/Tile7linear/linear_model/alcohol_use/weighted_sum/zeros_likeDlinear/linear_model/alcohol_use/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
†
3linear/linear_model/alcohol_use/weighted_sum/Cast_1Cast/linear/linear_model/alcohol_use/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
Д
:linear/linear_model/alcohol_use/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Г
9linear/linear_model/alcohol_use/weighted_sum/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
Ы
4linear/linear_model/alcohol_use/weighted_sum/Slice_1Slice3linear/linear_model/alcohol_use/weighted_sum/Cast_1:linear/linear_model/alcohol_use/weighted_sum/Slice_1/begin9linear/linear_model/alcohol_use/weighted_sum/Slice_1/size*
_output_shapes
:*
T0*
Index0
†
4linear/linear_model/alcohol_use/weighted_sum/Shape_1Shape,linear/linear_model/alcohol_use/weighted_sum*
_output_shapes
:*
out_type0*
T0
Д
:linear/linear_model/alcohol_use/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
М
9linear/linear_model/alcohol_use/weighted_sum/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
Ь
4linear/linear_model/alcohol_use/weighted_sum/Slice_2Slice4linear/linear_model/alcohol_use/weighted_sum/Shape_1:linear/linear_model/alcohol_use/weighted_sum/Slice_2/begin9linear/linear_model/alcohol_use/weighted_sum/Slice_2/size*
_output_shapes
:*
T0*
Index0
z
8linear/linear_model/alcohol_use/weighted_sum/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Я
3linear/linear_model/alcohol_use/weighted_sum/concatConcatV24linear/linear_model/alcohol_use/weighted_sum/Slice_14linear/linear_model/alcohol_use/weighted_sum/Slice_28linear/linear_model/alcohol_use/weighted_sum/concat/axis*
_output_shapes
:*
T0*

Tidx0*
N
д
6linear/linear_model/alcohol_use/weighted_sum/Reshape_2Reshape,linear/linear_model/alcohol_use/weighted_sum3linear/linear_model/alcohol_use/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
П
Elinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/ShapeShape
ExpandDims*
out_type0*
_output_shapes
:*
T0
«
Dlinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/CastCastElinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/Shape*

SrcT0*
_output_shapes
:*

DstT0	
Й
Hlinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB B 
№
Hlinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/NotEqualNotEqual
ExpandDimsHlinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
Ѕ
Elinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/WhereWhereHlinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
†
Mlinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
й
Glinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/ReshapeReshape
ExpandDimsMlinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
§
Slinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
¶
Ulinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
¶
Ulinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
∆
Mlinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/strided_sliceStridedSliceElinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/WhereSlinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/strided_slice/stackUlinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/strided_slice/stack_1Ulinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/strided_slice/stack_2*
shrink_axis_mask*#
_output_shapes
:€€€€€€€€€*
Index0*
T0	*
end_mask*
new_axis_mask *
ellipsis_mask *

begin_mask
¶
Ulinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
_output_shapes
:*
dtype0
®
Wlinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
®
Wlinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
“
Olinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/strided_slice_1StridedSliceElinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/WhereUlinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/strided_slice_1/stackWlinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/strided_slice_1/stack_1Wlinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/strided_slice_1/stack_2*
shrink_axis_mask *'
_output_shapes
:€€€€€€€€€*
T0	*
Index0*
end_mask*
new_axis_mask *

begin_mask*
ellipsis_mask 
—
Glinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/unstackUnpackDlinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/Cast*
T0	*	
num*
_output_shapes
: : *

axis 
“
Elinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/stackPackIlinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/unstack:1*
_output_shapes
:*
N*

axis *
T0	
Ф
Clinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/MulMulOlinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/strided_slice_1Elinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/stack*
T0	*'
_output_shapes
:€€€€€€€€€
Я
Ulinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
±
Clinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/SumSumClinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/MulUlinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/Sum/reduction_indices*

Tidx0*
	keep_dims( *
T0	*#
_output_shapes
:€€€€€€€€€
М
Clinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/AddAddMlinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/strided_sliceClinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/Sum*
T0	*#
_output_shapes
:€€€€€€€€€
Ї
Flinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/GatherGatherGlinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/ReshapeClinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/Add*#
_output_shapes
:€€€€€€€€€*
Tparams0*
validate_indices(*
Tindices0	
§
Jlinear/linear_model/alcohol_use_X_cigarette_use/cigarette_use_lookup/ConstConst*
dtype0*
_output_shapes
:*&
valueBBTrueBFalseBNone
Л
Ilinear/linear_model/alcohol_use_X_cigarette_use/cigarette_use_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
Т
Plinear/linear_model/alcohol_use_X_cigarette_use/cigarette_use_lookup/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
Т
Plinear/linear_model/alcohol_use_X_cigarette_use/cigarette_use_lookup/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
к
Jlinear/linear_model/alcohol_use_X_cigarette_use/cigarette_use_lookup/rangeRangePlinear/linear_model/alcohol_use_X_cigarette_use/cigarette_use_lookup/range/startIlinear/linear_model/alcohol_use_X_cigarette_use/cigarette_use_lookup/SizePlinear/linear_model/alcohol_use_X_cigarette_use/cigarette_use_lookup/range/delta*

Tidx0*
_output_shapes
:
‘
Llinear/linear_model/alcohol_use_X_cigarette_use/cigarette_use_lookup/ToInt64CastJlinear/linear_model/alcohol_use_X_cigarette_use/cigarette_use_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
џ
Olinear/linear_model/alcohol_use_X_cigarette_use/cigarette_use_lookup/hash_tableHashTableV2*
shared_name *
	key_dtype0*
_output_shapes
: *
use_node_name_sharing( *
value_dtype0	*
	container 
†
Ulinear/linear_model/alcohol_use_X_cigarette_use/cigarette_use_lookup/hash_table/ConstConst*
valueB	 R
€€€€€€€€€*
dtype0	*
_output_shapes
: 
т
Zlinear/linear_model/alcohol_use_X_cigarette_use/cigarette_use_lookup/hash_table/table_initInitializeTableV2Olinear/linear_model/alcohol_use_X_cigarette_use/cigarette_use_lookup/hash_tableJlinear/linear_model/alcohol_use_X_cigarette_use/cigarette_use_lookup/ConstLlinear/linear_model/alcohol_use_X_cigarette_use/cigarette_use_lookup/ToInt64*

Tkey0*

Tval0	
В
Alinear/linear_model/alcohol_use_X_cigarette_use/hash_table_LookupLookupTableFindV2Olinear/linear_model/alcohol_use_X_cigarette_use/cigarette_use_lookup/hash_tableFlinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/GatherUlinear/linear_model/alcohol_use_X_cigarette_use/cigarette_use_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:€€€€€€€€€*	
Tin0
О
;linear/linear_model/alcohol_use_X_cigarette_use/SparseCrossSparseCrossElinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/Where5linear/linear_model/alcohol_use/to_sparse_input/WhereAlinear/linear_model/alcohol_use_X_cigarette_use/hash_table_Lookup1linear/linear_model/alcohol_use/hash_table_LookupDlinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/Cast4linear/linear_model/alcohol_use/to_sparse_input/Cast*
hash_keyюят„м*
hashed_output(*
internal_type0	*
sparse_types
2		*
out_type0	*<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
dense_types
 *
num_buckets	*
N
µ
:linear/linear_model/alcohol_use_X_cigarette_use/Shape/CastCast=linear/linear_model/alcohol_use_X_cigarette_use/SparseCross:2*
_output_shapes
:*

DstT0*

SrcT0	
Н
Clinear/linear_model/alcohol_use_X_cigarette_use/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
П
Elinear/linear_model/alcohol_use_X_cigarette_use/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
П
Elinear/linear_model/alcohol_use_X_cigarette_use/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
о
=linear/linear_model/alcohol_use_X_cigarette_use/strided_sliceStridedSlice:linear/linear_model/alcohol_use_X_cigarette_use/Shape/CastClinear/linear_model/alcohol_use_X_cigarette_use/strided_slice/stackElinear/linear_model/alcohol_use_X_cigarette_use/strided_slice/stack_1Elinear/linear_model/alcohol_use_X_cigarette_use/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Г
8linear/linear_model/alcohol_use_X_cigarette_use/Cast/x/1Const*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
с
6linear/linear_model/alcohol_use_X_cigarette_use/Cast/xPack=linear/linear_model/alcohol_use_X_cigarette_use/strided_slice8linear/linear_model/alcohol_use_X_cigarette_use/Cast/x/1*

axis *
_output_shapes
:*
T0*
N
®
4linear/linear_model/alcohol_use_X_cigarette_use/CastCast6linear/linear_model/alcohol_use_X_cigarette_use/Cast/x*

SrcT0*
_output_shapes
:*

DstT0	
ѓ
=linear/linear_model/alcohol_use_X_cigarette_use/SparseReshapeSparseReshape;linear/linear_model/alcohol_use_X_cigarette_use/SparseCross=linear/linear_model/alcohol_use_X_cigarette_use/SparseCross:24linear/linear_model/alcohol_use_X_cigarette_use/Cast*-
_output_shapes
:€€€€€€€€€:
њ
Flinear/linear_model/alcohol_use_X_cigarette_use/SparseReshape/IdentityIdentity=linear/linear_model/alcohol_use_X_cigarette_use/SparseCross:1*#
_output_shapes
:€€€€€€€€€*
T0	
ш
Plinear/linear_model/alcohol_use_X_cigarette_use/weights/part_0/Initializer/zerosConst*Q
_classG
ECloc:@linear/linear_model/alcohol_use_X_cigarette_use/weights/part_0*
valueB	*    *
_output_shapes

:	*
dtype0
Е
>linear/linear_model/alcohol_use_X_cigarette_use/weights/part_0
VariableV2*
	container *
dtype0*Q
_classG
ECloc:@linear/linear_model/alcohol_use_X_cigarette_use/weights/part_0*
shared_name *
_output_shapes

:	*
shape
:	
Ж
Elinear/linear_model/alcohol_use_X_cigarette_use/weights/part_0/AssignAssign>linear/linear_model/alcohol_use_X_cigarette_use/weights/part_0Plinear/linear_model/alcohol_use_X_cigarette_use/weights/part_0/Initializer/zeros*
_output_shapes

:	*
validate_shape(*Q
_classG
ECloc:@linear/linear_model/alcohol_use_X_cigarette_use/weights/part_0*
T0*
use_locking(
Л
Clinear/linear_model/alcohol_use_X_cigarette_use/weights/part_0/readIdentity>linear/linear_model/alcohol_use_X_cigarette_use/weights/part_0*
T0*
_output_shapes

:	*Q
_classG
ECloc:@linear/linear_model/alcohol_use_X_cigarette_use/weights/part_0
Т
Hlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
С
Glinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
—
Blinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/SliceSlice?linear/linear_model/alcohol_use_X_cigarette_use/SparseReshape:1Hlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Slice/beginGlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Slice/size*
_output_shapes
:*
T0	*
Index0
М
Blinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
П
Alinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/ProdProdBlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/SliceBlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Const*

Tidx0*
	keep_dims( *
T0	*
_output_shapes
: 
Н
Klinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Gather/indicesConst*
_output_shapes
: *
dtype0*
value	B :
™
Clinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/GatherGather?linear/linear_model/alcohol_use_X_cigarette_use/SparseReshape:1Klinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Gather/indices*
_output_shapes
: *
Tparams0	*
validate_indices(*
Tindices0
Н
Clinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Cast/xPackAlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/ProdClinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Gather*
T0	*

axis *
N*
_output_shapes
:
ѕ
Jlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/SparseReshapeSparseReshape=linear/linear_model/alcohol_use_X_cigarette_use/SparseReshape?linear/linear_model/alcohol_use_X_cigarette_use/SparseReshape:1Clinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
’
Slinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/SparseReshape/IdentityIdentityFlinear/linear_model/alcohol_use_X_cigarette_use/SparseReshape/Identity*
T0	*#
_output_shapes
:€€€€€€€€€
Н
Klinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
©
Ilinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/GreaterEqualGreaterEqualSlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/SparseReshape/IdentityKlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
њ
Blinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/WhereWhereIlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Э
Jlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
Ы
Dlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/ReshapeReshapeBlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/WhereJlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Reshape/shape*#
_output_shapes
:€€€€€€€€€*
Tshape0*
T0	
Ѕ
Elinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Gather_1GatherJlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/SparseReshapeDlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Reshape*
Tindices0	*
Tparams0	*
validate_indices(*'
_output_shapes
:€€€€€€€€€
∆
Elinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Gather_2GatherSlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/SparseReshape/IdentityDlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Reshape*#
_output_shapes
:€€€€€€€€€*
Tparams0	*
validate_indices(*
Tindices0	
ƒ
Elinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/IdentityIdentityLlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Ш
Vlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
З
dlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsElinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Gather_1Elinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Gather_2Elinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/IdentityVlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
є
hlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
ї
jlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
ї
jlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
є
blinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicedlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowshlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/embedding_lookup_sparse/strided_slice/stackjlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1jlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*

begin_mask*
ellipsis_mask *
shrink_axis_mask*#
_output_shapes
:€€€€€€€€€*
new_axis_mask *
T0	*
Index0
В
Ylinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/embedding_lookup_sparse/CastCastblinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:€€€€€€€€€*

DstT0
Щ
[linear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/embedding_lookup_sparse/UniqueUniqueflinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*
out_idx0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ƒ
elinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherClinear/linear_model/alcohol_use_X_cigarette_use/weights/part_0/read[linear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*
Tparams0*
validate_indices(*Q
_classG
ECloc:@linear/linear_model/alcohol_use_X_cigarette_use/weights/part_0*'
_output_shapes
:€€€€€€€€€
«
Tlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/embedding_lookup_sparseSparseSegmentSumelinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/embedding_lookup_sparse/embedding_lookup]linear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/embedding_lookup_sparse/Unique:1Ylinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*
T0*'
_output_shapes
:€€€€€€€€€
Э
Llinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"€€€€   
«
Flinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Reshape_1Reshapeflinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Llinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:€€€€€€€€€*
Tshape0
÷
Blinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/ShapeShapeTlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
Ъ
Plinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
Ь
Rlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Ь
Rlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
™
Jlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/strided_sliceStridedSliceBlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/ShapePlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/strided_slice/stackRlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/strided_slice/stack_1Rlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/strided_slice/stack_2*
new_axis_mask *
shrink_axis_mask*
T0*
Index0*
end_mask *
_output_shapes
: *
ellipsis_mask *

begin_mask 
Ж
Dlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
Ц
Blinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/stackPackDlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/stack/0Jlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:*

axis 
Ґ
Alinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/TileTileFlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Reshape_1Blinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
*

Tmultiples0
№
Glinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/zeros_like	ZerosLikeTlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
Џ
<linear/linear_model/alcohol_use_X_cigarette_use/weighted_sumSelectAlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/TileGlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/zeros_likeTlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
ј
Clinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Cast_1Cast?linear/linear_model/alcohol_use_X_cigarette_use/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
Ф
Jlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Slice_1/beginConst*
valueB: *
_output_shapes
:*
dtype0
У
Ilinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
џ
Dlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Slice_1SliceClinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Cast_1Jlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Slice_1/beginIlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Slice_1/size*
T0*
Index0*
_output_shapes
:
ј
Dlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Shape_1Shape<linear/linear_model/alcohol_use_X_cigarette_use/weighted_sum*
T0*
_output_shapes
:*
out_type0
Ф
Jlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Ь
Ilinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
№
Dlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Slice_2SliceDlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Shape_1Jlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Slice_2/beginIlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Slice_2/size*
_output_shapes
:*
T0*
Index0
К
Hlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
я
Clinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/concatConcatV2Dlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Slice_1Dlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Slice_2Hlinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
Ф
Flinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Reshape_2Reshape<linear/linear_model/alcohol_use_X_cigarette_use/weighted_sumClinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
Ѓ
,linear/linear_model/cigarette_use/Shape/CastCastDlinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/Cast*
_output_shapes
:*

DstT0*

SrcT0	

5linear/linear_model/cigarette_use/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
Б
7linear/linear_model/cigarette_use/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
Б
7linear/linear_model/cigarette_use/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
®
/linear/linear_model/cigarette_use/strided_sliceStridedSlice,linear/linear_model/cigarette_use/Shape/Cast5linear/linear_model/cigarette_use/strided_slice/stack7linear/linear_model/cigarette_use/strided_slice/stack_17linear/linear_model/cigarette_use/strided_slice/stack_2*
end_mask *
ellipsis_mask *

begin_mask *
shrink_axis_mask*
_output_shapes
: *
new_axis_mask *
T0*
Index0
u
*linear/linear_model/cigarette_use/Cast/x/1Const*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
«
(linear/linear_model/cigarette_use/Cast/xPack/linear/linear_model/cigarette_use/strided_slice*linear/linear_model/cigarette_use/Cast/x/1*

axis *
_output_shapes
:*
T0*
N
М
&linear/linear_model/cigarette_use/CastCast(linear/linear_model/cigarette_use/Cast/x*

SrcT0*
_output_shapes
:*

DstT0	
§
/linear/linear_model/cigarette_use/SparseReshapeSparseReshapeElinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/WhereDlinear/linear_model/alcohol_use_X_cigarette_use/to_sparse_input/Cast&linear/linear_model/cigarette_use/Cast*-
_output_shapes
:€€€€€€€€€:
µ
8linear/linear_model/cigarette_use/SparseReshape/IdentityIdentityAlinear/linear_model/alcohol_use_X_cigarette_use/hash_table_Lookup*#
_output_shapes
:€€€€€€€€€*
T0	
№
Blinear/linear_model/cigarette_use/weights/part_0/Initializer/zerosConst*
_output_shapes

:*
dtype0*C
_class9
75loc:@linear/linear_model/cigarette_use/weights/part_0*
valueB*    
й
0linear/linear_model/cigarette_use/weights/part_0
VariableV2*
shared_name *C
_class9
75loc:@linear/linear_model/cigarette_use/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:
ќ
7linear/linear_model/cigarette_use/weights/part_0/AssignAssign0linear/linear_model/cigarette_use/weights/part_0Blinear/linear_model/cigarette_use/weights/part_0/Initializer/zeros*
use_locking(*
T0*C
_class9
75loc:@linear/linear_model/cigarette_use/weights/part_0*
validate_shape(*
_output_shapes

:
б
5linear/linear_model/cigarette_use/weights/part_0/readIdentity0linear/linear_model/cigarette_use/weights/part_0*C
_class9
75loc:@linear/linear_model/cigarette_use/weights/part_0*
_output_shapes

:*
T0
Д
:linear/linear_model/cigarette_use/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
Г
9linear/linear_model/cigarette_use/weighted_sum/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:
Щ
4linear/linear_model/cigarette_use/weighted_sum/SliceSlice1linear/linear_model/cigarette_use/SparseReshape:1:linear/linear_model/cigarette_use/weighted_sum/Slice/begin9linear/linear_model/cigarette_use/weighted_sum/Slice/size*
_output_shapes
:*
T0	*
Index0
~
4linear/linear_model/cigarette_use/weighted_sum/ConstConst*
valueB: *
_output_shapes
:*
dtype0
е
3linear/linear_model/cigarette_use/weighted_sum/ProdProd4linear/linear_model/cigarette_use/weighted_sum/Slice4linear/linear_model/cigarette_use/weighted_sum/Const*

Tidx0*
	keep_dims( *
T0	*
_output_shapes
: 

=linear/linear_model/cigarette_use/weighted_sum/Gather/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
А
5linear/linear_model/cigarette_use/weighted_sum/GatherGather1linear/linear_model/cigarette_use/SparseReshape:1=linear/linear_model/cigarette_use/weighted_sum/Gather/indices*
_output_shapes
: *
Tparams0	*
validate_indices(*
Tindices0
г
5linear/linear_model/cigarette_use/weighted_sum/Cast/xPack3linear/linear_model/cigarette_use/weighted_sum/Prod5linear/linear_model/cigarette_use/weighted_sum/Gather*
T0	*

axis *
N*
_output_shapes
:
Ч
<linear/linear_model/cigarette_use/weighted_sum/SparseReshapeSparseReshape/linear/linear_model/cigarette_use/SparseReshape1linear/linear_model/cigarette_use/SparseReshape:15linear/linear_model/cigarette_use/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
є
Elinear/linear_model/cigarette_use/weighted_sum/SparseReshape/IdentityIdentity8linear/linear_model/cigarette_use/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	

=linear/linear_model/cigarette_use/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
€
;linear/linear_model/cigarette_use/weighted_sum/GreaterEqualGreaterEqualElinear/linear_model/cigarette_use/weighted_sum/SparseReshape/Identity=linear/linear_model/cigarette_use/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
£
4linear/linear_model/cigarette_use/weighted_sum/WhereWhere;linear/linear_model/cigarette_use/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
П
<linear/linear_model/cigarette_use/weighted_sum/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
с
6linear/linear_model/cigarette_use/weighted_sum/ReshapeReshape4linear/linear_model/cigarette_use/weighted_sum/Where<linear/linear_model/cigarette_use/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:€€€€€€€€€*
Tshape0
Ч
7linear/linear_model/cigarette_use/weighted_sum/Gather_1Gather<linear/linear_model/cigarette_use/weighted_sum/SparseReshape6linear/linear_model/cigarette_use/weighted_sum/Reshape*'
_output_shapes
:€€€€€€€€€*
Tparams0	*
validate_indices(*
Tindices0	
Ь
7linear/linear_model/cigarette_use/weighted_sum/Gather_2GatherElinear/linear_model/cigarette_use/weighted_sum/SparseReshape/Identity6linear/linear_model/cigarette_use/weighted_sum/Reshape*
Tindices0	*
Tparams0	*
validate_indices(*#
_output_shapes
:€€€€€€€€€
®
7linear/linear_model/cigarette_use/weighted_sum/IdentityIdentity>linear/linear_model/cigarette_use/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
К
Hlinear/linear_model/cigarette_use/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Ѕ
Vlinear/linear_model/cigarette_use/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows7linear/linear_model/cigarette_use/weighted_sum/Gather_17linear/linear_model/cigarette_use/weighted_sum/Gather_27linear/linear_model/cigarette_use/weighted_sum/IdentityHlinear/linear_model/cigarette_use/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
Ђ
Zlinear/linear_model/cigarette_use/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
≠
\linear/linear_model/cigarette_use/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
≠
\linear/linear_model/cigarette_use/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
у
Tlinear/linear_model/cigarette_use/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceVlinear/linear_model/cigarette_use/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsZlinear/linear_model/cigarette_use/weighted_sum/embedding_lookup_sparse/strided_slice/stack\linear/linear_model/cigarette_use/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1\linear/linear_model/cigarette_use/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
shrink_axis_mask
ж
Klinear/linear_model/cigarette_use/weighted_sum/embedding_lookup_sparse/CastCastTlinear/linear_model/cigarette_use/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:€€€€€€€€€*

DstT0
э
Mlinear/linear_model/cigarette_use/weighted_sum/embedding_lookup_sparse/UniqueUniqueXlinear/linear_model/cigarette_use/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0	*
out_idx0
М
Wlinear/linear_model/cigarette_use/weighted_sum/embedding_lookup_sparse/embedding_lookupGather5linear/linear_model/cigarette_use/weights/part_0/readMlinear/linear_model/cigarette_use/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*
Tparams0*
validate_indices(*C
_class9
75loc:@linear/linear_model/cigarette_use/weights/part_0*'
_output_shapes
:€€€€€€€€€
П
Flinear/linear_model/cigarette_use/weighted_sum/embedding_lookup_sparseSparseSegmentSumWlinear/linear_model/cigarette_use/weighted_sum/embedding_lookup_sparse/embedding_lookupOlinear/linear_model/cigarette_use/weighted_sum/embedding_lookup_sparse/Unique:1Klinear/linear_model/cigarette_use/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:€€€€€€€€€*
T0*

Tidx0
П
>linear/linear_model/cigarette_use/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   
Э
8linear/linear_model/cigarette_use/weighted_sum/Reshape_1ReshapeXlinear/linear_model/cigarette_use/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2>linear/linear_model/cigarette_use/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

Ї
4linear/linear_model/cigarette_use/weighted_sum/ShapeShapeFlinear/linear_model/cigarette_use/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:*
out_type0
М
Blinear/linear_model/cigarette_use/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
О
Dlinear/linear_model/cigarette_use/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
О
Dlinear/linear_model/cigarette_use/weighted_sum/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
д
<linear/linear_model/cigarette_use/weighted_sum/strided_sliceStridedSlice4linear/linear_model/cigarette_use/weighted_sum/ShapeBlinear/linear_model/cigarette_use/weighted_sum/strided_slice/stackDlinear/linear_model/cigarette_use/weighted_sum/strided_slice/stack_1Dlinear/linear_model/cigarette_use/weighted_sum/strided_slice/stack_2*
T0*
Index0*
new_axis_mask *
_output_shapes
: *
shrink_axis_mask*

begin_mask *
ellipsis_mask *
end_mask 
x
6linear/linear_model/cigarette_use/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
м
4linear/linear_model/cigarette_use/weighted_sum/stackPack6linear/linear_model/cigarette_use/weighted_sum/stack/0<linear/linear_model/cigarette_use/weighted_sum/strided_slice*
T0*

axis *
N*
_output_shapes
:
ш
3linear/linear_model/cigarette_use/weighted_sum/TileTile8linear/linear_model/cigarette_use/weighted_sum/Reshape_14linear/linear_model/cigarette_use/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
*

Tmultiples0
ј
9linear/linear_model/cigarette_use/weighted_sum/zeros_like	ZerosLikeFlinear/linear_model/cigarette_use/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
Ґ
.linear/linear_model/cigarette_use/weighted_sumSelect3linear/linear_model/cigarette_use/weighted_sum/Tile9linear/linear_model/cigarette_use/weighted_sum/zeros_likeFlinear/linear_model/cigarette_use/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
§
5linear/linear_model/cigarette_use/weighted_sum/Cast_1Cast1linear/linear_model/cigarette_use/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
Ж
<linear/linear_model/cigarette_use/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Е
;linear/linear_model/cigarette_use/weighted_sum/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
£
6linear/linear_model/cigarette_use/weighted_sum/Slice_1Slice5linear/linear_model/cigarette_use/weighted_sum/Cast_1<linear/linear_model/cigarette_use/weighted_sum/Slice_1/begin;linear/linear_model/cigarette_use/weighted_sum/Slice_1/size*
T0*
Index0*
_output_shapes
:
§
6linear/linear_model/cigarette_use/weighted_sum/Shape_1Shape.linear/linear_model/cigarette_use/weighted_sum*
out_type0*
_output_shapes
:*
T0
Ж
<linear/linear_model/cigarette_use/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
О
;linear/linear_model/cigarette_use/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
§
6linear/linear_model/cigarette_use/weighted_sum/Slice_2Slice6linear/linear_model/cigarette_use/weighted_sum/Shape_1<linear/linear_model/cigarette_use/weighted_sum/Slice_2/begin;linear/linear_model/cigarette_use/weighted_sum/Slice_2/size*
T0*
Index0*
_output_shapes
:
|
:linear/linear_model/cigarette_use/weighted_sum/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
І
5linear/linear_model/cigarette_use/weighted_sum/concatConcatV26linear/linear_model/cigarette_use/weighted_sum/Slice_16linear/linear_model/cigarette_use/weighted_sum/Slice_2:linear/linear_model/cigarette_use/weighted_sum/concat/axis*
_output_shapes
:*
N*
T0*

Tidx0
к
8linear/linear_model/cigarette_use/weighted_sum/Reshape_2Reshape.linear/linear_model/cigarette_use/weighted_sum5linear/linear_model/cigarette_use/weighted_sum/concat*
T0*'
_output_shapes
:€€€€€€€€€*
Tshape0
}
1linear/linear_model/is_male/to_sparse_input/ShapeShapeExpandDims_2*
T0*
_output_shapes
:*
out_type0
Я
0linear/linear_model/is_male/to_sparse_input/CastCast1linear/linear_model/is_male/to_sparse_input/Shape*

SrcT0*
_output_shapes
:*

DstT0	
u
4linear/linear_model/is_male/to_sparse_input/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB B 
ґ
4linear/linear_model/is_male/to_sparse_input/NotEqualNotEqualExpandDims_24linear/linear_model/is_male/to_sparse_input/Cast_1/x*
T0*'
_output_shapes
:€€€€€€€€€
Щ
1linear/linear_model/is_male/to_sparse_input/WhereWhere4linear/linear_model/is_male/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
М
9linear/linear_model/is_male/to_sparse_input/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
√
3linear/linear_model/is_male/to_sparse_input/ReshapeReshapeExpandDims_29linear/linear_model/is_male/to_sparse_input/Reshape/shape*#
_output_shapes
:€€€€€€€€€*
Tshape0*
T0
Р
?linear/linear_model/is_male/to_sparse_input/strided_slice/stackConst*
valueB"       *
dtype0*
_output_shapes
:
Т
Alinear/linear_model/is_male/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
Т
Alinear/linear_model/is_male/to_sparse_input/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
в
9linear/linear_model/is_male/to_sparse_input/strided_sliceStridedSlice1linear/linear_model/is_male/to_sparse_input/Where?linear/linear_model/is_male/to_sparse_input/strided_slice/stackAlinear/linear_model/is_male/to_sparse_input/strided_slice/stack_1Alinear/linear_model/is_male/to_sparse_input/strided_slice/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0	*
Index0*#
_output_shapes
:€€€€€€€€€*
shrink_axis_mask
Т
Alinear/linear_model/is_male/to_sparse_input/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB"        
Ф
Clinear/linear_model/is_male/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
Ф
Clinear/linear_model/is_male/to_sparse_input/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
о
;linear/linear_model/is_male/to_sparse_input/strided_slice_1StridedSlice1linear/linear_model/is_male/to_sparse_input/WhereAlinear/linear_model/is_male/to_sparse_input/strided_slice_1/stackClinear/linear_model/is_male/to_sparse_input/strided_slice_1/stack_1Clinear/linear_model/is_male/to_sparse_input/strided_slice_1/stack_2*
shrink_axis_mask *'
_output_shapes
:€€€€€€€€€*
Index0*
T0	*
end_mask*
new_axis_mask *
ellipsis_mask *

begin_mask
©
3linear/linear_model/is_male/to_sparse_input/unstackUnpack0linear/linear_model/is_male/to_sparse_input/Cast*
T0	*	
num*

axis *
_output_shapes
: : 
™
1linear/linear_model/is_male/to_sparse_input/stackPack5linear/linear_model/is_male/to_sparse_input/unstack:1*
T0	*

axis *
N*
_output_shapes
:
Ў
/linear/linear_model/is_male/to_sparse_input/MulMul;linear/linear_model/is_male/to_sparse_input/strided_slice_11linear/linear_model/is_male/to_sparse_input/stack*
T0	*'
_output_shapes
:€€€€€€€€€
Л
Alinear/linear_model/is_male/to_sparse_input/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
х
/linear/linear_model/is_male/to_sparse_input/SumSum/linear/linear_model/is_male/to_sparse_input/MulAlinear/linear_model/is_male/to_sparse_input/Sum/reduction_indices*#
_output_shapes
:€€€€€€€€€*
T0	*

Tidx0*
	keep_dims( 
–
/linear/linear_model/is_male/to_sparse_input/AddAdd9linear/linear_model/is_male/to_sparse_input/strided_slice/linear/linear_model/is_male/to_sparse_input/Sum*
T0	*#
_output_shapes
:€€€€€€€€€
ю
2linear/linear_model/is_male/to_sparse_input/GatherGather3linear/linear_model/is_male/to_sparse_input/Reshape/linear/linear_model/is_male/to_sparse_input/Add*
Tindices0	*
Tparams0*
validate_indices(*#
_output_shapes
:€€€€€€€€€
Д
0linear/linear_model/is_male/is_male_lookup/ConstConst* 
valueBBTrueBFalse*
_output_shapes
:*
dtype0
q
/linear/linear_model/is_male/is_male_lookup/SizeConst*
dtype0*
_output_shapes
: *
value	B :
x
6linear/linear_model/is_male/is_male_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
x
6linear/linear_model/is_male/is_male_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
В
0linear/linear_model/is_male/is_male_lookup/rangeRange6linear/linear_model/is_male/is_male_lookup/range/start/linear/linear_model/is_male/is_male_lookup/Size6linear/linear_model/is_male/is_male_lookup/range/delta*

Tidx0*
_output_shapes
:
†
2linear/linear_model/is_male/is_male_lookup/ToInt64Cast0linear/linear_model/is_male/is_male_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
Ѕ
5linear/linear_model/is_male/is_male_lookup/hash_tableHashTableV2*
_output_shapes
: *
value_dtype0	*
	container *
	key_dtype0*
use_node_name_sharing( *
shared_name 
Ж
;linear/linear_model/is_male/is_male_lookup/hash_table/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 R
€€€€€€€€€
К
@linear/linear_model/is_male/is_male_lookup/hash_table/table_initInitializeTableV25linear/linear_model/is_male/is_male_lookup/hash_table0linear/linear_model/is_male/is_male_lookup/Const2linear/linear_model/is_male/is_male_lookup/ToInt64*

Tkey0*

Tval0	
¶
-linear/linear_model/is_male/hash_table_LookupLookupTableFindV25linear/linear_model/is_male/is_male_lookup/hash_table2linear/linear_model/is_male/to_sparse_input/Gather;linear/linear_model/is_male/is_male_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:€€€€€€€€€*	
Tin0
Ф
&linear/linear_model/is_male/Shape/CastCast0linear/linear_model/is_male/to_sparse_input/Cast*
_output_shapes
:*

DstT0*

SrcT0	
y
/linear/linear_model/is_male/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
{
1linear/linear_model/is_male/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
{
1linear/linear_model/is_male/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
К
)linear/linear_model/is_male/strided_sliceStridedSlice&linear/linear_model/is_male/Shape/Cast/linear/linear_model/is_male/strided_slice/stack1linear/linear_model/is_male/strided_slice/stack_11linear/linear_model/is_male/strided_slice/stack_2*
_output_shapes
: *
end_mask *
new_axis_mask *

begin_mask *
ellipsis_mask *
shrink_axis_mask*
Index0*
T0
o
$linear/linear_model/is_male/Cast/x/1Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€
µ
"linear/linear_model/is_male/Cast/xPack)linear/linear_model/is_male/strided_slice$linear/linear_model/is_male/Cast/x/1*

axis *
_output_shapes
:*
T0*
N
А
 linear/linear_model/is_male/CastCast"linear/linear_model/is_male/Cast/x*

SrcT0*
_output_shapes
:*

DstT0	
р
)linear/linear_model/is_male/SparseReshapeSparseReshape1linear/linear_model/is_male/to_sparse_input/Where0linear/linear_model/is_male/to_sparse_input/Cast linear/linear_model/is_male/Cast*-
_output_shapes
:€€€€€€€€€:
Ы
2linear/linear_model/is_male/SparseReshape/IdentityIdentity-linear/linear_model/is_male/hash_table_Lookup*
T0	*#
_output_shapes
:€€€€€€€€€
–
<linear/linear_model/is_male/weights/part_0/Initializer/zerosConst*
_output_shapes

:*
dtype0*=
_class3
1/loc:@linear/linear_model/is_male/weights/part_0*
valueB*    
Ё
*linear/linear_model/is_male/weights/part_0
VariableV2*
	container *
dtype0*=
_class3
1/loc:@linear/linear_model/is_male/weights/part_0*
shared_name *
_output_shapes

:*
shape
:
ґ
1linear/linear_model/is_male/weights/part_0/AssignAssign*linear/linear_model/is_male/weights/part_0<linear/linear_model/is_male/weights/part_0/Initializer/zeros*=
_class3
1/loc:@linear/linear_model/is_male/weights/part_0*
_output_shapes

:*
T0*
validate_shape(*
use_locking(
ѕ
/linear/linear_model/is_male/weights/part_0/readIdentity*linear/linear_model/is_male/weights/part_0*=
_class3
1/loc:@linear/linear_model/is_male/weights/part_0*
_output_shapes

:*
T0
~
4linear/linear_model/is_male/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
}
3linear/linear_model/is_male/weighted_sum/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
Б
.linear/linear_model/is_male/weighted_sum/SliceSlice+linear/linear_model/is_male/SparseReshape:14linear/linear_model/is_male/weighted_sum/Slice/begin3linear/linear_model/is_male/weighted_sum/Slice/size*
T0	*
Index0*
_output_shapes
:
x
.linear/linear_model/is_male/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
”
-linear/linear_model/is_male/weighted_sum/ProdProd.linear/linear_model/is_male/weighted_sum/Slice.linear/linear_model/is_male/weighted_sum/Const*
_output_shapes
: *
T0	*

Tidx0*
	keep_dims( 
y
7linear/linear_model/is_male/weighted_sum/Gather/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
о
/linear/linear_model/is_male/weighted_sum/GatherGather+linear/linear_model/is_male/SparseReshape:17linear/linear_model/is_male/weighted_sum/Gather/indices*
_output_shapes
: *
Tparams0	*
validate_indices(*
Tindices0
—
/linear/linear_model/is_male/weighted_sum/Cast/xPack-linear/linear_model/is_male/weighted_sum/Prod/linear/linear_model/is_male/weighted_sum/Gather*
N*
T0	*
_output_shapes
:*

axis 
€
6linear/linear_model/is_male/weighted_sum/SparseReshapeSparseReshape)linear/linear_model/is_male/SparseReshape+linear/linear_model/is_male/SparseReshape:1/linear/linear_model/is_male/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
≠
?linear/linear_model/is_male/weighted_sum/SparseReshape/IdentityIdentity2linear/linear_model/is_male/SparseReshape/Identity*
T0	*#
_output_shapes
:€€€€€€€€€
y
7linear/linear_model/is_male/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
н
5linear/linear_model/is_male/weighted_sum/GreaterEqualGreaterEqual?linear/linear_model/is_male/weighted_sum/SparseReshape/Identity7linear/linear_model/is_male/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
Ч
.linear/linear_model/is_male/weighted_sum/WhereWhere5linear/linear_model/is_male/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Й
6linear/linear_model/is_male/weighted_sum/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
я
0linear/linear_model/is_male/weighted_sum/ReshapeReshape.linear/linear_model/is_male/weighted_sum/Where6linear/linear_model/is_male/weighted_sum/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0	
Е
1linear/linear_model/is_male/weighted_sum/Gather_1Gather6linear/linear_model/is_male/weighted_sum/SparseReshape0linear/linear_model/is_male/weighted_sum/Reshape*
Tindices0	*
Tparams0	*
validate_indices(*'
_output_shapes
:€€€€€€€€€
К
1linear/linear_model/is_male/weighted_sum/Gather_2Gather?linear/linear_model/is_male/weighted_sum/SparseReshape/Identity0linear/linear_model/is_male/weighted_sum/Reshape*#
_output_shapes
:€€€€€€€€€*
Tparams0	*
validate_indices(*
Tindices0	
Ь
1linear/linear_model/is_male/weighted_sum/IdentityIdentity8linear/linear_model/is_male/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
Д
Blinear/linear_model/is_male/weighted_sum/SparseFillEmptyRows/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R 
£
Plinear/linear_model/is_male/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows1linear/linear_model/is_male/weighted_sum/Gather_11linear/linear_model/is_male/weighted_sum/Gather_21linear/linear_model/is_male/weighted_sum/IdentityBlinear/linear_model/is_male/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
•
Tlinear/linear_model/is_male/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
І
Vlinear/linear_model/is_male/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
І
Vlinear/linear_model/is_male/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0
’
Nlinear/linear_model/is_male/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicePlinear/linear_model/is_male/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsTlinear/linear_model/is_male/weighted_sum/embedding_lookup_sparse/strided_slice/stackVlinear/linear_model/is_male/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Vlinear/linear_model/is_male/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*

begin_mask*
ellipsis_mask *#
_output_shapes
:€€€€€€€€€*
end_mask*
T0	*
Index0*
shrink_axis_mask*
new_axis_mask 
Џ
Elinear/linear_model/is_male/weighted_sum/embedding_lookup_sparse/CastCastNlinear/linear_model/is_male/weighted_sum/embedding_lookup_sparse/strided_slice*#
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0	
с
Glinear/linear_model/is_male/weighted_sum/embedding_lookup_sparse/UniqueUniqueRlinear/linear_model/is_male/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0	*
out_idx0
ф
Qlinear/linear_model/is_male/weighted_sum/embedding_lookup_sparse/embedding_lookupGather/linear/linear_model/is_male/weights/part_0/readGlinear/linear_model/is_male/weighted_sum/embedding_lookup_sparse/Unique*=
_class3
1/loc:@linear/linear_model/is_male/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tparams0*
validate_indices(*
Tindices0	
ч
@linear/linear_model/is_male/weighted_sum/embedding_lookup_sparseSparseSegmentSumQlinear/linear_model/is_male/weighted_sum/embedding_lookup_sparse/embedding_lookupIlinear/linear_model/is_male/weighted_sum/embedding_lookup_sparse/Unique:1Elinear/linear_model/is_male/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*
T0*'
_output_shapes
:€€€€€€€€€
Й
8linear/linear_model/is_male/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   
Л
2linear/linear_model/is_male/weighted_sum/Reshape_1ReshapeRlinear/linear_model/is_male/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:28linear/linear_model/is_male/weighted_sum/Reshape_1/shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0

Ѓ
.linear/linear_model/is_male/weighted_sum/ShapeShape@linear/linear_model/is_male/weighted_sum/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
Ж
<linear/linear_model/is_male/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
И
>linear/linear_model/is_male/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
И
>linear/linear_model/is_male/weighted_sum/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
∆
6linear/linear_model/is_male/weighted_sum/strided_sliceStridedSlice.linear/linear_model/is_male/weighted_sum/Shape<linear/linear_model/is_male/weighted_sum/strided_slice/stack>linear/linear_model/is_male/weighted_sum/strided_slice/stack_1>linear/linear_model/is_male/weighted_sum/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
_output_shapes
: *
end_mask *
Index0*
T0*
shrink_axis_mask*
new_axis_mask 
r
0linear/linear_model/is_male/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
Џ
.linear/linear_model/is_male/weighted_sum/stackPack0linear/linear_model/is_male/weighted_sum/stack/06linear/linear_model/is_male/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:*

axis 
ж
-linear/linear_model/is_male/weighted_sum/TileTile2linear/linear_model/is_male/weighted_sum/Reshape_1.linear/linear_model/is_male/weighted_sum/stack*

Tmultiples0*
T0
*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
і
3linear/linear_model/is_male/weighted_sum/zeros_like	ZerosLike@linear/linear_model/is_male/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
К
(linear/linear_model/is_male/weighted_sumSelect-linear/linear_model/is_male/weighted_sum/Tile3linear/linear_model/is_male/weighted_sum/zeros_like@linear/linear_model/is_male/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
Ш
/linear/linear_model/is_male/weighted_sum/Cast_1Cast+linear/linear_model/is_male/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
А
6linear/linear_model/is_male/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:

5linear/linear_model/is_male/weighted_sum/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
Л
0linear/linear_model/is_male/weighted_sum/Slice_1Slice/linear/linear_model/is_male/weighted_sum/Cast_16linear/linear_model/is_male/weighted_sum/Slice_1/begin5linear/linear_model/is_male/weighted_sum/Slice_1/size*
T0*
Index0*
_output_shapes
:
Ш
0linear/linear_model/is_male/weighted_sum/Shape_1Shape(linear/linear_model/is_male/weighted_sum*
T0*
out_type0*
_output_shapes
:
А
6linear/linear_model/is_male/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
И
5linear/linear_model/is_male/weighted_sum/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
М
0linear/linear_model/is_male/weighted_sum/Slice_2Slice0linear/linear_model/is_male/weighted_sum/Shape_16linear/linear_model/is_male/weighted_sum/Slice_2/begin5linear/linear_model/is_male/weighted_sum/Slice_2/size*
_output_shapes
:*
T0*
Index0
v
4linear/linear_model/is_male/weighted_sum/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
П
/linear/linear_model/is_male/weighted_sum/concatConcatV20linear/linear_model/is_male/weighted_sum/Slice_10linear/linear_model/is_male/weighted_sum/Slice_24linear/linear_model/is_male/weighted_sum/concat/axis*
_output_shapes
:*
N*
T0*

Tidx0
Ў
2linear/linear_model/is_male/weighted_sum/Reshape_2Reshape(linear/linear_model/is_male/weighted_sum/linear/linear_model/is_male/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
∆
Alinear/linear_model/mother_age_bucketized_X_mother_race/Bucketize	BucketizeExpandDims_7*
T0*6

boundaries(
&"$  РA  ∞A  аA   B  B   B  (B  4B  HB*'
_output_shapes
:€€€€€€€€€
Њ
=linear/linear_model/mother_age_bucketized_X_mother_race/ShapeShapeAlinear/linear_model/mother_age_bucketized_X_mother_race/Bucketize*
_output_shapes
:*
out_type0*
T0
Х
Klinear/linear_model/mother_age_bucketized_X_mother_race/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ч
Mlinear/linear_model/mother_age_bucketized_X_mother_race/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Ч
Mlinear/linear_model/mother_age_bucketized_X_mother_race/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
С
Elinear/linear_model/mother_age_bucketized_X_mother_race/strided_sliceStridedSlice=linear/linear_model/mother_age_bucketized_X_mother_race/ShapeKlinear/linear_model/mother_age_bucketized_X_mother_race/strided_slice/stackMlinear/linear_model/mother_age_bucketized_X_mother_race/strided_slice/stack_1Mlinear/linear_model/mother_age_bucketized_X_mother_race/strided_slice/stack_2*
end_mask *
ellipsis_mask *

begin_mask *
shrink_axis_mask*
_output_shapes
: *
new_axis_mask *
Index0*
T0
Е
Clinear/linear_model/mother_age_bucketized_X_mother_race/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
Е
Clinear/linear_model/mother_age_bucketized_X_mother_race/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
»
=linear/linear_model/mother_age_bucketized_X_mother_race/rangeRangeClinear/linear_model/mother_age_bucketized_X_mother_race/range/startElinear/linear_model/mother_age_bucketized_X_mother_race/strided_sliceClinear/linear_model/mother_age_bucketized_X_mother_race/range/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0
И
Flinear/linear_model/mother_age_bucketized_X_mother_race/ExpandDims/dimConst*
value	B :*
_output_shapes
: *
dtype0
Х
Blinear/linear_model/mother_age_bucketized_X_mother_race/ExpandDims
ExpandDims=linear/linear_model/mother_age_bucketized_X_mother_race/rangeFlinear/linear_model/mother_age_bucketized_X_mother_race/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:€€€€€€€€€
Ч
Flinear/linear_model/mother_age_bucketized_X_mother_race/Tile/multiplesConst*
valueB"      *
_output_shapes
:*
dtype0
Ф
<linear/linear_model/mother_age_bucketized_X_mother_race/TileTileBlinear/linear_model/mother_age_bucketized_X_mother_race/ExpandDimsFlinear/linear_model/mother_age_bucketized_X_mother_race/Tile/multiples*'
_output_shapes
:€€€€€€€€€*
T0*

Tmultiples0
Ш
Elinear/linear_model/mother_age_bucketized_X_mother_race/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Л
?linear/linear_model/mother_age_bucketized_X_mother_race/ReshapeReshape<linear/linear_model/mother_age_bucketized_X_mother_race/TileElinear/linear_model/mother_age_bucketized_X_mother_race/Reshape/shape*
T0*#
_output_shapes
:€€€€€€€€€*
Tshape0
З
Elinear/linear_model/mother_age_bucketized_X_mother_race/range_1/startConst*
dtype0*
_output_shapes
: *
value	B : 
З
Elinear/linear_model/mother_age_bucketized_X_mother_race/range_1/limitConst*
dtype0*
_output_shapes
: *
value	B :
З
Elinear/linear_model/mother_age_bucketized_X_mother_race/range_1/deltaConst*
value	B :*
_output_shapes
: *
dtype0
≈
?linear/linear_model/mother_age_bucketized_X_mother_race/range_1RangeElinear/linear_model/mother_age_bucketized_X_mother_race/range_1/startElinear/linear_model/mother_age_bucketized_X_mother_race/range_1/limitElinear/linear_model/mother_age_bucketized_X_mother_race/range_1/delta*
_output_shapes
:*

Tidx0
—
Hlinear/linear_model/mother_age_bucketized_X_mother_race/Tile_1/multiplesPackElinear/linear_model/mother_age_bucketized_X_mother_race/strided_slice*
_output_shapes
:*
N*

axis *
T0
С
>linear/linear_model/mother_age_bucketized_X_mother_race/Tile_1Tile?linear/linear_model/mother_age_bucketized_X_mother_race/range_1Hlinear/linear_model/mother_age_bucketized_X_mother_race/Tile_1/multiples*

Tmultiples0*
T0*#
_output_shapes
:€€€€€€€€€
Ъ
Glinear/linear_model/mother_age_bucketized_X_mother_race/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
Ф
Alinear/linear_model/mother_age_bucketized_X_mother_race/Reshape_1ReshapeAlinear/linear_model/mother_age_bucketized_X_mother_race/BucketizeGlinear/linear_model/mother_age_bucketized_X_mother_race/Reshape_1/shape*#
_output_shapes
:€€€€€€€€€*
Tshape0*
T0

=linear/linear_model/mother_age_bucketized_X_mother_race/mul/xConst*
_output_shapes
: *
dtype0*
value	B :

п
;linear/linear_model/mother_age_bucketized_X_mother_race/mulMul=linear/linear_model/mother_age_bucketized_X_mother_race/mul/x>linear/linear_model/mother_age_bucketized_X_mother_race/Tile_1*
T0*#
_output_shapes
:€€€€€€€€€
р
;linear/linear_model/mother_age_bucketized_X_mother_race/addAddAlinear/linear_model/mother_age_bucketized_X_mother_race/Reshape_1;linear/linear_model/mother_age_bucketized_X_mother_race/mul*#
_output_shapes
:€€€€€€€€€*
T0
Н
=linear/linear_model/mother_age_bucketized_X_mother_race/stackPack?linear/linear_model/mother_age_bucketized_X_mother_race/Reshape>linear/linear_model/mother_age_bucketized_X_mother_race/Tile_1*
N*
T0*'
_output_shapes
:€€€€€€€€€*

axis 
Ѓ
Flinear/linear_model/mother_age_bucketized_X_mother_race/transpose/RankRank=linear/linear_model/mother_age_bucketized_X_mother_race/stack*
_output_shapes
: *
T0
Й
Glinear/linear_model/mother_age_bucketized_X_mother_race/transpose/sub/yConst*
value	B :*
_output_shapes
: *
dtype0
ю
Elinear/linear_model/mother_age_bucketized_X_mother_race/transpose/subSubFlinear/linear_model/mother_age_bucketized_X_mother_race/transpose/RankGlinear/linear_model/mother_age_bucketized_X_mother_race/transpose/sub/y*
_output_shapes
: *
T0
П
Mlinear/linear_model/mother_age_bucketized_X_mother_race/transpose/Range/startConst*
dtype0*
_output_shapes
: *
value	B : 
П
Mlinear/linear_model/mother_age_bucketized_X_mother_race/transpose/Range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
ё
Glinear/linear_model/mother_age_bucketized_X_mother_race/transpose/RangeRangeMlinear/linear_model/mother_age_bucketized_X_mother_race/transpose/Range/startFlinear/linear_model/mother_age_bucketized_X_mother_race/transpose/RankMlinear/linear_model/mother_age_bucketized_X_mother_race/transpose/Range/delta*
_output_shapes
:*

Tidx0
Г
Glinear/linear_model/mother_age_bucketized_X_mother_race/transpose/sub_1SubElinear/linear_model/mother_age_bucketized_X_mother_race/transpose/subGlinear/linear_model/mother_age_bucketized_X_mother_race/transpose/Range*
T0*
_output_shapes
:
Х
Alinear/linear_model/mother_age_bucketized_X_mother_race/transpose	Transpose=linear/linear_model/mother_age_bucketized_X_mother_race/stackGlinear/linear_model/mother_age_bucketized_X_mother_race/transpose/sub_1*
Tperm0*'
_output_shapes
:€€€€€€€€€*
T0
Ћ
?linear/linear_model/mother_age_bucketized_X_mother_race/ToInt64CastAlinear/linear_model/mother_age_bucketized_X_mother_race/transpose*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0	
Г
Alinear/linear_model/mother_age_bucketized_X_mother_race/stack_1/1Const*
value	B :*
dtype0*
_output_shapes
: 
Л
?linear/linear_model/mother_age_bucketized_X_mother_race/stack_1PackElinear/linear_model/mother_age_bucketized_X_mother_race/strided_sliceAlinear/linear_model/mother_age_bucketized_X_mother_race/stack_1/1*
T0*

axis *
N*
_output_shapes
:
Њ
Alinear/linear_model/mother_age_bucketized_X_mother_race/ToInt64_1Cast?linear/linear_model/mother_age_bucketized_X_mother_race/stack_1*
_output_shapes
:*

DstT0	*

SrcT0
Щ
Mlinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/ShapeShapeExpandDims_3*
T0*
_output_shapes
:*
out_type0
„
Llinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/CastCastMlinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/Shape*
_output_shapes
:*

DstT0	*

SrcT0
С
Plinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/Cast_1/xConst*
dtype0*
_output_shapes
: *
valueB B 
о
Plinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/NotEqualNotEqualExpandDims_3Plinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/Cast_1/x*
T0*'
_output_shapes
:€€€€€€€€€
—
Mlinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/WhereWherePlinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
®
Ulinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
ы
Olinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/ReshapeReshapeExpandDims_3Ulinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/Reshape/shape*
T0*#
_output_shapes
:€€€€€€€€€*
Tshape0
ђ
[linear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/strided_slice/stackConst*
valueB"       *
dtype0*
_output_shapes
:
Ѓ
]linear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
Ѓ
]linear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
о
Ulinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/strided_sliceStridedSliceMlinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/Where[linear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/strided_slice/stack]linear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/strided_slice/stack_1]linear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/strided_slice/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
shrink_axis_mask
Ѓ
]linear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/strided_slice_1/stackConst*
valueB"        *
dtype0*
_output_shapes
:
∞
_linear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
∞
_linear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
ъ
Wlinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/strided_slice_1StridedSliceMlinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/Where]linear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/strided_slice_1/stack_linear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/strided_slice_1/stack_1_linear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/strided_slice_1/stack_2*
ellipsis_mask *

begin_mask*'
_output_shapes
:€€€€€€€€€*
end_mask*
Index0*
T0	*
shrink_axis_mask *
new_axis_mask 
б
Olinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/unstackUnpackLlinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/Cast*
T0	*	
num*
_output_shapes
: : *

axis 
в
Mlinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/stackPackQlinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/unstack:1*
T0	*

axis *
N*
_output_shapes
:
ђ
Klinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/MulMulWlinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/strided_slice_1Mlinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/stack*
T0	*'
_output_shapes
:€€€€€€€€€
І
]linear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
…
Klinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/SumSumKlinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/Mul]linear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/Sum/reduction_indices*

Tidx0*
	keep_dims( *
T0	*#
_output_shapes
:€€€€€€€€€
§
Klinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/AddAddUlinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/strided_sliceKlinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
“
Nlinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/GatherGatherOlinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/ReshapeKlinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/Add*#
_output_shapes
:€€€€€€€€€*
Tparams0*
validate_indices(*
Tindices0	
У
Plinear/linear_model/mother_age_bucketized_X_mother_race/mother_race_lookup/ConstConst*
_output_shapes
:*
dtype0*О
valueДBБBWhiteBBlackBAmerican IndianBChineseBJapaneseBHawaiianBFilipinoBUnknownBAsian IndianBKoreanBSamaonB
Vietnamese
С
Olinear/linear_model/mother_age_bucketized_X_mother_race/mother_race_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
Ш
Vlinear/linear_model/mother_age_bucketized_X_mother_race/mother_race_lookup/range/startConst*
value	B : *
_output_shapes
: *
dtype0
Ш
Vlinear/linear_model/mother_age_bucketized_X_mother_race/mother_race_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
В
Plinear/linear_model/mother_age_bucketized_X_mother_race/mother_race_lookup/rangeRangeVlinear/linear_model/mother_age_bucketized_X_mother_race/mother_race_lookup/range/startOlinear/linear_model/mother_age_bucketized_X_mother_race/mother_race_lookup/SizeVlinear/linear_model/mother_age_bucketized_X_mother_race/mother_race_lookup/range/delta*
_output_shapes
:*

Tidx0
а
Rlinear/linear_model/mother_age_bucketized_X_mother_race/mother_race_lookup/ToInt64CastPlinear/linear_model/mother_age_bucketized_X_mother_race/mother_race_lookup/range*
_output_shapes
:*

DstT0	*

SrcT0
б
Ulinear/linear_model/mother_age_bucketized_X_mother_race/mother_race_lookup/hash_tableHashTableV2*
shared_name *
use_node_name_sharing( *
	key_dtype0*
	container *
value_dtype0	*
_output_shapes
: 
¶
[linear/linear_model/mother_age_bucketized_X_mother_race/mother_race_lookup/hash_table/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 R
€€€€€€€€€
К
`linear/linear_model/mother_age_bucketized_X_mother_race/mother_race_lookup/hash_table/table_initInitializeTableV2Ulinear/linear_model/mother_age_bucketized_X_mother_race/mother_race_lookup/hash_tablePlinear/linear_model/mother_age_bucketized_X_mother_race/mother_race_lookup/ConstRlinear/linear_model/mother_age_bucketized_X_mother_race/mother_race_lookup/ToInt64*

Tval0	*

Tkey0
Ю
Ilinear/linear_model/mother_age_bucketized_X_mother_race/hash_table_LookupLookupTableFindV2Ulinear/linear_model/mother_age_bucketized_X_mother_race/mother_race_lookup/hash_tableNlinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/Gather[linear/linear_model/mother_age_bucketized_X_mother_race/mother_race_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:€€€€€€€€€*	
Tin0
√
Alinear/linear_model/mother_age_bucketized_X_mother_race/ToInt64_2Cast;linear/linear_model/mother_age_bucketized_X_mother_race/add*#
_output_shapes
:€€€€€€€€€*

DstT0	*

SrcT0
’
Clinear/linear_model/mother_age_bucketized_X_mother_race/SparseCrossSparseCross?linear/linear_model/mother_age_bucketized_X_mother_race/ToInt64Mlinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/WhereAlinear/linear_model/mother_age_bucketized_X_mother_race/ToInt64_2Ilinear/linear_model/mother_age_bucketized_X_mother_race/hash_table_LookupAlinear/linear_model/mother_age_bucketized_X_mother_race/ToInt64_1Llinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/Cast*
hash_keyюят„м*
internal_type0	*
sparse_types
2		*
out_type0	*
num_bucketsx*
N*
hashed_output(*<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
dense_types
 
«
Dlinear/linear_model/mother_age_bucketized_X_mother_race/Shape_1/CastCastElinear/linear_model/mother_age_bucketized_X_mother_race/SparseCross:2*

SrcT0	*
_output_shapes
:*

DstT0
Ч
Mlinear/linear_model/mother_age_bucketized_X_mother_race/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB: 
Щ
Olinear/linear_model/mother_age_bucketized_X_mother_race/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Щ
Olinear/linear_model/mother_age_bucketized_X_mother_race/strided_slice_1/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
†
Glinear/linear_model/mother_age_bucketized_X_mother_race/strided_slice_1StridedSliceDlinear/linear_model/mother_age_bucketized_X_mother_race/Shape_1/CastMlinear/linear_model/mother_age_bucketized_X_mother_race/strided_slice_1/stackOlinear/linear_model/mother_age_bucketized_X_mother_race/strided_slice_1/stack_1Olinear/linear_model/mother_age_bucketized_X_mother_race/strided_slice_1/stack_2*
Index0*
T0*
new_axis_mask *
_output_shapes
: *
shrink_axis_mask*

begin_mask *
ellipsis_mask *
end_mask 
Л
@linear/linear_model/mother_age_bucketized_X_mother_race/Cast/x/1Const*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Л
>linear/linear_model/mother_age_bucketized_X_mother_race/Cast/xPackGlinear/linear_model/mother_age_bucketized_X_mother_race/strided_slice_1@linear/linear_model/mother_age_bucketized_X_mother_race/Cast/x/1*
T0*

axis *
N*
_output_shapes
:
Є
<linear/linear_model/mother_age_bucketized_X_mother_race/CastCast>linear/linear_model/mother_age_bucketized_X_mother_race/Cast/x*

SrcT0*
_output_shapes
:*

DstT0	
ѕ
Elinear/linear_model/mother_age_bucketized_X_mother_race/SparseReshapeSparseReshapeClinear/linear_model/mother_age_bucketized_X_mother_race/SparseCrossElinear/linear_model/mother_age_bucketized_X_mother_race/SparseCross:2<linear/linear_model/mother_age_bucketized_X_mother_race/Cast*-
_output_shapes
:€€€€€€€€€:
ѕ
Nlinear/linear_model/mother_age_bucketized_X_mother_race/SparseReshape/IdentityIdentityElinear/linear_model/mother_age_bucketized_X_mother_race/SparseCross:1*#
_output_shapes
:€€€€€€€€€*
T0	
И
Xlinear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0/Initializer/zerosConst*Y
_classO
MKloc:@linear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0*
valueBx*    *
dtype0*
_output_shapes

:x
Х
Flinear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0
VariableV2*
shared_name *
shape
:x*
_output_shapes

:x*Y
_classO
MKloc:@linear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0*
dtype0*
	container 
¶
Mlinear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0/AssignAssignFlinear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0Xlinear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes

:x*Y
_classO
MKloc:@linear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0
£
Klinear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0/readIdentityFlinear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0*
T0*Y
_classO
MKloc:@linear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0*
_output_shapes

:x
Ъ
Plinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Slice/beginConst*
dtype0*
_output_shapes
:*
valueB: 
Щ
Olinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:
с
Jlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/SliceSliceGlinear/linear_model/mother_age_bucketized_X_mother_race/SparseReshape:1Plinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Slice/beginOlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Slice/size*
T0	*
Index0*
_output_shapes
:
Ф
Jlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
І
Ilinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/ProdProdJlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/SliceJlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Const*
_output_shapes
: *
T0	*

Tidx0*
	keep_dims( 
Х
Slinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Gather/indicesConst*
dtype0*
_output_shapes
: *
value	B :
¬
Klinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/GatherGatherGlinear/linear_model/mother_age_bucketized_X_mother_race/SparseReshape:1Slinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Gather/indices*
_output_shapes
: *
Tparams0	*
validate_indices(*
Tindices0
•
Klinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Cast/xPackIlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/ProdKlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Gather*
N*
T0	*
_output_shapes
:*

axis 
п
Rlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/SparseReshapeSparseReshapeElinear/linear_model/mother_age_bucketized_X_mother_race/SparseReshapeGlinear/linear_model/mother_age_bucketized_X_mother_race/SparseReshape:1Klinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
е
[linear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/SparseReshape/IdentityIdentityNlinear/linear_model/mother_age_bucketized_X_mother_race/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
Х
Slinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R 
Ѕ
Qlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/GreaterEqualGreaterEqual[linear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/SparseReshape/IdentitySlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
ѕ
Jlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/WhereWhereQlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
•
Rlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
≥
Llinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/ReshapeReshapeJlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/WhereRlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Reshape/shape*#
_output_shapes
:€€€€€€€€€*
Tshape0*
T0	
ў
Mlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Gather_1GatherRlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/SparseReshapeLlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Reshape*
Tindices0	*
Tparams0	*
validate_indices(*'
_output_shapes
:€€€€€€€€€
ё
Mlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Gather_2Gather[linear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/SparseReshape/IdentityLlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Reshape*
Tindices0	*
Tparams0	*
validate_indices(*#
_output_shapes
:€€€€€€€€€
‘
Mlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/IdentityIdentityTlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
†
^linear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	
ѓ
llinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsMlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Gather_1Mlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Gather_2Mlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Identity^linear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
Ѕ
plinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0
√
rlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0
√
rlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
б
jlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicellinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsplinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/embedding_lookup_sparse/strided_slice/stackrlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1rlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*
ellipsis_mask *

begin_mask*
shrink_axis_mask*#
_output_shapes
:€€€€€€€€€*
new_axis_mask *
Index0*
T0	
Т
alinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/embedding_lookup_sparse/CastCastjlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:€€€€€€€€€*

DstT0
©
clinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/embedding_lookup_sparse/UniqueUniquenlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0	*
out_idx0
д
mlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherKlinear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0/readclinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*
Tparams0*
validate_indices(*'
_output_shapes
:€€€€€€€€€*Y
_classO
MKloc:@linear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0
з
\linear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/embedding_lookup_sparseSparseSegmentSummlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/embedding_lookup_sparse/embedding_lookupelinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/embedding_lookup_sparse/Unique:1alinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:€€€€€€€€€*
T0*

Tidx0
•
Tlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"€€€€   
я
Nlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Reshape_1Reshapenlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Tlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:€€€€€€€€€*
Tshape0
ж
Jlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/ShapeShape\linear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:*
out_type0
Ґ
Xlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
§
Zlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
§
Zlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
“
Rlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/strided_sliceStridedSliceJlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/ShapeXlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/strided_slice/stackZlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/strided_slice/stack_1Zlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
_output_shapes
: *
end_mask *
Index0*
T0*
shrink_axis_mask*
new_axis_mask 
О
Llinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
Ѓ
Jlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/stackPackLlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/stack/0Rlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/strided_slice*
T0*

axis *
N*
_output_shapes
:
Ї
Ilinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/TileTileNlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Reshape_1Jlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
*

Tmultiples0
м
Olinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/zeros_like	ZerosLike\linear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ъ
Dlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sumSelectIlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/TileOlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/zeros_like\linear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
–
Klinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Cast_1CastGlinear/linear_model/mother_age_bucketized_X_mother_race/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
Ь
Rlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Ы
Qlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
ы
Llinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Slice_1SliceKlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Cast_1Rlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Slice_1/beginQlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Slice_1/size*
_output_shapes
:*
T0*
Index0
–
Llinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Shape_1ShapeDlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum*
T0*
_output_shapes
:*
out_type0
Ь
Rlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB:
§
Qlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
ь
Llinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Slice_2SliceLlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Shape_1Rlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Slice_2/beginQlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Slice_2/size*
_output_shapes
:*
T0*
Index0
Т
Plinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
€
Klinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/concatConcatV2Llinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Slice_1Llinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Slice_2Plinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
ђ
Nlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Reshape_2ReshapeDlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sumKlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
Д
8linear/linear_model/mother_married/to_sparse_input/ShapeShapeExpandDims_6*
_output_shapes
:*
out_type0*
T0
≠
7linear/linear_model/mother_married/to_sparse_input/CastCast8linear/linear_model/mother_married/to_sparse_input/Shape*

SrcT0*
_output_shapes
:*

DstT0	
|
;linear/linear_model/mother_married/to_sparse_input/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB B 
ƒ
;linear/linear_model/mother_married/to_sparse_input/NotEqualNotEqualExpandDims_6;linear/linear_model/mother_married/to_sparse_input/Cast_1/x*'
_output_shapes
:€€€€€€€€€*
T0
І
8linear/linear_model/mother_married/to_sparse_input/WhereWhere;linear/linear_model/mother_married/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
У
@linear/linear_model/mother_married/to_sparse_input/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€
—
:linear/linear_model/mother_married/to_sparse_input/ReshapeReshapeExpandDims_6@linear/linear_model/mother_married/to_sparse_input/Reshape/shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
Ч
Flinear/linear_model/mother_married/to_sparse_input/strided_slice/stackConst*
valueB"       *
_output_shapes
:*
dtype0
Щ
Hlinear/linear_model/mother_married/to_sparse_input/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
Щ
Hlinear/linear_model/mother_married/to_sparse_input/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
Е
@linear/linear_model/mother_married/to_sparse_input/strided_sliceStridedSlice8linear/linear_model/mother_married/to_sparse_input/WhereFlinear/linear_model/mother_married/to_sparse_input/strided_slice/stackHlinear/linear_model/mother_married/to_sparse_input/strided_slice/stack_1Hlinear/linear_model/mother_married/to_sparse_input/strided_slice/stack_2*
new_axis_mask *
shrink_axis_mask*
Index0*
T0	*
end_mask*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask *

begin_mask
Щ
Hlinear/linear_model/mother_married/to_sparse_input/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Ы
Jlinear/linear_model/mother_married/to_sparse_input/strided_slice_1/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
Ы
Jlinear/linear_model/mother_married/to_sparse_input/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
С
Blinear/linear_model/mother_married/to_sparse_input/strided_slice_1StridedSlice8linear/linear_model/mother_married/to_sparse_input/WhereHlinear/linear_model/mother_married/to_sparse_input/strided_slice_1/stackJlinear/linear_model/mother_married/to_sparse_input/strided_slice_1/stack_1Jlinear/linear_model/mother_married/to_sparse_input/strided_slice_1/stack_2*'
_output_shapes
:€€€€€€€€€*
end_mask*
new_axis_mask *

begin_mask*
ellipsis_mask *
shrink_axis_mask *
T0	*
Index0
Ј
:linear/linear_model/mother_married/to_sparse_input/unstackUnpack7linear/linear_model/mother_married/to_sparse_input/Cast*

axis *
_output_shapes
: : *
T0	*	
num
Є
8linear/linear_model/mother_married/to_sparse_input/stackPack<linear/linear_model/mother_married/to_sparse_input/unstack:1*
N*
T0	*
_output_shapes
:*

axis 
н
6linear/linear_model/mother_married/to_sparse_input/MulMulBlinear/linear_model/mother_married/to_sparse_input/strided_slice_18linear/linear_model/mother_married/to_sparse_input/stack*'
_output_shapes
:€€€€€€€€€*
T0	
Т
Hlinear/linear_model/mother_married/to_sparse_input/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
К
6linear/linear_model/mother_married/to_sparse_input/SumSum6linear/linear_model/mother_married/to_sparse_input/MulHlinear/linear_model/mother_married/to_sparse_input/Sum/reduction_indices*#
_output_shapes
:€€€€€€€€€*
T0	*

Tidx0*
	keep_dims( 
е
6linear/linear_model/mother_married/to_sparse_input/AddAdd@linear/linear_model/mother_married/to_sparse_input/strided_slice6linear/linear_model/mother_married/to_sparse_input/Sum*#
_output_shapes
:€€€€€€€€€*
T0	
У
9linear/linear_model/mother_married/to_sparse_input/GatherGather:linear/linear_model/mother_married/to_sparse_input/Reshape6linear/linear_model/mother_married/to_sparse_input/Add*
Tindices0	*
Tparams0*
validate_indices(*#
_output_shapes
:€€€€€€€€€
Т
>linear/linear_model/mother_married/mother_married_lookup/ConstConst*
_output_shapes
:*
dtype0* 
valueBBTrueBFalse

=linear/linear_model/mother_married/mother_married_lookup/SizeConst*
dtype0*
_output_shapes
: *
value	B :
Ж
Dlinear/linear_model/mother_married/mother_married_lookup/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
Ж
Dlinear/linear_model/mother_married/mother_married_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ї
>linear/linear_model/mother_married/mother_married_lookup/rangeRangeDlinear/linear_model/mother_married/mother_married_lookup/range/start=linear/linear_model/mother_married/mother_married_lookup/SizeDlinear/linear_model/mother_married/mother_married_lookup/range/delta*

Tidx0*
_output_shapes
:
Љ
@linear/linear_model/mother_married/mother_married_lookup/ToInt64Cast>linear/linear_model/mother_married/mother_married_lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
ѕ
Clinear/linear_model/mother_married/mother_married_lookup/hash_tableHashTableV2*
	container *
value_dtype0	*
use_node_name_sharing( *
shared_name *
_output_shapes
: *
	key_dtype0
Ф
Ilinear/linear_model/mother_married/mother_married_lookup/hash_table/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 R
€€€€€€€€€
¬
Nlinear/linear_model/mother_married/mother_married_lookup/hash_table/table_initInitializeTableV2Clinear/linear_model/mother_married/mother_married_lookup/hash_table>linear/linear_model/mother_married/mother_married_lookup/Const@linear/linear_model/mother_married/mother_married_lookup/ToInt64*

Tval0	*

Tkey0
–
4linear/linear_model/mother_married/hash_table_LookupLookupTableFindV2Clinear/linear_model/mother_married/mother_married_lookup/hash_table9linear/linear_model/mother_married/to_sparse_input/GatherIlinear/linear_model/mother_married/mother_married_lookup/hash_table/Const*

Tout0	*#
_output_shapes
:€€€€€€€€€*	
Tin0
Ґ
-linear/linear_model/mother_married/Shape/CastCast7linear/linear_model/mother_married/to_sparse_input/Cast*
_output_shapes
:*

DstT0*

SrcT0	
А
6linear/linear_model/mother_married/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
В
8linear/linear_model/mother_married/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
В
8linear/linear_model/mother_married/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
≠
0linear/linear_model/mother_married/strided_sliceStridedSlice-linear/linear_model/mother_married/Shape/Cast6linear/linear_model/mother_married/strided_slice/stack8linear/linear_model/mother_married/strided_slice/stack_18linear/linear_model/mother_married/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
v
+linear/linear_model/mother_married/Cast/x/1Const*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
 
)linear/linear_model/mother_married/Cast/xPack0linear/linear_model/mother_married/strided_slice+linear/linear_model/mother_married/Cast/x/1*
N*
T0*
_output_shapes
:*

axis 
О
'linear/linear_model/mother_married/CastCast)linear/linear_model/mother_married/Cast/x*

SrcT0*
_output_shapes
:*

DstT0	
М
0linear/linear_model/mother_married/SparseReshapeSparseReshape8linear/linear_model/mother_married/to_sparse_input/Where7linear/linear_model/mother_married/to_sparse_input/Cast'linear/linear_model/mother_married/Cast*-
_output_shapes
:€€€€€€€€€:
©
9linear/linear_model/mother_married/SparseReshape/IdentityIdentity4linear/linear_model/mother_married/hash_table_Lookup*
T0	*#
_output_shapes
:€€€€€€€€€
ё
Clinear/linear_model/mother_married/weights/part_0/Initializer/zerosConst*D
_class:
86loc:@linear/linear_model/mother_married/weights/part_0*
valueB*    *
_output_shapes

:*
dtype0
л
1linear/linear_model/mother_married/weights/part_0
VariableV2*
	container *
dtype0*D
_class:
86loc:@linear/linear_model/mother_married/weights/part_0*
_output_shapes

:*
shape
:*
shared_name 
“
8linear/linear_model/mother_married/weights/part_0/AssignAssign1linear/linear_model/mother_married/weights/part_0Clinear/linear_model/mother_married/weights/part_0/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes

:*D
_class:
86loc:@linear/linear_model/mother_married/weights/part_0
д
6linear/linear_model/mother_married/weights/part_0/readIdentity1linear/linear_model/mother_married/weights/part_0*
_output_shapes

:*D
_class:
86loc:@linear/linear_model/mother_married/weights/part_0*
T0
Е
;linear/linear_model/mother_married/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
Д
:linear/linear_model/mother_married/weighted_sum/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:
Э
5linear/linear_model/mother_married/weighted_sum/SliceSlice2linear/linear_model/mother_married/SparseReshape:1;linear/linear_model/mother_married/weighted_sum/Slice/begin:linear/linear_model/mother_married/weighted_sum/Slice/size*
_output_shapes
:*
T0	*
Index0

5linear/linear_model/mother_married/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
и
4linear/linear_model/mother_married/weighted_sum/ProdProd5linear/linear_model/mother_married/weighted_sum/Slice5linear/linear_model/mother_married/weighted_sum/Const*

Tidx0*
	keep_dims( *
T0	*
_output_shapes
: 
А
>linear/linear_model/mother_married/weighted_sum/Gather/indicesConst*
value	B :*
_output_shapes
: *
dtype0
Г
6linear/linear_model/mother_married/weighted_sum/GatherGather2linear/linear_model/mother_married/SparseReshape:1>linear/linear_model/mother_married/weighted_sum/Gather/indices*
Tindices0*
Tparams0	*
validate_indices(*
_output_shapes
: 
ж
6linear/linear_model/mother_married/weighted_sum/Cast/xPack4linear/linear_model/mother_married/weighted_sum/Prod6linear/linear_model/mother_married/weighted_sum/Gather*
_output_shapes
:*
N*

axis *
T0	
Ы
=linear/linear_model/mother_married/weighted_sum/SparseReshapeSparseReshape0linear/linear_model/mother_married/SparseReshape2linear/linear_model/mother_married/SparseReshape:16linear/linear_model/mother_married/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
ї
Flinear/linear_model/mother_married/weighted_sum/SparseReshape/IdentityIdentity9linear/linear_model/mother_married/SparseReshape/Identity*
T0	*#
_output_shapes
:€€€€€€€€€
А
>linear/linear_model/mother_married/weighted_sum/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
В
<linear/linear_model/mother_married/weighted_sum/GreaterEqualGreaterEqualFlinear/linear_model/mother_married/weighted_sum/SparseReshape/Identity>linear/linear_model/mother_married/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
•
5linear/linear_model/mother_married/weighted_sum/WhereWhere<linear/linear_model/mother_married/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Р
=linear/linear_model/mother_married/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
ф
7linear/linear_model/mother_married/weighted_sum/ReshapeReshape5linear/linear_model/mother_married/weighted_sum/Where=linear/linear_model/mother_married/weighted_sum/Reshape/shape*#
_output_shapes
:€€€€€€€€€*
Tshape0*
T0	
Ъ
8linear/linear_model/mother_married/weighted_sum/Gather_1Gather=linear/linear_model/mother_married/weighted_sum/SparseReshape7linear/linear_model/mother_married/weighted_sum/Reshape*'
_output_shapes
:€€€€€€€€€*
Tparams0	*
validate_indices(*
Tindices0	
Я
8linear/linear_model/mother_married/weighted_sum/Gather_2GatherFlinear/linear_model/mother_married/weighted_sum/SparseReshape/Identity7linear/linear_model/mother_married/weighted_sum/Reshape*
Tindices0	*
Tparams0	*
validate_indices(*#
_output_shapes
:€€€€€€€€€
™
8linear/linear_model/mother_married/weighted_sum/IdentityIdentity?linear/linear_model/mother_married/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
Л
Ilinear/linear_model/mother_married/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
∆
Wlinear/linear_model/mother_married/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows8linear/linear_model/mother_married/weighted_sum/Gather_18linear/linear_model/mother_married/weighted_sum/Gather_28linear/linear_model/mother_married/weighted_sum/IdentityIlinear/linear_model/mother_married/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
ђ
[linear/linear_model/mother_married/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
Ѓ
]linear/linear_model/mother_married/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
Ѓ
]linear/linear_model/mother_married/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
ш
Ulinear/linear_model/mother_married/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceWlinear/linear_model/mother_married/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows[linear/linear_model/mother_married/weighted_sum/embedding_lookup_sparse/strided_slice/stack]linear/linear_model/mother_married/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1]linear/linear_model/mother_married/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*#
_output_shapes
:€€€€€€€€€*
end_mask*
new_axis_mask *

begin_mask*
ellipsis_mask *
shrink_axis_mask*
T0	*
Index0
и
Llinear/linear_model/mother_married/weighted_sum/embedding_lookup_sparse/CastCastUlinear/linear_model/mother_married/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:€€€€€€€€€*

DstT0
€
Nlinear/linear_model/mother_married/weighted_sum/embedding_lookup_sparse/UniqueUniqueYlinear/linear_model/mother_married/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*
out_idx0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Р
Xlinear/linear_model/mother_married/weighted_sum/embedding_lookup_sparse/embedding_lookupGather6linear/linear_model/mother_married/weights/part_0/readNlinear/linear_model/mother_married/weighted_sum/embedding_lookup_sparse/Unique*D
_class:
86loc:@linear/linear_model/mother_married/weights/part_0*'
_output_shapes
:€€€€€€€€€*
Tparams0*
validate_indices(*
Tindices0	
У
Glinear/linear_model/mother_married/weighted_sum/embedding_lookup_sparseSparseSegmentSumXlinear/linear_model/mother_married/weighted_sum/embedding_lookup_sparse/embedding_lookupPlinear/linear_model/mother_married/weighted_sum/embedding_lookup_sparse/Unique:1Llinear/linear_model/mother_married/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:€€€€€€€€€*
T0*

Tidx0
Р
?linear/linear_model/mother_married/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   
†
9linear/linear_model/mother_married/weighted_sum/Reshape_1ReshapeYlinear/linear_model/mother_married/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2?linear/linear_model/mother_married/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:€€€€€€€€€
Љ
5linear/linear_model/mother_married/weighted_sum/ShapeShapeGlinear/linear_model/mother_married/weighted_sum/embedding_lookup_sparse*
_output_shapes
:*
out_type0*
T0
Н
Clinear/linear_model/mother_married/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
П
Elinear/linear_model/mother_married/weighted_sum/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
П
Elinear/linear_model/mother_married/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
й
=linear/linear_model/mother_married/weighted_sum/strided_sliceStridedSlice5linear/linear_model/mother_married/weighted_sum/ShapeClinear/linear_model/mother_married/weighted_sum/strided_slice/stackElinear/linear_model/mother_married/weighted_sum/strided_slice/stack_1Elinear/linear_model/mother_married/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0*
end_mask *
new_axis_mask *

begin_mask *
ellipsis_mask 
y
7linear/linear_model/mother_married/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
п
5linear/linear_model/mother_married/weighted_sum/stackPack7linear/linear_model/mother_married/weighted_sum/stack/0=linear/linear_model/mother_married/weighted_sum/strided_slice*

axis *
_output_shapes
:*
T0*
N
ы
4linear/linear_model/mother_married/weighted_sum/TileTile9linear/linear_model/mother_married/weighted_sum/Reshape_15linear/linear_model/mother_married/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
*

Tmultiples0
¬
:linear/linear_model/mother_married/weighted_sum/zeros_like	ZerosLikeGlinear/linear_model/mother_married/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
¶
/linear/linear_model/mother_married/weighted_sumSelect4linear/linear_model/mother_married/weighted_sum/Tile:linear/linear_model/mother_married/weighted_sum/zeros_likeGlinear/linear_model/mother_married/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
¶
6linear/linear_model/mother_married/weighted_sum/Cast_1Cast2linear/linear_model/mother_married/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
З
=linear/linear_model/mother_married/weighted_sum/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 
Ж
<linear/linear_model/mother_married/weighted_sum/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
І
7linear/linear_model/mother_married/weighted_sum/Slice_1Slice6linear/linear_model/mother_married/weighted_sum/Cast_1=linear/linear_model/mother_married/weighted_sum/Slice_1/begin<linear/linear_model/mother_married/weighted_sum/Slice_1/size*
_output_shapes
:*
T0*
Index0
¶
7linear/linear_model/mother_married/weighted_sum/Shape_1Shape/linear/linear_model/mother_married/weighted_sum*
_output_shapes
:*
out_type0*
T0
З
=linear/linear_model/mother_married/weighted_sum/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB:
П
<linear/linear_model/mother_married/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
®
7linear/linear_model/mother_married/weighted_sum/Slice_2Slice7linear/linear_model/mother_married/weighted_sum/Shape_1=linear/linear_model/mother_married/weighted_sum/Slice_2/begin<linear/linear_model/mother_married/weighted_sum/Slice_2/size*
T0*
Index0*
_output_shapes
:
}
;linear/linear_model/mother_married/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ђ
6linear/linear_model/mother_married/weighted_sum/concatConcatV27linear/linear_model/mother_married/weighted_sum/Slice_17linear/linear_model/mother_married/weighted_sum/Slice_2;linear/linear_model/mother_married/weighted_sum/concat/axis*
_output_shapes
:*
T0*

Tidx0*
N
н
9linear/linear_model/mother_married/weighted_sum/Reshape_2Reshape/linear/linear_model/mother_married/weighted_sum6linear/linear_model/mother_married/weighted_sum/concat*
T0*'
_output_shapes
:€€€€€€€€€*
Tshape0
і
*linear/linear_model/mother_race/Shape/CastCastLlinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/Cast*

SrcT0	*
_output_shapes
:*

DstT0
}
3linear/linear_model/mother_race/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

5linear/linear_model/mother_race/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

5linear/linear_model/mother_race/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ю
-linear/linear_model/mother_race/strided_sliceStridedSlice*linear/linear_model/mother_race/Shape/Cast3linear/linear_model/mother_race/strided_slice/stack5linear/linear_model/mother_race/strided_slice/stack_15linear/linear_model/mother_race/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0*
end_mask *
new_axis_mask *
ellipsis_mask *

begin_mask 
s
(linear/linear_model/mother_race/Cast/x/1Const*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
Ѕ
&linear/linear_model/mother_race/Cast/xPack-linear/linear_model/mother_race/strided_slice(linear/linear_model/mother_race/Cast/x/1*
N*
T0*
_output_shapes
:*

axis 
И
$linear/linear_model/mother_race/CastCast&linear/linear_model/mother_race/Cast/x*

SrcT0*
_output_shapes
:*

DstT0	
∞
-linear/linear_model/mother_race/SparseReshapeSparseReshapeMlinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/WhereLlinear/linear_model/mother_age_bucketized_X_mother_race/to_sparse_input/Cast$linear/linear_model/mother_race/Cast*-
_output_shapes
:€€€€€€€€€:
ї
6linear/linear_model/mother_race/SparseReshape/IdentityIdentityIlinear/linear_model/mother_age_bucketized_X_mother_race/hash_table_Lookup*
T0	*#
_output_shapes
:€€€€€€€€€
Ў
@linear/linear_model/mother_race/weights/part_0/Initializer/zerosConst*A
_class7
53loc:@linear/linear_model/mother_race/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
е
.linear/linear_model/mother_race/weights/part_0
VariableV2*
shared_name *
shape
:*
_output_shapes

:*A
_class7
53loc:@linear/linear_model/mother_race/weights/part_0*
dtype0*
	container 
∆
5linear/linear_model/mother_race/weights/part_0/AssignAssign.linear/linear_model/mother_race/weights/part_0@linear/linear_model/mother_race/weights/part_0/Initializer/zeros*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/mother_race/weights/part_0*
validate_shape(*
_output_shapes

:
џ
3linear/linear_model/mother_race/weights/part_0/readIdentity.linear/linear_model/mother_race/weights/part_0*A
_class7
53loc:@linear/linear_model/mother_race/weights/part_0*
_output_shapes

:*
T0
В
8linear/linear_model/mother_race/weighted_sum/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
Б
7linear/linear_model/mother_race/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
С
2linear/linear_model/mother_race/weighted_sum/SliceSlice/linear/linear_model/mother_race/SparseReshape:18linear/linear_model/mother_race/weighted_sum/Slice/begin7linear/linear_model/mother_race/weighted_sum/Slice/size*
T0	*
Index0*
_output_shapes
:
|
2linear/linear_model/mother_race/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
я
1linear/linear_model/mother_race/weighted_sum/ProdProd2linear/linear_model/mother_race/weighted_sum/Slice2linear/linear_model/mother_race/weighted_sum/Const*
_output_shapes
: *
T0	*

Tidx0*
	keep_dims( 
}
;linear/linear_model/mother_race/weighted_sum/Gather/indicesConst*
dtype0*
_output_shapes
: *
value	B :
ъ
3linear/linear_model/mother_race/weighted_sum/GatherGather/linear/linear_model/mother_race/SparseReshape:1;linear/linear_model/mother_race/weighted_sum/Gather/indices*
Tindices0*
Tparams0	*
validate_indices(*
_output_shapes
: 
Ё
3linear/linear_model/mother_race/weighted_sum/Cast/xPack1linear/linear_model/mother_race/weighted_sum/Prod3linear/linear_model/mother_race/weighted_sum/Gather*
T0	*

axis *
N*
_output_shapes
:
П
:linear/linear_model/mother_race/weighted_sum/SparseReshapeSparseReshape-linear/linear_model/mother_race/SparseReshape/linear/linear_model/mother_race/SparseReshape:13linear/linear_model/mother_race/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
µ
Clinear/linear_model/mother_race/weighted_sum/SparseReshape/IdentityIdentity6linear/linear_model/mother_race/SparseReshape/Identity*
T0	*#
_output_shapes
:€€€€€€€€€
}
;linear/linear_model/mother_race/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
щ
9linear/linear_model/mother_race/weighted_sum/GreaterEqualGreaterEqualClinear/linear_model/mother_race/weighted_sum/SparseReshape/Identity;linear/linear_model/mother_race/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
Я
2linear/linear_model/mother_race/weighted_sum/WhereWhere9linear/linear_model/mother_race/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Н
:linear/linear_model/mother_race/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
л
4linear/linear_model/mother_race/weighted_sum/ReshapeReshape2linear/linear_model/mother_race/weighted_sum/Where:linear/linear_model/mother_race/weighted_sum/Reshape/shape*#
_output_shapes
:€€€€€€€€€*
Tshape0*
T0	
С
5linear/linear_model/mother_race/weighted_sum/Gather_1Gather:linear/linear_model/mother_race/weighted_sum/SparseReshape4linear/linear_model/mother_race/weighted_sum/Reshape*
Tindices0	*
Tparams0	*
validate_indices(*'
_output_shapes
:€€€€€€€€€
Ц
5linear/linear_model/mother_race/weighted_sum/Gather_2GatherClinear/linear_model/mother_race/weighted_sum/SparseReshape/Identity4linear/linear_model/mother_race/weighted_sum/Reshape*#
_output_shapes
:€€€€€€€€€*
Tparams0	*
validate_indices(*
Tindices0	
§
5linear/linear_model/mother_race/weighted_sum/IdentityIdentity<linear/linear_model/mother_race/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
И
Flinear/linear_model/mother_race/weighted_sum/SparseFillEmptyRows/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R 
Ј
Tlinear/linear_model/mother_race/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows5linear/linear_model/mother_race/weighted_sum/Gather_15linear/linear_model/mother_race/weighted_sum/Gather_25linear/linear_model/mother_race/weighted_sum/IdentityFlinear/linear_model/mother_race/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
©
Xlinear/linear_model/mother_race/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
Ђ
Zlinear/linear_model/mother_race/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
Ђ
Zlinear/linear_model/mother_race/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
й
Rlinear/linear_model/mother_race/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceTlinear/linear_model/mother_race/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsXlinear/linear_model/mother_race/weighted_sum/embedding_lookup_sparse/strided_slice/stackZlinear/linear_model/mother_race/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Zlinear/linear_model/mother_race/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*

begin_mask*
ellipsis_mask *
shrink_axis_mask*#
_output_shapes
:€€€€€€€€€*
new_axis_mask *
T0	*
Index0
в
Ilinear/linear_model/mother_race/weighted_sum/embedding_lookup_sparse/CastCastRlinear/linear_model/mother_race/weighted_sum/embedding_lookup_sparse/strided_slice*#
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0	
щ
Klinear/linear_model/mother_race/weighted_sum/embedding_lookup_sparse/UniqueUniqueVlinear/linear_model/mother_race/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*
out_idx0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Д
Ulinear/linear_model/mother_race/weighted_sum/embedding_lookup_sparse/embedding_lookupGather3linear/linear_model/mother_race/weights/part_0/readKlinear/linear_model/mother_race/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*
Tparams0*
validate_indices(*A
_class7
53loc:@linear/linear_model/mother_race/weights/part_0*'
_output_shapes
:€€€€€€€€€
З
Dlinear/linear_model/mother_race/weighted_sum/embedding_lookup_sparseSparseSegmentSumUlinear/linear_model/mother_race/weighted_sum/embedding_lookup_sparse/embedding_lookupMlinear/linear_model/mother_race/weighted_sum/embedding_lookup_sparse/Unique:1Ilinear/linear_model/mother_race/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*
T0*'
_output_shapes
:€€€€€€€€€
Н
<linear/linear_model/mother_race/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
_output_shapes
:*
dtype0
Ч
6linear/linear_model/mother_race/weighted_sum/Reshape_1ReshapeVlinear/linear_model/mother_race/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2<linear/linear_model/mother_race/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:€€€€€€€€€*
Tshape0
ґ
2linear/linear_model/mother_race/weighted_sum/ShapeShapeDlinear/linear_model/mother_race/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:*
out_type0
К
@linear/linear_model/mother_race/weighted_sum/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
М
Blinear/linear_model/mother_race/weighted_sum/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
М
Blinear/linear_model/mother_race/weighted_sum/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Џ
:linear/linear_model/mother_race/weighted_sum/strided_sliceStridedSlice2linear/linear_model/mother_race/weighted_sum/Shape@linear/linear_model/mother_race/weighted_sum/strided_slice/stackBlinear/linear_model/mother_race/weighted_sum/strided_slice/stack_1Blinear/linear_model/mother_race/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0*
end_mask *
new_axis_mask *

begin_mask *
ellipsis_mask 
v
4linear/linear_model/mother_race/weighted_sum/stack/0Const*
value	B :*
_output_shapes
: *
dtype0
ж
2linear/linear_model/mother_race/weighted_sum/stackPack4linear/linear_model/mother_race/weighted_sum/stack/0:linear/linear_model/mother_race/weighted_sum/strided_slice*
T0*

axis *
N*
_output_shapes
:
т
1linear/linear_model/mother_race/weighted_sum/TileTile6linear/linear_model/mother_race/weighted_sum/Reshape_12linear/linear_model/mother_race/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
*

Tmultiples0
Љ
7linear/linear_model/mother_race/weighted_sum/zeros_like	ZerosLikeDlinear/linear_model/mother_race/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
Ъ
,linear/linear_model/mother_race/weighted_sumSelect1linear/linear_model/mother_race/weighted_sum/Tile7linear/linear_model/mother_race/weighted_sum/zeros_likeDlinear/linear_model/mother_race/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
†
3linear/linear_model/mother_race/weighted_sum/Cast_1Cast/linear/linear_model/mother_race/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
Д
:linear/linear_model/mother_race/weighted_sum/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 
Г
9linear/linear_model/mother_race/weighted_sum/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
Ы
4linear/linear_model/mother_race/weighted_sum/Slice_1Slice3linear/linear_model/mother_race/weighted_sum/Cast_1:linear/linear_model/mother_race/weighted_sum/Slice_1/begin9linear/linear_model/mother_race/weighted_sum/Slice_1/size*
_output_shapes
:*
T0*
Index0
†
4linear/linear_model/mother_race/weighted_sum/Shape_1Shape,linear/linear_model/mother_race/weighted_sum*
_output_shapes
:*
out_type0*
T0
Д
:linear/linear_model/mother_race/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
М
9linear/linear_model/mother_race/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
_output_shapes
:*
dtype0
Ь
4linear/linear_model/mother_race/weighted_sum/Slice_2Slice4linear/linear_model/mother_race/weighted_sum/Shape_1:linear/linear_model/mother_race/weighted_sum/Slice_2/begin9linear/linear_model/mother_race/weighted_sum/Slice_2/size*
T0*
Index0*
_output_shapes
:
z
8linear/linear_model/mother_race/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Я
3linear/linear_model/mother_race/weighted_sum/concatConcatV24linear/linear_model/mother_race/weighted_sum/Slice_14linear/linear_model/mother_race/weighted_sum/Slice_28linear/linear_model/mother_race/weighted_sum/concat/axis*
_output_shapes
:*
T0*

Tidx0*
N
д
6linear/linear_model/mother_race/weighted_sum/Reshape_2Reshape,linear/linear_model/mother_race/weighted_sum3linear/linear_model/mother_race/weighted_sum/concat*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
Ь
(linear/linear_model/weighted_sum_no_biasAddN6linear/linear_model/alcohol_use/weighted_sum/Reshape_2Flinear/linear_model/alcohol_use_X_cigarette_use/weighted_sum/Reshape_28linear/linear_model/cigarette_use/weighted_sum/Reshape_22linear/linear_model/is_male/weighted_sum/Reshape_2Nlinear/linear_model/mother_age_bucketized_X_mother_race/weighted_sum/Reshape_29linear/linear_model/mother_married/weighted_sum/Reshape_26linear/linear_model/mother_race/weighted_sum/Reshape_2*'
_output_shapes
:€€€€€€€€€*
T0*
N
¬
9linear/linear_model/bias_weights/part_0/Initializer/zerosConst*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
valueB*    *
dtype0*
_output_shapes
:
ѕ
'linear/linear_model/bias_weights/part_0
VariableV2*
shared_name *:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
	container *
shape:*
dtype0*
_output_shapes
:
¶
.linear/linear_model/bias_weights/part_0/AssignAssign'linear/linear_model/bias_weights/part_09linear/linear_model/bias_weights/part_0/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0
¬
,linear/linear_model/bias_weights/part_0/readIdentity'linear/linear_model/bias_weights/part_0*
_output_shapes
:*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
T0

 linear/linear_model/bias_weightsIdentity,linear/linear_model/bias_weights/part_0/read*
T0*
_output_shapes
:
ј
 linear/linear_model/weighted_sumBiasAdd(linear/linear_model/weighted_sum_no_bias linear/linear_model/bias_weights*
data_formatNHWC*
T0*'
_output_shapes
:€€€€€€€€€
^
linear/zero_fraction/zeroConst*
dtype0*
_output_shapes
: *
valueB
 *    
Т
linear/zero_fraction/EqualEqual linear/linear_model/weighted_sumlinear/zero_fraction/zero*'
_output_shapes
:€€€€€€€€€*
T0
~
linear/zero_fraction/CastCastlinear/zero_fraction/Equal*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0

k
linear/zero_fraction/ConstConst*
valueB"       *
_output_shapes
:*
dtype0
Ц
linear/zero_fraction/MeanMeanlinear/zero_fraction/Castlinear/zero_fraction/Const*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
Р
*linear/linear/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*6
value-B+ B%linear/linear/fraction_of_zero_values
Ю
%linear/linear/fraction_of_zero_valuesScalarSummary*linear/linear/fraction_of_zero_values/tagslinear/zero_fraction/Mean*
_output_shapes
: *
T0
u
linear/linear/activation/tagConst*)
value B Blinear/linear/activation*
dtype0*
_output_shapes
: 
Н
linear/linear/activationHistogramSummarylinear/linear/activation/tag linear/linear_model/weighted_sum*
_output_shapes
: *
T0
r
addAdddnn/logits/BiasAdd linear/linear_model/weighted_sum*'
_output_shapes
:€€€€€€€€€*
T0
T
head/logits/ShapeShapeadd*
T0*
out_type0*
_output_shapes
:
^
head/logits/assert_rank/rankConst*
dtype0*
_output_shapes
: *
value	B :
N
Fhead/logits/assert_rank/assert_type/statically_determined_correct_typeNoOp
?
7head/logits/assert_rank/static_checks_determined_all_okNoOp
£
head/logits/strided_slice/stackConst8^head/logits/assert_rank/static_checks_determined_all_ok*
valueB:*
dtype0*
_output_shapes
:
•
!head/logits/strided_slice/stack_1Const8^head/logits/assert_rank/static_checks_determined_all_ok*
valueB:*
_output_shapes
:*
dtype0
•
!head/logits/strided_slice/stack_2Const8^head/logits/assert_rank/static_checks_determined_all_ok*
valueB:*
dtype0*
_output_shapes
:
µ
head/logits/strided_sliceStridedSlicehead/logits/Shapehead/logits/strided_slice/stack!head/logits/strided_slice/stack_1!head/logits/strided_slice/stack_2*
new_axis_mask *
shrink_axis_mask*
T0*
Index0*
end_mask *
_output_shapes
: *

begin_mask *
ellipsis_mask 
Ц
head/logits/assert_equal/xConst8^head/logits/assert_rank/static_checks_determined_all_ok*
dtype0*
_output_shapes
: *
value	B :

head/logits/assert_equal/EqualEqualhead/logits/assert_equal/xhead/logits/strided_slice*
_output_shapes
: *
T0
Ы
head/logits/assert_equal/ConstConst8^head/logits/assert_rank/static_checks_determined_all_ok*
valueB *
_output_shapes
: *
dtype0
Ш
head/logits/assert_equal/AllAllhead/logits/assert_equal/Equalhead/logits/assert_equal/Const*
	keep_dims( *

Tidx0*
_output_shapes
: 
~
&head/logits/assert_equal/Assert/AssertAsserthead/logits/assert_equal/Allhead/logits/Shape*

T
2*
	summarize
±
head/logitsIdentityadd8^head/logits/assert_rank/static_checks_determined_all_ok'^head/logits/assert_equal/Assert/Assert*'
_output_shapes
:€€€€€€€€€*
T0
P

save/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0
Д
save/StringJoin/inputs_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_5b167265c63c4431b98060a596d9cb58/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
\
save/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
€
save/SaveV2/tensor_namesConst*
_output_shapes
:*
dtype0*≤
value®B•Bdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBjdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weightsBdnn/logits/biasBdnn/logits/kernelBglobal_stepB'linear/linear_model/alcohol_use/weightsB7linear/linear_model/alcohol_use_X_cigarette_use/weightsB linear/linear_model/bias_weightsB)linear/linear_model/cigarette_use/weightsB#linear/linear_model/is_male/weightsB?linear/linear_model/mother_age_bucketized_X_mother_race/weightsB*linear/linear_model/mother_married/weightsB'linear/linear_model/mother_race/weights
≈
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*ф
valueкBзB64 0,64B30 64 0,30:0,64B32 0,32B64 32 0,64:0,32B16 0,16B32 16 0,32:0,16B120 5 0,120:0,5B1 0,1B16 1 0,16:0,1B B3 1 0,3:0,1B9 1 0,9:0,1B1 0,1B3 1 0,3:0,1B2 1 0,2:0,1B120 1 0,120:0,1B2 1 0,2:0,1B12 1 0,12:0,1
о
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices"dnn/hiddenlayer_0/bias/part_0/read$dnn/hiddenlayer_0/kernel/part_0/read"dnn/hiddenlayer_1/bias/part_0/read$dnn/hiddenlayer_1/kernel/part_0/read"dnn/hiddenlayer_2/bias/part_0/read$dnn/hiddenlayer_2/kernel/part_0/readvdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0/readdnn/logits/bias/part_0/readdnn/logits/kernel/part_0/readglobal_step3linear/linear_model/alcohol_use/weights/part_0/readClinear/linear_model/alcohol_use_X_cigarette_use/weights/part_0/read,linear/linear_model/bias_weights/part_0/read5linear/linear_model/cigarette_use/weights/part_0/read/linear/linear_model/is_male/weights/part_0/readKlinear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0/read6linear/linear_model/mother_married/weights/part_0/read3linear/linear_model/mother_race/weights/part_0/read* 
dtypes
2	
С
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
Э
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*

axis *
_output_shapes
:*
T0*
N
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
z
save/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*+
value"B Bdnn/hiddenlayer_0/bias
o
save/RestoreV2/shape_and_slicesConst*
valueBB64 0,64*
dtype0*
_output_shapes
:
Т
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapes
:@*
dtypes
2
ƒ
save/AssignAssigndnn/hiddenlayer_0/bias/part_0save/RestoreV2*
use_locking(*
T0*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
validate_shape(*
_output_shapes
:@
~
save/RestoreV2_1/tensor_namesConst*
_output_shapes
:*
dtype0*-
value$B"Bdnn/hiddenlayer_0/kernel
y
!save/RestoreV2_1/shape_and_slicesConst*$
valueBB30 64 0,30:0,64*
dtype0*
_output_shapes
:
Ь
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes

:@
–
save/Assign_1Assigndnn/hiddenlayer_0/kernel/part_0save/RestoreV2_1*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:@*
T0*
validate_shape(*
use_locking(
|
save/RestoreV2_2/tensor_namesConst*
_output_shapes
:*
dtype0*+
value"B Bdnn/hiddenlayer_1/bias
q
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueBB32 0,32
Ш
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
: 
»
save/Assign_2Assigndnn/hiddenlayer_1/bias/part_0save/RestoreV2_2*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0
~
save/RestoreV2_3/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_1/kernel*
dtype0*
_output_shapes
:
y
!save/RestoreV2_3/shape_and_slicesConst*$
valueBB64 32 0,64:0,32*
_output_shapes
:*
dtype0
Ь
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
_output_shapes

:@ *
dtypes
2
–
save/Assign_3Assigndnn/hiddenlayer_1/kernel/part_0save/RestoreV2_3*
use_locking(*
validate_shape(*
T0*
_output_shapes

:@ *2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
|
save/RestoreV2_4/tensor_namesConst*+
value"B Bdnn/hiddenlayer_2/bias*
_output_shapes
:*
dtype0
q
!save/RestoreV2_4/shape_and_slicesConst*
valueBB16 0,16*
dtype0*
_output_shapes
:
Ш
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
»
save/Assign_4Assigndnn/hiddenlayer_2/bias/part_0save/RestoreV2_4*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
~
save/RestoreV2_5/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_2/kernel*
dtype0*
_output_shapes
:
y
!save/RestoreV2_5/shape_and_slicesConst*$
valueBB32 16 0,32:0,16*
dtype0*
_output_shapes
:
Ь
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
_output_shapes

: *
dtypes
2
–
save/Assign_5Assigndnn/hiddenlayer_2/kernel/part_0save/RestoreV2_5*
use_locking(*
validate_shape(*
T0*
_output_shapes

: *2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0
–
save/RestoreV2_6/tensor_namesConst*
valuevBtBjdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights*
dtype0*
_output_shapes
:
y
!save/RestoreV2_6/shape_and_slicesConst*$
valueBB120 5 0,120:0,5*
_output_shapes
:*
dtype0
Ь
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes

:x
х
save/Assign_6Assignqdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0save/RestoreV2_6*
use_locking(*
validate_shape(*
T0*
_output_shapes

:x*Д
_classz
xvloc:@dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0
u
save/RestoreV2_7/tensor_namesConst*$
valueBBdnn/logits/bias*
_output_shapes
:*
dtype0
o
!save/RestoreV2_7/shape_and_slicesConst*
valueBB1 0,1*
_output_shapes
:*
dtype0
Ш
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
Ї
save/Assign_7Assigndnn/logits/bias/part_0save/RestoreV2_7*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*)
_class
loc:@dnn/logits/bias/part_0
w
save/RestoreV2_8/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBdnn/logits/kernel
w
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
_output_shapes
:*"
valueBB16 1 0,16:0,1
Ь
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes

:
¬
save/Assign_8Assigndnn/logits/kernel/part_0save/RestoreV2_8*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:*
T0*
validate_shape(*
use_locking(
q
save/RestoreV2_9/tensor_namesConst*
dtype0*
_output_shapes
:* 
valueBBglobal_step
j
!save/RestoreV2_9/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ц
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2	*
_output_shapes
:
†
save/Assign_9Assignglobal_stepsave/RestoreV2_9*
use_locking(*
validate_shape(*
T0	*
_output_shapes
: *
_class
loc:@global_step
О
save/RestoreV2_10/tensor_namesConst*
_output_shapes
:*
dtype0*<
value3B1B'linear/linear_model/alcohol_use/weights
v
"save/RestoreV2_10/shape_and_slicesConst* 
valueBB3 1 0,3:0,1*
dtype0*
_output_shapes
:
Я
save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes

:
р
save/Assign_10Assign.linear/linear_model/alcohol_use/weights/part_0save/RestoreV2_10*
_output_shapes

:*
validate_shape(*A
_class7
53loc:@linear/linear_model/alcohol_use/weights/part_0*
T0*
use_locking(
Ю
save/RestoreV2_11/tensor_namesConst*
_output_shapes
:*
dtype0*L
valueCBAB7linear/linear_model/alcohol_use_X_cigarette_use/weights
v
"save/RestoreV2_11/shape_and_slicesConst*
_output_shapes
:*
dtype0* 
valueBB9 1 0,9:0,1
Я
save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
_output_shapes

:	*
dtypes
2
Р
save/Assign_11Assign>linear/linear_model/alcohol_use_X_cigarette_use/weights/part_0save/RestoreV2_11*Q
_classG
ECloc:@linear/linear_model/alcohol_use_X_cigarette_use/weights/part_0*
_output_shapes

:	*
T0*
validate_shape(*
use_locking(
З
save/RestoreV2_12/tensor_namesConst*5
value,B*B linear/linear_model/bias_weights*
dtype0*
_output_shapes
:
p
"save/RestoreV2_12/shape_and_slicesConst*
valueBB1 0,1*
dtype0*
_output_shapes
:
Ы
save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
_output_shapes
:*
dtypes
2
ё
save/Assign_12Assign'linear/linear_model/bias_weights/part_0save/RestoreV2_12*
_output_shapes
:*
validate_shape(*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
T0*
use_locking(
Р
save/RestoreV2_13/tensor_namesConst*>
value5B3B)linear/linear_model/cigarette_use/weights*
_output_shapes
:*
dtype0
v
"save/RestoreV2_13/shape_and_slicesConst*
_output_shapes
:*
dtype0* 
valueBB3 1 0,3:0,1
Я
save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
_output_shapes

:*
dtypes
2
ф
save/Assign_13Assign0linear/linear_model/cigarette_use/weights/part_0save/RestoreV2_13*
use_locking(*
T0*C
_class9
75loc:@linear/linear_model/cigarette_use/weights/part_0*
validate_shape(*
_output_shapes

:
К
save/RestoreV2_14/tensor_namesConst*8
value/B-B#linear/linear_model/is_male/weights*
dtype0*
_output_shapes
:
v
"save/RestoreV2_14/shape_and_slicesConst*
_output_shapes
:*
dtype0* 
valueBB2 1 0,2:0,1
Я
save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes

:
и
save/Assign_14Assign*linear/linear_model/is_male/weights/part_0save/RestoreV2_14*
use_locking(*
T0*=
_class3
1/loc:@linear/linear_model/is_male/weights/part_0*
validate_shape(*
_output_shapes

:
¶
save/RestoreV2_15/tensor_namesConst*T
valueKBIB?linear/linear_model/mother_age_bucketized_X_mother_race/weights*
dtype0*
_output_shapes
:
z
"save/RestoreV2_15/shape_and_slicesConst*$
valueBB120 1 0,120:0,1*
_output_shapes
:*
dtype0
Я
save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
_output_shapes

:x*
dtypes
2
†
save/Assign_15AssignFlinear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0save/RestoreV2_15*
_output_shapes

:x*
validate_shape(*Y
_classO
MKloc:@linear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0*
T0*
use_locking(
С
save/RestoreV2_16/tensor_namesConst*?
value6B4B*linear/linear_model/mother_married/weights*
_output_shapes
:*
dtype0
v
"save/RestoreV2_16/shape_and_slicesConst* 
valueBB2 1 0,2:0,1*
dtype0*
_output_shapes
:
Я
save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes

:
ц
save/Assign_16Assign1linear/linear_model/mother_married/weights/part_0save/RestoreV2_16*
_output_shapes

:*
validate_shape(*D
_class:
86loc:@linear/linear_model/mother_married/weights/part_0*
T0*
use_locking(
О
save/RestoreV2_17/tensor_namesConst*
_output_shapes
:*
dtype0*<
value3B1B'linear/linear_model/mother_race/weights
x
"save/RestoreV2_17/shape_and_slicesConst*"
valueBB12 1 0,12:0,1*
_output_shapes
:*
dtype0
Я
save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes

:
р
save/Assign_17Assign.linear/linear_model/mother_race/weights/part_0save/RestoreV2_17*
use_locking(*
validate_shape(*
T0*
_output_shapes

:*A
_class7
53loc:@linear/linear_model/mother_race/weights/part_0
ј
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17
-
save/restore_allNoOp^save/restore_shard

initNoOp
н
init_all_tablesNoOpj^dnn/input_from_feature_columns/input_layer/alcohol_use_indicator/alcohol_use_lookup/hash_table/table_initn^dnn/input_from_feature_columns/input_layer/cigarette_use_indicator/cigarette_use_lookup/hash_table/table_initb^dnn/input_from_feature_columns/input_layer/is_male_indicator/is_male_lookup/hash_table/table_initВ^dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_race_lookup/hash_table/table_initp^dnn/input_from_feature_columns/input_layer/mother_married_indicator/mother_married_lookup/hash_table/table_initI^linear/linear_model/alcohol_use/alcohol_use_lookup/hash_table/table_init[^linear/linear_model/alcohol_use_X_cigarette_use/cigarette_use_lookup/hash_table/table_initA^linear/linear_model/is_male/is_male_lookup/hash_table/table_inita^linear/linear_model/mother_age_bucketized_X_mother_race/mother_race_lookup/hash_table/table_initO^linear/linear_model/mother_married/mother_married_lookup/hash_table/table_init
+

group_depsNoOp^init^init_all_tables
R
save_1/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0
Ж
save_1/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_527161c5f515401ca7131b88227e252e/part
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
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
Б
save_1/SaveV2/tensor_namesConst*≤
value®B•Bdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBjdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weightsBdnn/logits/biasBdnn/logits/kernelBglobal_stepB'linear/linear_model/alcohol_use/weightsB7linear/linear_model/alcohol_use_X_cigarette_use/weightsB linear/linear_model/bias_weightsB)linear/linear_model/cigarette_use/weightsB#linear/linear_model/is_male/weightsB?linear/linear_model/mother_age_bucketized_X_mother_race/weightsB*linear/linear_model/mother_married/weightsB'linear/linear_model/mother_race/weights*
dtype0*
_output_shapes
:
«
save_1/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*ф
valueкBзB64 0,64B30 64 0,30:0,64B32 0,32B64 32 0,64:0,32B16 0,16B32 16 0,32:0,16B120 5 0,120:0,5B1 0,1B16 1 0,16:0,1B B3 1 0,3:0,1B9 1 0,9:0,1B1 0,1B3 1 0,3:0,1B2 1 0,2:0,1B120 1 0,120:0,1B2 1 0,2:0,1B12 1 0,12:0,1
ц
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices"dnn/hiddenlayer_0/bias/part_0/read$dnn/hiddenlayer_0/kernel/part_0/read"dnn/hiddenlayer_1/bias/part_0/read$dnn/hiddenlayer_1/kernel/part_0/read"dnn/hiddenlayer_2/bias/part_0/read$dnn/hiddenlayer_2/kernel/part_0/readvdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0/readdnn/logits/bias/part_0/readdnn/logits/kernel/part_0/readglobal_step3linear/linear_model/alcohol_use/weights/part_0/readClinear/linear_model/alcohol_use_X_cigarette_use/weights/part_0/read,linear/linear_model/bias_weights/part_0/read5linear/linear_model/cigarette_use/weights/part_0/read/linear/linear_model/is_male/weights/part_0/readKlinear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0/read6linear/linear_model/mother_married/weights/part_0/read3linear/linear_model/mother_race/weights/part_0/read* 
dtypes
2	
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
save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints*
_output_shapes
: *
T0
|
save_1/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*+
value"B Bdnn/hiddenlayer_0/bias
q
!save_1/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueBB64 0,64
Ъ
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:@
»
save_1/AssignAssigndnn/hiddenlayer_0/bias/part_0save_1/RestoreV2*
use_locking(*
T0*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
validate_shape(*
_output_shapes
:@
А
save_1/RestoreV2_1/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_0/kernel*
_output_shapes
:*
dtype0
{
#save_1/RestoreV2_1/shape_and_slicesConst*$
valueBB30 64 0,30:0,64*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes

:@
‘
save_1/Assign_1Assigndnn/hiddenlayer_0/kernel/part_0save_1/RestoreV2_1*
_output_shapes

:@*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
T0*
use_locking(
~
save_1/RestoreV2_2/tensor_namesConst*
_output_shapes
:*
dtype0*+
value"B Bdnn/hiddenlayer_1/bias
s
#save_1/RestoreV2_2/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueBB32 0,32
†
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
: 
ћ
save_1/Assign_2Assigndnn/hiddenlayer_1/bias/part_0save_1/RestoreV2_2*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
А
save_1/RestoreV2_3/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_1/kernel*
dtype0*
_output_shapes
:
{
#save_1/RestoreV2_3/shape_and_slicesConst*
dtype0*
_output_shapes
:*$
valueBB64 32 0,64:0,32
§
save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes

:@ 
‘
save_1/Assign_3Assigndnn/hiddenlayer_1/kernel/part_0save_1/RestoreV2_3*
use_locking(*
validate_shape(*
T0*
_output_shapes

:@ *2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
~
save_1/RestoreV2_4/tensor_namesConst*+
value"B Bdnn/hiddenlayer_2/bias*
dtype0*
_output_shapes
:
s
#save_1/RestoreV2_4/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueBB16 0,16
†
save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
ћ
save_1/Assign_4Assigndnn/hiddenlayer_2/bias/part_0save_1/RestoreV2_4*
_output_shapes
:*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
T0*
use_locking(
А
save_1/RestoreV2_5/tensor_namesConst*
dtype0*
_output_shapes
:*-
value$B"Bdnn/hiddenlayer_2/kernel
{
#save_1/RestoreV2_5/shape_and_slicesConst*
dtype0*
_output_shapes
:*$
valueBB32 16 0,32:0,16
§
save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
_output_shapes

: *
dtypes
2
‘
save_1/Assign_5Assigndnn/hiddenlayer_2/kernel/part_0save_1/RestoreV2_5*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

: *
T0*
validate_shape(*
use_locking(
“
save_1/RestoreV2_6/tensor_namesConst*
valuevBtBjdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights*
_output_shapes
:*
dtype0
{
#save_1/RestoreV2_6/shape_and_slicesConst*$
valueBB120 5 0,120:0,5*
_output_shapes
:*
dtype0
§
save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
_output_shapes

:x*
dtypes
2
щ
save_1/Assign_6Assignqdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0save_1/RestoreV2_6*
_output_shapes

:x*
validate_shape(*Д
_classz
xvloc:@dnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0*
T0*
use_locking(
w
save_1/RestoreV2_7/tensor_namesConst*
_output_shapes
:*
dtype0*$
valueBBdnn/logits/bias
q
#save_1/RestoreV2_7/shape_and_slicesConst*
valueBB1 0,1*
dtype0*
_output_shapes
:
†
save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
_output_shapes
:*
dtypes
2
Њ
save_1/Assign_7Assigndnn/logits/bias/part_0save_1/RestoreV2_7*
_output_shapes
:*
validate_shape(*)
_class
loc:@dnn/logits/bias/part_0*
T0*
use_locking(
y
save_1/RestoreV2_8/tensor_namesConst*&
valueBBdnn/logits/kernel*
dtype0*
_output_shapes
:
y
#save_1/RestoreV2_8/shape_and_slicesConst*
dtype0*
_output_shapes
:*"
valueBB16 1 0,16:0,1
§
save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
_output_shapes

:*
dtypes
2
∆
save_1/Assign_8Assigndnn/logits/kernel/part_0save_1/RestoreV2_8*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:*
T0*
validate_shape(*
use_locking(
s
save_1/RestoreV2_9/tensor_namesConst* 
valueBBglobal_step*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_9/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 
Ю
save_1/RestoreV2_9	RestoreV2save_1/Constsave_1/RestoreV2_9/tensor_names#save_1/RestoreV2_9/shape_and_slices*
dtypes
2	*
_output_shapes
:
§
save_1/Assign_9Assignglobal_stepsave_1/RestoreV2_9*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
Р
 save_1/RestoreV2_10/tensor_namesConst*<
value3B1B'linear/linear_model/alcohol_use/weights*
_output_shapes
:*
dtype0
x
$save_1/RestoreV2_10/shape_and_slicesConst* 
valueBB3 1 0,3:0,1*
_output_shapes
:*
dtype0
І
save_1/RestoreV2_10	RestoreV2save_1/Const save_1/RestoreV2_10/tensor_names$save_1/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes

:
ф
save_1/Assign_10Assign.linear/linear_model/alcohol_use/weights/part_0save_1/RestoreV2_10*
_output_shapes

:*
validate_shape(*A
_class7
53loc:@linear/linear_model/alcohol_use/weights/part_0*
T0*
use_locking(
†
 save_1/RestoreV2_11/tensor_namesConst*L
valueCBAB7linear/linear_model/alcohol_use_X_cigarette_use/weights*
dtype0*
_output_shapes
:
x
$save_1/RestoreV2_11/shape_and_slicesConst* 
valueBB9 1 0,9:0,1*
_output_shapes
:*
dtype0
І
save_1/RestoreV2_11	RestoreV2save_1/Const save_1/RestoreV2_11/tensor_names$save_1/RestoreV2_11/shape_and_slices*
_output_shapes

:	*
dtypes
2
Ф
save_1/Assign_11Assign>linear/linear_model/alcohol_use_X_cigarette_use/weights/part_0save_1/RestoreV2_11*
use_locking(*
T0*Q
_classG
ECloc:@linear/linear_model/alcohol_use_X_cigarette_use/weights/part_0*
validate_shape(*
_output_shapes

:	
Й
 save_1/RestoreV2_12/tensor_namesConst*5
value,B*B linear/linear_model/bias_weights*
dtype0*
_output_shapes
:
r
$save_1/RestoreV2_12/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueBB1 0,1
£
save_1/RestoreV2_12	RestoreV2save_1/Const save_1/RestoreV2_12/tensor_names$save_1/RestoreV2_12/shape_and_slices*
_output_shapes
:*
dtypes
2
в
save_1/Assign_12Assign'linear/linear_model/bias_weights/part_0save_1/RestoreV2_12*
_output_shapes
:*
validate_shape(*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
T0*
use_locking(
Т
 save_1/RestoreV2_13/tensor_namesConst*
dtype0*
_output_shapes
:*>
value5B3B)linear/linear_model/cigarette_use/weights
x
$save_1/RestoreV2_13/shape_and_slicesConst*
_output_shapes
:*
dtype0* 
valueBB3 1 0,3:0,1
І
save_1/RestoreV2_13	RestoreV2save_1/Const save_1/RestoreV2_13/tensor_names$save_1/RestoreV2_13/shape_and_slices*
_output_shapes

:*
dtypes
2
ш
save_1/Assign_13Assign0linear/linear_model/cigarette_use/weights/part_0save_1/RestoreV2_13*C
_class9
75loc:@linear/linear_model/cigarette_use/weights/part_0*
_output_shapes

:*
T0*
validate_shape(*
use_locking(
М
 save_1/RestoreV2_14/tensor_namesConst*8
value/B-B#linear/linear_model/is_male/weights*
_output_shapes
:*
dtype0
x
$save_1/RestoreV2_14/shape_and_slicesConst*
_output_shapes
:*
dtype0* 
valueBB2 1 0,2:0,1
І
save_1/RestoreV2_14	RestoreV2save_1/Const save_1/RestoreV2_14/tensor_names$save_1/RestoreV2_14/shape_and_slices*
_output_shapes

:*
dtypes
2
м
save_1/Assign_14Assign*linear/linear_model/is_male/weights/part_0save_1/RestoreV2_14*
use_locking(*
validate_shape(*
T0*
_output_shapes

:*=
_class3
1/loc:@linear/linear_model/is_male/weights/part_0
®
 save_1/RestoreV2_15/tensor_namesConst*T
valueKBIB?linear/linear_model/mother_age_bucketized_X_mother_race/weights*
_output_shapes
:*
dtype0
|
$save_1/RestoreV2_15/shape_and_slicesConst*
_output_shapes
:*
dtype0*$
valueBB120 1 0,120:0,1
І
save_1/RestoreV2_15	RestoreV2save_1/Const save_1/RestoreV2_15/tensor_names$save_1/RestoreV2_15/shape_and_slices*
_output_shapes

:x*
dtypes
2
§
save_1/Assign_15AssignFlinear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0save_1/RestoreV2_15*
_output_shapes

:x*
validate_shape(*Y
_classO
MKloc:@linear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0*
T0*
use_locking(
У
 save_1/RestoreV2_16/tensor_namesConst*
_output_shapes
:*
dtype0*?
value6B4B*linear/linear_model/mother_married/weights
x
$save_1/RestoreV2_16/shape_and_slicesConst* 
valueBB2 1 0,2:0,1*
dtype0*
_output_shapes
:
І
save_1/RestoreV2_16	RestoreV2save_1/Const save_1/RestoreV2_16/tensor_names$save_1/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes

:
ъ
save_1/Assign_16Assign1linear/linear_model/mother_married/weights/part_0save_1/RestoreV2_16*
use_locking(*
validate_shape(*
T0*
_output_shapes

:*D
_class:
86loc:@linear/linear_model/mother_married/weights/part_0
Р
 save_1/RestoreV2_17/tensor_namesConst*<
value3B1B'linear/linear_model/mother_race/weights*
_output_shapes
:*
dtype0
z
$save_1/RestoreV2_17/shape_and_slicesConst*
dtype0*
_output_shapes
:*"
valueBB12 1 0,12:0,1
І
save_1/RestoreV2_17	RestoreV2save_1/Const save_1/RestoreV2_17/tensor_names$save_1/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes

:
ф
save_1/Assign_17Assign.linear/linear_model/mother_race/weights/part_0save_1/RestoreV2_17*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/mother_race/weights/part_0*
validate_shape(*
_output_shapes

:
ж
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"љ%
	variablesѓ%ђ%
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
ц
sdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0:0xdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0/Assignxdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0/read:0"x
jdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weightsx  "x2Рdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0/Initializer/truncated_normal:0
ў
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign&dnn/hiddenlayer_0/kernel/part_0/read:0"&
dnn/hiddenlayer_0/kernel@  "@2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:0
√
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign$dnn/hiddenlayer_0/bias/part_0/read:0"!
dnn/hiddenlayer_0/bias@ "@21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:0
ў
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign&dnn/hiddenlayer_1/kernel/part_0/read:0"&
dnn/hiddenlayer_1/kernel@   "@ 2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:0
√
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign$dnn/hiddenlayer_1/bias/part_0/read:0"!
dnn/hiddenlayer_1/bias  " 21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:0
ў
!dnn/hiddenlayer_2/kernel/part_0:0&dnn/hiddenlayer_2/kernel/part_0/Assign&dnn/hiddenlayer_2/kernel/part_0/read:0"&
dnn/hiddenlayer_2/kernel   " 2<dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform:0
√
dnn/hiddenlayer_2/bias/part_0:0$dnn/hiddenlayer_2/bias/part_0/Assign$dnn/hiddenlayer_2/bias/part_0/read:0"!
dnn/hiddenlayer_2/bias "21dnn/hiddenlayer_2/bias/part_0/Initializer/zeros:0
ґ
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assigndnn/logits/kernel/part_0/read:0"
dnn/logits/kernel  "25dnn/logits/kernel/part_0/Initializer/random_uniform:0
†
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assigndnn/logits/bias/part_0/read:0"
dnn/logits/bias "2*dnn/logits/bias/part_0/Initializer/zeros:0
Ы
0linear/linear_model/alcohol_use/weights/part_0:05linear/linear_model/alcohol_use/weights/part_0/Assign5linear/linear_model/alcohol_use/weights/part_0/read:0"5
'linear/linear_model/alcohol_use/weights  "2Blinear/linear_model/alcohol_use/weights/part_0/Initializer/zeros:0
л
@linear/linear_model/alcohol_use_X_cigarette_use/weights/part_0:0Elinear/linear_model/alcohol_use_X_cigarette_use/weights/part_0/AssignElinear/linear_model/alcohol_use_X_cigarette_use/weights/part_0/read:0"E
7linear/linear_model/alcohol_use_X_cigarette_use/weights	  "	2Rlinear/linear_model/alcohol_use_X_cigarette_use/weights/part_0/Initializer/zeros:0
•
2linear/linear_model/cigarette_use/weights/part_0:07linear/linear_model/cigarette_use/weights/part_0/Assign7linear/linear_model/cigarette_use/weights/part_0/read:0"7
)linear/linear_model/cigarette_use/weights  "2Dlinear/linear_model/cigarette_use/weights/part_0/Initializer/zeros:0
З
,linear/linear_model/is_male/weights/part_0:01linear/linear_model/is_male/weights/part_0/Assign1linear/linear_model/is_male/weights/part_0/read:0"1
#linear/linear_model/is_male/weights  "2>linear/linear_model/is_male/weights/part_0/Initializer/zeros:0
У
Hlinear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0:0Mlinear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0/AssignMlinear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0/read:0"M
?linear/linear_model/mother_age_bucketized_X_mother_race/weightsx  "x2Zlinear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0/Initializer/zeros:0
™
3linear/linear_model/mother_married/weights/part_0:08linear/linear_model/mother_married/weights/part_0/Assign8linear/linear_model/mother_married/weights/part_0/read:0"8
*linear/linear_model/mother_married/weights  "2Elinear/linear_model/mother_married/weights/part_0/Initializer/zeros:0
Ы
0linear/linear_model/mother_race/weights/part_0:05linear/linear_model/mother_race/weights/part_0/Assign5linear/linear_model/mother_race/weights/part_0/read:0"5
'linear/linear_model/mother_race/weights  "2Blinear/linear_model/mother_race/weights/part_0/Initializer/zeros:0
х
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign.linear/linear_model/bias_weights/part_0/read:0"+
 linear/linear_model/bias_weights "2;linear/linear_model/bias_weights/part_0/Initializer/zeros:0"Ь
	summariesО
Л
/dnn/dnn/hiddenlayer_0/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_0/activation:0
/dnn/dnn/hiddenlayer_1/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_1/activation:0
/dnn/dnn/hiddenlayer_2/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_2/activation:0
(dnn/dnn/logits/fraction_of_zero_values:0
dnn/dnn/logits/activation:0
'linear/linear/fraction_of_zero_values:0
linear/linear/activation:0"н$
trainable_variables’$“$
ц
sdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0:0xdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0/Assignxdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0/read:0"x
jdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weightsx  "x2Рdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0/Initializer/truncated_normal:0
ў
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign&dnn/hiddenlayer_0/kernel/part_0/read:0"&
dnn/hiddenlayer_0/kernel@  "@2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:0
√
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign$dnn/hiddenlayer_0/bias/part_0/read:0"!
dnn/hiddenlayer_0/bias@ "@21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:0
ў
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign&dnn/hiddenlayer_1/kernel/part_0/read:0"&
dnn/hiddenlayer_1/kernel@   "@ 2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:0
√
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign$dnn/hiddenlayer_1/bias/part_0/read:0"!
dnn/hiddenlayer_1/bias  " 21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:0
ў
!dnn/hiddenlayer_2/kernel/part_0:0&dnn/hiddenlayer_2/kernel/part_0/Assign&dnn/hiddenlayer_2/kernel/part_0/read:0"&
dnn/hiddenlayer_2/kernel   " 2<dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform:0
√
dnn/hiddenlayer_2/bias/part_0:0$dnn/hiddenlayer_2/bias/part_0/Assign$dnn/hiddenlayer_2/bias/part_0/read:0"!
dnn/hiddenlayer_2/bias "21dnn/hiddenlayer_2/bias/part_0/Initializer/zeros:0
ґ
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assigndnn/logits/kernel/part_0/read:0"
dnn/logits/kernel  "25dnn/logits/kernel/part_0/Initializer/random_uniform:0
†
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assigndnn/logits/bias/part_0/read:0"
dnn/logits/bias "2*dnn/logits/bias/part_0/Initializer/zeros:0
Ы
0linear/linear_model/alcohol_use/weights/part_0:05linear/linear_model/alcohol_use/weights/part_0/Assign5linear/linear_model/alcohol_use/weights/part_0/read:0"5
'linear/linear_model/alcohol_use/weights  "2Blinear/linear_model/alcohol_use/weights/part_0/Initializer/zeros:0
л
@linear/linear_model/alcohol_use_X_cigarette_use/weights/part_0:0Elinear/linear_model/alcohol_use_X_cigarette_use/weights/part_0/AssignElinear/linear_model/alcohol_use_X_cigarette_use/weights/part_0/read:0"E
7linear/linear_model/alcohol_use_X_cigarette_use/weights	  "	2Rlinear/linear_model/alcohol_use_X_cigarette_use/weights/part_0/Initializer/zeros:0
•
2linear/linear_model/cigarette_use/weights/part_0:07linear/linear_model/cigarette_use/weights/part_0/Assign7linear/linear_model/cigarette_use/weights/part_0/read:0"7
)linear/linear_model/cigarette_use/weights  "2Dlinear/linear_model/cigarette_use/weights/part_0/Initializer/zeros:0
З
,linear/linear_model/is_male/weights/part_0:01linear/linear_model/is_male/weights/part_0/Assign1linear/linear_model/is_male/weights/part_0/read:0"1
#linear/linear_model/is_male/weights  "2>linear/linear_model/is_male/weights/part_0/Initializer/zeros:0
У
Hlinear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0:0Mlinear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0/AssignMlinear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0/read:0"M
?linear/linear_model/mother_age_bucketized_X_mother_race/weightsx  "x2Zlinear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0/Initializer/zeros:0
™
3linear/linear_model/mother_married/weights/part_0:08linear/linear_model/mother_married/weights/part_0/Assign8linear/linear_model/mother_married/weights/part_0/read:0"8
*linear/linear_model/mother_married/weights  "2Elinear/linear_model/mother_married/weights/part_0/Initializer/zeros:0
Ы
0linear/linear_model/mother_race/weights/part_0:05linear/linear_model/mother_race/weights/part_0/Assign5linear/linear_model/mother_race/weights/part_0/read:0"5
'linear/linear_model/mother_race/weights  "2Blinear/linear_model/mother_race/weights/part_0/Initializer/zeros:0
х
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign.linear/linear_model/bias_weights/part_0/read:0"+
 linear/linear_model/bias_weights "2;linear/linear_model/bias_weights/part_0/Initializer/zeros:0"е
table_initializerѕ
ћ
idnn/input_from_feature_columns/input_layer/alcohol_use_indicator/alcohol_use_lookup/hash_table/table_init
mdnn/input_from_feature_columns/input_layer/cigarette_use_indicator/cigarette_use_lookup/hash_table/table_init
adnn/input_from_feature_columns/input_layer/is_male_indicator/is_male_lookup/hash_table/table_init
Бdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/mother_race_lookup/hash_table/table_init
odnn/input_from_feature_columns/input_layer/mother_married_indicator/mother_married_lookup/hash_table/table_init
Hlinear/linear_model/alcohol_use/alcohol_use_lookup/hash_table/table_init
Zlinear/linear_model/alcohol_use_X_cigarette_use/cigarette_use_lookup/hash_table/table_init
@linear/linear_model/is_male/is_male_lookup/hash_table/table_init
`linear/linear_model/mother_age_bucketized_X_mother_race/mother_race_lookup/hash_table/table_init
Nlinear/linear_model/mother_married/mother_married_lookup/hash_table/table_init" 
global_step

global_step:0"І
model_variablesУР
ц
sdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0:0xdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0/Assignxdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0/read:0"x
jdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weightsx  "x2Рdnn/input_from_feature_columns/input_layer/mother_age_bucketized_X_mother_race_embedding/embedding_weights/part_0/Initializer/truncated_normal:0
Ы
0linear/linear_model/alcohol_use/weights/part_0:05linear/linear_model/alcohol_use/weights/part_0/Assign5linear/linear_model/alcohol_use/weights/part_0/read:0"5
'linear/linear_model/alcohol_use/weights  "2Blinear/linear_model/alcohol_use/weights/part_0/Initializer/zeros:0
л
@linear/linear_model/alcohol_use_X_cigarette_use/weights/part_0:0Elinear/linear_model/alcohol_use_X_cigarette_use/weights/part_0/AssignElinear/linear_model/alcohol_use_X_cigarette_use/weights/part_0/read:0"E
7linear/linear_model/alcohol_use_X_cigarette_use/weights	  "	2Rlinear/linear_model/alcohol_use_X_cigarette_use/weights/part_0/Initializer/zeros:0
•
2linear/linear_model/cigarette_use/weights/part_0:07linear/linear_model/cigarette_use/weights/part_0/Assign7linear/linear_model/cigarette_use/weights/part_0/read:0"7
)linear/linear_model/cigarette_use/weights  "2Dlinear/linear_model/cigarette_use/weights/part_0/Initializer/zeros:0
З
,linear/linear_model/is_male/weights/part_0:01linear/linear_model/is_male/weights/part_0/Assign1linear/linear_model/is_male/weights/part_0/read:0"1
#linear/linear_model/is_male/weights  "2>linear/linear_model/is_male/weights/part_0/Initializer/zeros:0
У
Hlinear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0:0Mlinear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0/AssignMlinear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0/read:0"M
?linear/linear_model/mother_age_bucketized_X_mother_race/weightsx  "x2Zlinear/linear_model/mother_age_bucketized_X_mother_race/weights/part_0/Initializer/zeros:0
™
3linear/linear_model/mother_married/weights/part_0:08linear/linear_model/mother_married/weights/part_0/Assign8linear/linear_model/mother_married/weights/part_0/read:0"8
*linear/linear_model/mother_married/weights  "2Elinear/linear_model/mother_married/weights/part_0/Initializer/zeros:0
Ы
0linear/linear_model/mother_race/weights/part_0:05linear/linear_model/mother_race/weights/part_0/Assign5linear/linear_model/mother_race/weights/part_0/read:0"5
'linear/linear_model/mother_race/weights  "2Blinear/linear_model/mother_race/weights/part_0/Initializer/zeros:0
х
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign.linear/linear_model/bias_weights/part_0/read:0"+
 linear/linear_model/bias_weights "2;linear/linear_model/bias_weights/part_0/Initializer/zeros:0" 
legacy_init_op


group_deps*х
predictй
3
cigarette_use"
Placeholder_4:0€€€€€€€€€
5
gestation_weeks"
Placeholder_2:0€€€€€€€€€
4
mother_married"
Placeholder_6:0€€€€€€€€€
1
alcohol_use"
Placeholder_5:0€€€€€€€€€
/
	plurality"
Placeholder_1:0€€€€€€€€€
.

mother_age 
Placeholder:0€€€€€€€€€
-
is_male"
Placeholder_7:0€€€€€€€€€
1
mother_race"
Placeholder_3:0€€€€€€€€€3
predictions$
head/logits:0€€€€€€€€€tensorflow/serving/predict