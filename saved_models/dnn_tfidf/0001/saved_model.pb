??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
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
;
Elu
features"T
activations"T"
Ttype:
2
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
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
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
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
y

SegmentSum	
data"T
segment_ids"Tindices
output"T" 
Ttype:
2	"
Tindicestype:
2	
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
0
Sigmoid
x"T
y"T"
Ttype:

2
?
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
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-0-gc256c071bb28??
z
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?N?*
shared_namedense_3/kernel
s
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel* 
_output_shapes
:
?N?*
dtype0
q
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_3/bias
j
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes	
:?*
dtype0
z
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_4/kernel
s
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel* 
_output_shapes
:
??*
dtype0
q
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_4/bias
j
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes	
:?*
dtype0
y
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense_5/kernel
r
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes
:	?*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

 kernel
!bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
6
&iter
	'decay
(learning_rate
)momentum
*
0
1
2
3
 4
!5
*
0
1
2
3
 4
!5
 
?
*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
trainable_variables
	regularization_losses
 
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
/non_trainable_variables

0layers
1metrics
2layer_regularization_losses
3layer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
?
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
trainable_variables
regularization_losses
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_4/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
?
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
ZX
VARIABLE_VALUEdense_5/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_5/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

 0
!1

 0
!1
 
?
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
"	variables
#trainable_variables
$regularization_losses
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
 
#
0
1
2
3
4

H0
I1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Jtotal
	Kcount
L	variables
M	keras_api
D
	Ntotal
	Ocount
P
_fn_kwargs
Q	variables
R	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

J0
K1

L	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

N0
O1

Q	variables
y
serving_default_args_0Placeholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
s
serving_default_args_0_1Placeholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
a
serving_default_args_0_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_args_0serving_default_args_0_1serving_default_args_0_2dense_3/kerneldense_3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias*
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_220782
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_221176
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_3/kerneldense_3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_221228??
?

?
C__inference_dense_5_layer_call_and_return_conditional_losses_220531

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_221077

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?W
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_220958

inputs	
inputs_1
inputs_2	K
7dense_3_embedding_lookup_sparse_embedding_lookup_220902:
?N?6
'dense_3_biasadd_readvariableop_resource:	?:
&dense_4_matmul_readvariableop_resource:
??6
'dense_4_biasadd_readvariableop_resource:	?9
&dense_5_matmul_readvariableop_resource:	?5
'dense_5_biasadd_readvariableop_resource:
identity??dense_3/BiasAdd/ReadVariableOp?0dense_3/embedding_lookup_sparse/embedding_lookup?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOpf
!dense_3/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
/dense_3/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsinputsinputs_1inputs_2*dense_3/SparseFillEmptyRows/Const:output:0*
T0*T
_output_shapesB
@:?????????:?????????:?????????:?????????l
dense_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       n
dense_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       n
dense_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
dense_3/strided_sliceStridedSlice@dense_3/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0$dense_3/strided_slice/stack:output:0&dense_3/strided_slice/stack_1:output:0&dense_3/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
3dense_3/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
5dense_3/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
5dense_3/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
-dense_3/embedding_lookup_sparse/strided_sliceStridedSlice@dense_3/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0<dense_3/embedding_lookup_sparse/strided_slice/stack:output:0>dense_3/embedding_lookup_sparse/strided_slice/stack_1:output:0>dense_3/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
&dense_3/embedding_lookup_sparse/UniqueUniquedense_3/strided_slice:output:0*
T0	*2
_output_shapes 
:?????????:??????????
0dense_3/embedding_lookup_sparse/embedding_lookupResourceGather7dense_3_embedding_lookup_sparse_embedding_lookup_220902*dense_3/embedding_lookup_sparse/Unique:y:0*
Tindices0	*J
_class@
><loc:@dense_3/embedding_lookup_sparse/embedding_lookup/220902*(
_output_shapes
:??????????*
dtype0?
9dense_3/embedding_lookup_sparse/embedding_lookup/IdentityIdentity9dense_3/embedding_lookup_sparse/embedding_lookup:output:0*
T0*J
_class@
><loc:@dense_3/embedding_lookup_sparse/embedding_lookup/220902*(
_output_shapes
:???????????
;dense_3/embedding_lookup_sparse/embedding_lookup/Identity_1IdentityBdense_3/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:???????????
$dense_3/embedding_lookup_sparse/CastCast6dense_3/embedding_lookup_sparse/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????o
-dense_3/embedding_lookup_sparse/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(dense_3/embedding_lookup_sparse/GatherV2GatherV2Ddense_3/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0,dense_3/embedding_lookup_sparse/Unique:idx:06dense_3/embedding_lookup_sparse/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*(
_output_shapes
:??????????f
$dense_3/embedding_lookup_sparse/RankConst*
_output_shapes
: *
dtype0*
value	B :g
%dense_3/embedding_lookup_sparse/sub/yConst*
_output_shapes
: *
dtype0*
value	B :?
#dense_3/embedding_lookup_sparse/subSub-dense_3/embedding_lookup_sparse/Rank:output:0.dense_3/embedding_lookup_sparse/sub/y:output:0*
T0*
_output_shapes
: p
.dense_3/embedding_lookup_sparse/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
*dense_3/embedding_lookup_sparse/ExpandDims
ExpandDims'dense_3/embedding_lookup_sparse/sub:z:07dense_3/embedding_lookup_sparse/ExpandDims/dim:output:0*
T0*
_output_shapes
:l
*dense_3/embedding_lookup_sparse/ones/ConstConst*
_output_shapes
: *
dtype0*
value	B :?
$dense_3/embedding_lookup_sparse/onesFill3dense_3/embedding_lookup_sparse/ExpandDims:output:03dense_3/embedding_lookup_sparse/ones/Const:output:0*
T0*
_output_shapes
:?
%dense_3/embedding_lookup_sparse/ShapeShape?dense_3/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0*
_output_shapes
:m
+dense_3/embedding_lookup_sparse/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&dense_3/embedding_lookup_sparse/concatConcatV2.dense_3/embedding_lookup_sparse/Shape:output:0-dense_3/embedding_lookup_sparse/ones:output:04dense_3/embedding_lookup_sparse/concat/axis:output:0*
N*
T0*
_output_shapes
:?
'dense_3/embedding_lookup_sparse/ReshapeReshape?dense_3/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0/dense_3/embedding_lookup_sparse/concat:output:0*
T0*'
_output_shapes
:??????????
#dense_3/embedding_lookup_sparse/mulMul1dense_3/embedding_lookup_sparse/GatherV2:output:00dense_3/embedding_lookup_sparse/Reshape:output:0*
T0*(
_output_shapes
:???????????
dense_3/embedding_lookup_sparse
SegmentSum'dense_3/embedding_lookup_sparse/mul:z:0(dense_3/embedding_lookup_sparse/Cast:y:0*
T0*
Tindices0*(
_output_shapes
:???????????
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_3/BiasAddBiasAdd(dense_3/embedding_lookup_sparse:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
dense_3/EluEludense_3/BiasAdd:output:0*
T0*(
_output_shapes
:??????????\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_2/dropout/MulMuldense_3/Elu:activations:0 dropout_2/dropout/Const:output:0*
T0*(
_output_shapes
:??????????`
dropout_2/dropout/ShapeShapedense_3/Elu:activations:0*
T0*
_output_shapes
:?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_4/MatMulMatMuldropout_2/dropout/Mul_1:z:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
dense_4/EluEludense_4/BiasAdd:output:0*
T0*(
_output_shapes
:??????????\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_3/dropout/MulMuldense_4/Elu:activations:0 dropout_3/dropout/Const:output:0*
T0*(
_output_shapes
:??????????`
dropout_3/dropout/ShapeShapedense_4/Elu:activations:0*
T0*
_output_shapes
:?
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_5/MatMulMatMuldropout_3/dropout/Mul_1:z:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_5/SigmoidSigmoiddense_5/BiasAdd:output:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitydense_5/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp1^dense_3/embedding_lookup_sparse/embedding_lookup^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:?????????:?????????:: : : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2d
0dense_3/embedding_lookup_sparse/embedding_lookup0dense_3/embedding_lookup_sparse/embedding_lookup2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
?
F
*__inference_dropout_2_layer_call_fn_221020

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_220494a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_220518

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_dense_5_layer_call_fn_221098

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_220531o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
C__inference_dense_5_layer_call_and_return_conditional_losses_221109

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?8
?
"__inference__traced_restore_221228
file_prefix3
assignvariableop_dense_3_kernel:
?N?.
assignvariableop_1_dense_3_bias:	?5
!assignvariableop_2_dense_4_kernel:
??.
assignvariableop_3_dense_4_bias:	?4
!assignvariableop_4_dense_5_kernel:	?-
assignvariableop_5_dense_5_bias:%
assignvariableop_6_sgd_iter:	 &
assignvariableop_7_sgd_decay: .
$assignvariableop_8_sgd_learning_rate: )
assignvariableop_9_sgd_momentum: #
assignvariableop_10_total: #
assignvariableop_11_count: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: 
identity_15??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*P
_output_shapes>
<:::::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_dense_3_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_3_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_4_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_4_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_5_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_5_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_sgd_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_sgd_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp$assignvariableop_8_sgd_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_sgd_momentumIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_14Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_15IdentityIdentity_14:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_15Identity_15:output:0*1
_input_shapes 
: : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?

?
C__inference_dense_4_layer_call_and_return_conditional_losses_221062

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????O
EluEluBiasAdd:output:0*
T0*(
_output_shapes
:??????????a
IdentityIdentityElu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
d
E__inference_dropout_3_layer_call_and_return_conditional_losses_220583

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?1
?
C__inference_dense_3_layer_call_and_return_conditional_losses_220483

inputs	
inputs_1
inputs_2	C
/embedding_lookup_sparse_embedding_lookup_220457:
?N?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?(embedding_lookup_sparse/embedding_lookup^
SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
'SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsinputsinputs_1inputs_2"SparseFillEmptyRows/Const:output:0*
T0*T
_output_shapesB
@:?????????:?????????:?????????:?????????d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
strided_sliceStridedSlice8SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask|
+embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ~
-embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ~
-embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
%embedding_lookup_sparse/strided_sliceStridedSlice8SparseFillEmptyRows/SparseFillEmptyRows:output_indices:04embedding_lookup_sparse/strided_slice/stack:output:06embedding_lookup_sparse/strided_slice/stack_1:output:06embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask}
embedding_lookup_sparse/UniqueUniquestrided_slice:output:0*
T0	*2
_output_shapes 
:?????????:??????????
(embedding_lookup_sparse/embedding_lookupResourceGather/embedding_lookup_sparse_embedding_lookup_220457"embedding_lookup_sparse/Unique:y:0*
Tindices0	*B
_class8
64loc:@embedding_lookup_sparse/embedding_lookup/220457*(
_output_shapes
:??????????*
dtype0?
1embedding_lookup_sparse/embedding_lookup/IdentityIdentity1embedding_lookup_sparse/embedding_lookup:output:0*
T0*B
_class8
64loc:@embedding_lookup_sparse/embedding_lookup/220457*(
_output_shapes
:???????????
3embedding_lookup_sparse/embedding_lookup/Identity_1Identity:embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:???????????
embedding_lookup_sparse/CastCast.embedding_lookup_sparse/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????g
%embedding_lookup_sparse/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
 embedding_lookup_sparse/GatherV2GatherV2<embedding_lookup_sparse/embedding_lookup/Identity_1:output:0$embedding_lookup_sparse/Unique:idx:0.embedding_lookup_sparse/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*(
_output_shapes
:??????????^
embedding_lookup_sparse/RankConst*
_output_shapes
: *
dtype0*
value	B :_
embedding_lookup_sparse/sub/yConst*
_output_shapes
: *
dtype0*
value	B :?
embedding_lookup_sparse/subSub%embedding_lookup_sparse/Rank:output:0&embedding_lookup_sparse/sub/y:output:0*
T0*
_output_shapes
: h
&embedding_lookup_sparse/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
"embedding_lookup_sparse/ExpandDims
ExpandDimsembedding_lookup_sparse/sub:z:0/embedding_lookup_sparse/ExpandDims/dim:output:0*
T0*
_output_shapes
:d
"embedding_lookup_sparse/ones/ConstConst*
_output_shapes
: *
dtype0*
value	B :?
embedding_lookup_sparse/onesFill+embedding_lookup_sparse/ExpandDims:output:0+embedding_lookup_sparse/ones/Const:output:0*
T0*
_output_shapes
:?
embedding_lookup_sparse/ShapeShape7SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0*
_output_shapes
:e
#embedding_lookup_sparse/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
embedding_lookup_sparse/concatConcatV2&embedding_lookup_sparse/Shape:output:0%embedding_lookup_sparse/ones:output:0,embedding_lookup_sparse/concat/axis:output:0*
N*
T0*
_output_shapes
:?
embedding_lookup_sparse/ReshapeReshape7SparseFillEmptyRows/SparseFillEmptyRows:output_values:0'embedding_lookup_sparse/concat:output:0*
T0*'
_output_shapes
:??????????
embedding_lookup_sparse/mulMul)embedding_lookup_sparse/GatherV2:output:0(embedding_lookup_sparse/Reshape:output:0*
T0*(
_output_shapes
:???????????
embedding_lookup_sparse
SegmentSumembedding_lookup_sparse/mul:z:0 embedding_lookup_sparse/Cast:y:0*
T0*
Tindices0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAdd embedding_lookup_sparse:output:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????O
EluEluBiasAdd:output:0*
T0*(
_output_shapes
:??????????a
IdentityIdentityElu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp)^embedding_lookup_sparse/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????:?????????:: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2T
(embedding_lookup_sparse/embedding_lookup(embedding_lookup_sparse/embedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
?	
?
(__inference_dense_3_layer_call_fn_220969

inputs	
inputs_1
inputs_2	
unknown:
?N?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2unknown	unknown_0*
Tin	
2		*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_220483p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????:?????????:: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
?

?
-__inference_sequential_1_layer_call_fn_220820

inputs	
inputs_1
inputs_2	
unknown:
?N?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_220677o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:?????????:?????????:: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
?
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_221030

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
d
E__inference_dropout_3_layer_call_and_return_conditional_losses_221089

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_220538

inputs	
inputs_1
inputs_2	"
dense_3_220484:
?N?
dense_3_220486:	?"
dense_4_220508:
??
dense_4_220510:	?!
dense_5_220532:	?
dense_5_220534:
identity??dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2dense_3_220484dense_3_220486*
Tin	
2		*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_220483?
dropout_2/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_220494?
dense_4/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_4_220508dense_4_220510*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_220507?
dropout_3/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_220518?
dense_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_5_220532dense_5_220534*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_220531w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:?????????:?????????:: : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
?$
?
__inference__traced_save_221176
file_prefix-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*^
_input_shapesM
K: :
?N?:?:
??:?:	?:: : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
?N?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?U
?
!__inference__wrapped_model_220426

args_0	
args_0_1
args_0_2	X
Dsequential_1_dense_3_embedding_lookup_sparse_embedding_lookup_220384:
?N?C
4sequential_1_dense_3_biasadd_readvariableop_resource:	?G
3sequential_1_dense_4_matmul_readvariableop_resource:
??C
4sequential_1_dense_4_biasadd_readvariableop_resource:	?F
3sequential_1_dense_5_matmul_readvariableop_resource:	?B
4sequential_1_dense_5_biasadd_readvariableop_resource:
identity??+sequential_1/dense_3/BiasAdd/ReadVariableOp?=sequential_1/dense_3/embedding_lookup_sparse/embedding_lookup?+sequential_1/dense_4/BiasAdd/ReadVariableOp?*sequential_1/dense_4/MatMul/ReadVariableOp?+sequential_1/dense_5/BiasAdd/ReadVariableOp?*sequential_1/dense_5/MatMul/ReadVariableOps
.sequential_1/dense_3/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
<sequential_1/dense_3/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsargs_0args_0_1args_0_27sequential_1/dense_3/SparseFillEmptyRows/Const:output:0*
T0*T
_output_shapesB
@:?????????:?????????:?????????:?????????y
(sequential_1/dense_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       {
*sequential_1/dense_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*sequential_1/dense_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
"sequential_1/dense_3/strided_sliceStridedSliceMsequential_1/dense_3/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:01sequential_1/dense_3/strided_slice/stack:output:03sequential_1/dense_3/strided_slice/stack_1:output:03sequential_1/dense_3/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
@sequential_1/dense_3/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
Bsequential_1/dense_3/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
Bsequential_1/dense_3/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
:sequential_1/dense_3/embedding_lookup_sparse/strided_sliceStridedSliceMsequential_1/dense_3/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0Isequential_1/dense_3/embedding_lookup_sparse/strided_slice/stack:output:0Ksequential_1/dense_3/embedding_lookup_sparse/strided_slice/stack_1:output:0Ksequential_1/dense_3/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
3sequential_1/dense_3/embedding_lookup_sparse/UniqueUnique+sequential_1/dense_3/strided_slice:output:0*
T0	*2
_output_shapes 
:?????????:??????????
=sequential_1/dense_3/embedding_lookup_sparse/embedding_lookupResourceGatherDsequential_1_dense_3_embedding_lookup_sparse_embedding_lookup_2203847sequential_1/dense_3/embedding_lookup_sparse/Unique:y:0*
Tindices0	*W
_classM
KIloc:@sequential_1/dense_3/embedding_lookup_sparse/embedding_lookup/220384*(
_output_shapes
:??????????*
dtype0?
Fsequential_1/dense_3/embedding_lookup_sparse/embedding_lookup/IdentityIdentityFsequential_1/dense_3/embedding_lookup_sparse/embedding_lookup:output:0*
T0*W
_classM
KIloc:@sequential_1/dense_3/embedding_lookup_sparse/embedding_lookup/220384*(
_output_shapes
:???????????
Hsequential_1/dense_3/embedding_lookup_sparse/embedding_lookup/Identity_1IdentityOsequential_1/dense_3/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:???????????
1sequential_1/dense_3/embedding_lookup_sparse/CastCastCsequential_1/dense_3/embedding_lookup_sparse/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????|
:sequential_1/dense_3/embedding_lookup_sparse/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
5sequential_1/dense_3/embedding_lookup_sparse/GatherV2GatherV2Qsequential_1/dense_3/embedding_lookup_sparse/embedding_lookup/Identity_1:output:09sequential_1/dense_3/embedding_lookup_sparse/Unique:idx:0Csequential_1/dense_3/embedding_lookup_sparse/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*(
_output_shapes
:??????????s
1sequential_1/dense_3/embedding_lookup_sparse/RankConst*
_output_shapes
: *
dtype0*
value	B :t
2sequential_1/dense_3/embedding_lookup_sparse/sub/yConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_1/dense_3/embedding_lookup_sparse/subSub:sequential_1/dense_3/embedding_lookup_sparse/Rank:output:0;sequential_1/dense_3/embedding_lookup_sparse/sub/y:output:0*
T0*
_output_shapes
: }
;sequential_1/dense_3/embedding_lookup_sparse/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
7sequential_1/dense_3/embedding_lookup_sparse/ExpandDims
ExpandDims4sequential_1/dense_3/embedding_lookup_sparse/sub:z:0Dsequential_1/dense_3/embedding_lookup_sparse/ExpandDims/dim:output:0*
T0*
_output_shapes
:y
7sequential_1/dense_3/embedding_lookup_sparse/ones/ConstConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_1/dense_3/embedding_lookup_sparse/onesFill@sequential_1/dense_3/embedding_lookup_sparse/ExpandDims:output:0@sequential_1/dense_3/embedding_lookup_sparse/ones/Const:output:0*
T0*
_output_shapes
:?
2sequential_1/dense_3/embedding_lookup_sparse/ShapeShapeLsequential_1/dense_3/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0*
_output_shapes
:z
8sequential_1/dense_3/embedding_lookup_sparse/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
3sequential_1/dense_3/embedding_lookup_sparse/concatConcatV2;sequential_1/dense_3/embedding_lookup_sparse/Shape:output:0:sequential_1/dense_3/embedding_lookup_sparse/ones:output:0Asequential_1/dense_3/embedding_lookup_sparse/concat/axis:output:0*
N*
T0*
_output_shapes
:?
4sequential_1/dense_3/embedding_lookup_sparse/ReshapeReshapeLsequential_1/dense_3/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0<sequential_1/dense_3/embedding_lookup_sparse/concat:output:0*
T0*'
_output_shapes
:??????????
0sequential_1/dense_3/embedding_lookup_sparse/mulMul>sequential_1/dense_3/embedding_lookup_sparse/GatherV2:output:0=sequential_1/dense_3/embedding_lookup_sparse/Reshape:output:0*
T0*(
_output_shapes
:???????????
,sequential_1/dense_3/embedding_lookup_sparse
SegmentSum4sequential_1/dense_3/embedding_lookup_sparse/mul:z:05sequential_1/dense_3/embedding_lookup_sparse/Cast:y:0*
T0*
Tindices0*(
_output_shapes
:???????????
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_3/BiasAddBiasAdd5sequential_1/dense_3/embedding_lookup_sparse:output:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
sequential_1/dense_3/EluElu%sequential_1/dense_3/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
sequential_1/dropout_2/IdentityIdentity&sequential_1/dense_3/Elu:activations:0*
T0*(
_output_shapes
:???????????
*sequential_1/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_4_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
sequential_1/dense_4/MatMulMatMul(sequential_1/dropout_2/Identity:output:02sequential_1/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_4/BiasAddBiasAdd%sequential_1/dense_4/MatMul:product:03sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
sequential_1/dense_4/EluElu%sequential_1/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
sequential_1/dropout_3/IdentityIdentity&sequential_1/dense_4/Elu:activations:0*
T0*(
_output_shapes
:???????????
*sequential_1/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_5_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
sequential_1/dense_5/MatMulMatMul(sequential_1/dropout_3/Identity:output:02sequential_1/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_1/dense_5/BiasAddBiasAdd%sequential_1/dense_5/MatMul:product:03sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_1/dense_5/SigmoidSigmoid%sequential_1/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:?????????o
IdentityIdentity sequential_1/dense_5/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp>^sequential_1/dense_3/embedding_lookup_sparse/embedding_lookup,^sequential_1/dense_4/BiasAdd/ReadVariableOp+^sequential_1/dense_4/MatMul/ReadVariableOp,^sequential_1/dense_5/BiasAdd/ReadVariableOp+^sequential_1/dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:?????????:?????????:: : : : : : 2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2~
=sequential_1/dense_3/embedding_lookup_sparse/embedding_lookup=sequential_1/dense_3/embedding_lookup_sparse/embedding_lookup2Z
+sequential_1/dense_4/BiasAdd/ReadVariableOp+sequential_1/dense_4/BiasAdd/ReadVariableOp2X
*sequential_1/dense_4/MatMul/ReadVariableOp*sequential_1/dense_4/MatMul/ReadVariableOp2Z
+sequential_1/dense_5/BiasAdd/ReadVariableOp+sequential_1/dense_5/BiasAdd/ReadVariableOp2X
*sequential_1/dense_5/MatMul/ReadVariableOp*sequential_1/dense_5/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameargs_0:KG
#
_output_shapes
:?????????
 
_user_specified_nameargs_0:B>

_output_shapes
:
 
_user_specified_nameargs_0
?
c
*__inference_dropout_3_layer_call_fn_221072

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_220583p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
*__inference_dropout_2_layer_call_fn_221025

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_220616p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
$__inference_signature_wrapper_220782

args_0	
args_0_1
args_0_2	
unknown:
?N?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0args_0_1args_0_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_220426o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:?????????:?????????:: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameargs_0:MI
#
_output_shapes
:?????????
"
_user_specified_name
args_0_1:D@

_output_shapes
:
"
_user_specified_name
args_0_2
?

?
C__inference_dense_4_layer_call_and_return_conditional_losses_220507

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????O
EluEluBiasAdd:output:0*
T0*(
_output_shapes
:??????????a
IdentityIdentityElu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?1
?
C__inference_dense_3_layer_call_and_return_conditional_losses_221015

inputs	
inputs_1
inputs_2	C
/embedding_lookup_sparse_embedding_lookup_220989:
?N?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?(embedding_lookup_sparse/embedding_lookup^
SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
'SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsinputsinputs_1inputs_2"SparseFillEmptyRows/Const:output:0*
T0*T
_output_shapesB
@:?????????:?????????:?????????:?????????d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
strided_sliceStridedSlice8SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask|
+embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ~
-embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ~
-embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
%embedding_lookup_sparse/strided_sliceStridedSlice8SparseFillEmptyRows/SparseFillEmptyRows:output_indices:04embedding_lookup_sparse/strided_slice/stack:output:06embedding_lookup_sparse/strided_slice/stack_1:output:06embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask}
embedding_lookup_sparse/UniqueUniquestrided_slice:output:0*
T0	*2
_output_shapes 
:?????????:??????????
(embedding_lookup_sparse/embedding_lookupResourceGather/embedding_lookup_sparse_embedding_lookup_220989"embedding_lookup_sparse/Unique:y:0*
Tindices0	*B
_class8
64loc:@embedding_lookup_sparse/embedding_lookup/220989*(
_output_shapes
:??????????*
dtype0?
1embedding_lookup_sparse/embedding_lookup/IdentityIdentity1embedding_lookup_sparse/embedding_lookup:output:0*
T0*B
_class8
64loc:@embedding_lookup_sparse/embedding_lookup/220989*(
_output_shapes
:???????????
3embedding_lookup_sparse/embedding_lookup/Identity_1Identity:embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:???????????
embedding_lookup_sparse/CastCast.embedding_lookup_sparse/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????g
%embedding_lookup_sparse/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
 embedding_lookup_sparse/GatherV2GatherV2<embedding_lookup_sparse/embedding_lookup/Identity_1:output:0$embedding_lookup_sparse/Unique:idx:0.embedding_lookup_sparse/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*(
_output_shapes
:??????????^
embedding_lookup_sparse/RankConst*
_output_shapes
: *
dtype0*
value	B :_
embedding_lookup_sparse/sub/yConst*
_output_shapes
: *
dtype0*
value	B :?
embedding_lookup_sparse/subSub%embedding_lookup_sparse/Rank:output:0&embedding_lookup_sparse/sub/y:output:0*
T0*
_output_shapes
: h
&embedding_lookup_sparse/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
"embedding_lookup_sparse/ExpandDims
ExpandDimsembedding_lookup_sparse/sub:z:0/embedding_lookup_sparse/ExpandDims/dim:output:0*
T0*
_output_shapes
:d
"embedding_lookup_sparse/ones/ConstConst*
_output_shapes
: *
dtype0*
value	B :?
embedding_lookup_sparse/onesFill+embedding_lookup_sparse/ExpandDims:output:0+embedding_lookup_sparse/ones/Const:output:0*
T0*
_output_shapes
:?
embedding_lookup_sparse/ShapeShape7SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0*
_output_shapes
:e
#embedding_lookup_sparse/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
embedding_lookup_sparse/concatConcatV2&embedding_lookup_sparse/Shape:output:0%embedding_lookup_sparse/ones:output:0,embedding_lookup_sparse/concat/axis:output:0*
N*
T0*
_output_shapes
:?
embedding_lookup_sparse/ReshapeReshape7SparseFillEmptyRows/SparseFillEmptyRows:output_values:0'embedding_lookup_sparse/concat:output:0*
T0*'
_output_shapes
:??????????
embedding_lookup_sparse/mulMul)embedding_lookup_sparse/GatherV2:output:0(embedding_lookup_sparse/Reshape:output:0*
T0*(
_output_shapes
:???????????
embedding_lookup_sparse
SegmentSumembedding_lookup_sparse/mul:z:0 embedding_lookup_sparse/Cast:y:0*
T0*
Tindices0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAdd embedding_lookup_sparse:output:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????O
EluEluBiasAdd:output:0*
T0*(
_output_shapes
:??????????a
IdentityIdentityElu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp)^embedding_lookup_sparse/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????:?????????:: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2T
(embedding_lookup_sparse/embedding_lookup(embedding_lookup_sparse/embedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
?H
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_220882

inputs	
inputs_1
inputs_2	K
7dense_3_embedding_lookup_sparse_embedding_lookup_220840:
?N?6
'dense_3_biasadd_readvariableop_resource:	?:
&dense_4_matmul_readvariableop_resource:
??6
'dense_4_biasadd_readvariableop_resource:	?9
&dense_5_matmul_readvariableop_resource:	?5
'dense_5_biasadd_readvariableop_resource:
identity??dense_3/BiasAdd/ReadVariableOp?0dense_3/embedding_lookup_sparse/embedding_lookup?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOpf
!dense_3/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
/dense_3/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsinputsinputs_1inputs_2*dense_3/SparseFillEmptyRows/Const:output:0*
T0*T
_output_shapesB
@:?????????:?????????:?????????:?????????l
dense_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       n
dense_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       n
dense_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
dense_3/strided_sliceStridedSlice@dense_3/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0$dense_3/strided_slice/stack:output:0&dense_3/strided_slice/stack_1:output:0&dense_3/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
3dense_3/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
5dense_3/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
5dense_3/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
-dense_3/embedding_lookup_sparse/strided_sliceStridedSlice@dense_3/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0<dense_3/embedding_lookup_sparse/strided_slice/stack:output:0>dense_3/embedding_lookup_sparse/strided_slice/stack_1:output:0>dense_3/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
&dense_3/embedding_lookup_sparse/UniqueUniquedense_3/strided_slice:output:0*
T0	*2
_output_shapes 
:?????????:??????????
0dense_3/embedding_lookup_sparse/embedding_lookupResourceGather7dense_3_embedding_lookup_sparse_embedding_lookup_220840*dense_3/embedding_lookup_sparse/Unique:y:0*
Tindices0	*J
_class@
><loc:@dense_3/embedding_lookup_sparse/embedding_lookup/220840*(
_output_shapes
:??????????*
dtype0?
9dense_3/embedding_lookup_sparse/embedding_lookup/IdentityIdentity9dense_3/embedding_lookup_sparse/embedding_lookup:output:0*
T0*J
_class@
><loc:@dense_3/embedding_lookup_sparse/embedding_lookup/220840*(
_output_shapes
:???????????
;dense_3/embedding_lookup_sparse/embedding_lookup/Identity_1IdentityBdense_3/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:???????????
$dense_3/embedding_lookup_sparse/CastCast6dense_3/embedding_lookup_sparse/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????o
-dense_3/embedding_lookup_sparse/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(dense_3/embedding_lookup_sparse/GatherV2GatherV2Ddense_3/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0,dense_3/embedding_lookup_sparse/Unique:idx:06dense_3/embedding_lookup_sparse/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*(
_output_shapes
:??????????f
$dense_3/embedding_lookup_sparse/RankConst*
_output_shapes
: *
dtype0*
value	B :g
%dense_3/embedding_lookup_sparse/sub/yConst*
_output_shapes
: *
dtype0*
value	B :?
#dense_3/embedding_lookup_sparse/subSub-dense_3/embedding_lookup_sparse/Rank:output:0.dense_3/embedding_lookup_sparse/sub/y:output:0*
T0*
_output_shapes
: p
.dense_3/embedding_lookup_sparse/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
*dense_3/embedding_lookup_sparse/ExpandDims
ExpandDims'dense_3/embedding_lookup_sparse/sub:z:07dense_3/embedding_lookup_sparse/ExpandDims/dim:output:0*
T0*
_output_shapes
:l
*dense_3/embedding_lookup_sparse/ones/ConstConst*
_output_shapes
: *
dtype0*
value	B :?
$dense_3/embedding_lookup_sparse/onesFill3dense_3/embedding_lookup_sparse/ExpandDims:output:03dense_3/embedding_lookup_sparse/ones/Const:output:0*
T0*
_output_shapes
:?
%dense_3/embedding_lookup_sparse/ShapeShape?dense_3/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0*
_output_shapes
:m
+dense_3/embedding_lookup_sparse/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
&dense_3/embedding_lookup_sparse/concatConcatV2.dense_3/embedding_lookup_sparse/Shape:output:0-dense_3/embedding_lookup_sparse/ones:output:04dense_3/embedding_lookup_sparse/concat/axis:output:0*
N*
T0*
_output_shapes
:?
'dense_3/embedding_lookup_sparse/ReshapeReshape?dense_3/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0/dense_3/embedding_lookup_sparse/concat:output:0*
T0*'
_output_shapes
:??????????
#dense_3/embedding_lookup_sparse/mulMul1dense_3/embedding_lookup_sparse/GatherV2:output:00dense_3/embedding_lookup_sparse/Reshape:output:0*
T0*(
_output_shapes
:???????????
dense_3/embedding_lookup_sparse
SegmentSum'dense_3/embedding_lookup_sparse/mul:z:0(dense_3/embedding_lookup_sparse/Cast:y:0*
T0*
Tindices0*(
_output_shapes
:???????????
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_3/BiasAddBiasAdd(dense_3/embedding_lookup_sparse:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
dense_3/EluEludense_3/BiasAdd:output:0*
T0*(
_output_shapes
:??????????l
dropout_2/IdentityIdentitydense_3/Elu:activations:0*
T0*(
_output_shapes
:???????????
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_4/MatMulMatMuldropout_2/Identity:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
dense_4/EluEludense_4/BiasAdd:output:0*
T0*(
_output_shapes
:??????????l
dropout_3/IdentityIdentitydense_4/Elu:activations:0*
T0*(
_output_shapes
:???????????
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_5/MatMulMatMuldropout_3/Identity:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_5/SigmoidSigmoiddense_5/BiasAdd:output:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitydense_5/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp1^dense_3/embedding_lookup_sparse/embedding_lookup^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:?????????:?????????:: : : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2d
0dense_3/embedding_lookup_sparse/embedding_lookup0dense_3/embedding_lookup_sparse/embedding_lookup2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
?	
d
E__inference_dropout_2_layer_call_and_return_conditional_losses_221042

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
d
E__inference_dropout_2_layer_call_and_return_conditional_losses_220616

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
-__inference_sequential_1_layer_call_fn_220801

inputs	
inputs_1
inputs_2	
unknown:
?N?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_220538o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:?????????:?????????:: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
?
?
(__inference_dense_4_layer_call_fn_221051

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_220507p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_220677

inputs	
inputs_1
inputs_2	"
dense_3_220659:
?N?
dense_3_220661:	?"
dense_4_220665:
??
dense_4_220667:	?!
dense_5_220671:	?
dense_5_220673:
identity??dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2dense_3_220659dense_3_220661*
Tin	
2		*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_220483?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_220616?
dense_4/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_4_220665dense_4_220667*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_220507?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_220583?
dense_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_5_220671dense_5_220673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_220531w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:?????????:?????????:: : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
?
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_220494

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
F
*__inference_dropout_3_layer_call_fn_221067

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_220518a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
9
args_0/
serving_default_args_0:0	?????????
9
args_0_1-
serving_default_args_0_1:0?????????
0
args_0_2$
serving_default_args_0_2:0	;
dense_50
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?d
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
S__call__
*T&call_and_return_all_conditional_losses
U_default_save_signature"
_tf_keras_sequential
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
V__call__
*W&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
X__call__
*Y&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
Z__call__
*[&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
\__call__
*]&call_and_return_all_conditional_losses"
_tf_keras_layer
?

 kernel
!bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
^__call__
*_&call_and_return_all_conditional_losses"
_tf_keras_layer
I
&iter
	'decay
(learning_rate
)momentum"
	optimizer
J
0
1
2
3
 4
!5"
trackable_list_wrapper
J
0
1
2
3
 4
!5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
trainable_variables
	regularization_losses
S__call__
U_default_save_signature
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
,
`serving_default"
signature_map
": 
?N?2dense_3/kernel
:?2dense_3/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
/non_trainable_variables

0layers
1metrics
2layer_regularization_losses
3layer_metrics
	variables
trainable_variables
regularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
trainable_variables
regularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
": 
??2dense_4/kernel
:?2dense_4/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
!:	?2dense_5/kernel
:2dense_5/bias
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
"	variables
#trainable_variables
$regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	Jtotal
	Kcount
L	variables
M	keras_api"
_tf_keras_metric
^
	Ntotal
	Ocount
P
_fn_kwargs
Q	variables
R	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
J0
K1"
trackable_list_wrapper
-
L	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
N0
O1"
trackable_list_wrapper
-
Q	variables"
_generic_user_object
?2?
-__inference_sequential_1_layer_call_fn_220801
-__inference_sequential_1_layer_call_fn_220820?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_sequential_1_layer_call_and_return_conditional_losses_220882
H__inference_sequential_1_layer_call_and_return_conditional_losses_220958?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
!__inference__wrapped_model_220426args_0args_0_1args_0_2"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_3_layer_call_fn_220969?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_3_layer_call_and_return_conditional_losses_221015?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dropout_2_layer_call_fn_221020
*__inference_dropout_2_layer_call_fn_221025?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_2_layer_call_and_return_conditional_losses_221030
E__inference_dropout_2_layer_call_and_return_conditional_losses_221042?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_dense_4_layer_call_fn_221051?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_4_layer_call_and_return_conditional_losses_221062?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dropout_3_layer_call_fn_221067
*__inference_dropout_3_layer_call_fn_221072?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_3_layer_call_and_return_conditional_losses_221077
E__inference_dropout_3_layer_call_and_return_conditional_losses_221089?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_dense_5_layer_call_fn_221098?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_5_layer_call_and_return_conditional_losses_221109?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_220782args_0args_0_1args_0_2"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_220426? !Q?N
G?D
B??'?$
???????????????????
?SparseTensorSpec 
? "1?.
,
dense_5!?
dense_5??????????
C__inference_dense_3_layer_call_and_return_conditional_losses_221015Q?N
G?D
B??'?$
???????????????????
?SparseTensorSpec 
? "&?#
?
0??????????
? ?
(__inference_dense_3_layer_call_fn_220969rQ?N
G?D
B??'?$
???????????????????
?SparseTensorSpec 
? "????????????
C__inference_dense_4_layer_call_and_return_conditional_losses_221062^0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? }
(__inference_dense_4_layer_call_fn_221051Q0?-
&?#
!?
inputs??????????
? "????????????
C__inference_dense_5_layer_call_and_return_conditional_losses_221109] !0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? |
(__inference_dense_5_layer_call_fn_221098P !0?-
&?#
!?
inputs??????????
? "???????????
E__inference_dropout_2_layer_call_and_return_conditional_losses_221030^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
E__inference_dropout_2_layer_call_and_return_conditional_losses_221042^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? 
*__inference_dropout_2_layer_call_fn_221020Q4?1
*?'
!?
inputs??????????
p 
? "???????????
*__inference_dropout_2_layer_call_fn_221025Q4?1
*?'
!?
inputs??????????
p
? "????????????
E__inference_dropout_3_layer_call_and_return_conditional_losses_221077^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
E__inference_dropout_3_layer_call_and_return_conditional_losses_221089^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? 
*__inference_dropout_3_layer_call_fn_221067Q4?1
*?'
!?
inputs??????????
p 
? "???????????
*__inference_dropout_3_layer_call_fn_221072Q4?1
*?'
!?
inputs??????????
p
? "????????????
H__inference_sequential_1_layer_call_and_return_conditional_losses_220882? !Y?V
O?L
B??'?$
???????????????????
?SparseTensorSpec 
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_220958? !Y?V
O?L
B??'?$
???????????????????
?SparseTensorSpec 
p

 
? "%?"
?
0?????????
? ?
-__inference_sequential_1_layer_call_fn_220801} !Y?V
O?L
B??'?$
???????????????????
?SparseTensorSpec 
p 

 
? "???????????
-__inference_sequential_1_layer_call_fn_220820} !Y?V
O?L
B??'?$
???????????????????
?SparseTensorSpec 
p

 
? "???????????
$__inference_signature_wrapper_220782? !???
? 
~?{
*
args_0 ?
args_0?????????	
*
args_0_1?
args_0_1?????????
!
args_0_2?
args_0_2	"1?.
,
dense_5!?
dense_5?????????