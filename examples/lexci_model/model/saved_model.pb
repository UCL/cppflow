░О,
дИ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
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
·
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%╖╤8"&
exponential_avg_factorfloat%  А?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
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
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
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
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
┴
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
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.8.02unknown8лу%
|
conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv1/kernel
u
 conv1/kernel/Read/ReadVariableOpReadVariableOpconv1/kernel*&
_output_shapes
:@*
dtype0
l

conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
conv1/bias
e
conv1/bias/Read/ReadVariableOpReadVariableOp
conv1/bias*
_output_shapes
:@*
dtype0
|
conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameconv3/kernel
u
 conv3/kernel/Read/ReadVariableOpReadVariableOpconv3/kernel*&
_output_shapes
:@@*
dtype0
j
	bn4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	bn4/gamma
c
bn4/gamma/Read/ReadVariableOpReadVariableOp	bn4/gamma*
_output_shapes
:@*
dtype0
h
bn4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
bn4/beta
a
bn4/beta/Read/ReadVariableOpReadVariableOpbn4/beta*
_output_shapes
:@*
dtype0
v
bn4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_namebn4/moving_mean
o
#bn4/moving_mean/Read/ReadVariableOpReadVariableOpbn4/moving_mean*
_output_shapes
:@*
dtype0
~
bn4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_namebn4/moving_variance
w
'bn4/moving_variance/Read/ReadVariableOpReadVariableOpbn4/moving_variance*
_output_shapes
:@*
dtype0
|
conv6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameconv6/kernel
u
 conv6/kernel/Read/ReadVariableOpReadVariableOpconv6/kernel*&
_output_shapes
:@@*
dtype0
j
	bn7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	bn7/gamma
c
bn7/gamma/Read/ReadVariableOpReadVariableOp	bn7/gamma*
_output_shapes
:@*
dtype0
h
bn7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
bn7/beta
a
bn7/beta/Read/ReadVariableOpReadVariableOpbn7/beta*
_output_shapes
:@*
dtype0
v
bn7/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_namebn7/moving_mean
o
#bn7/moving_mean/Read/ReadVariableOpReadVariableOpbn7/moving_mean*
_output_shapes
:@*
dtype0
~
bn7/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_namebn7/moving_variance
w
'bn7/moving_variance/Read/ReadVariableOpReadVariableOpbn7/moving_variance*
_output_shapes
:@*
dtype0
|
conv9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameconv9/kernel
u
 conv9/kernel/Read/ReadVariableOpReadVariableOpconv9/kernel*&
_output_shapes
:@@*
dtype0
l

bn10/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
bn10/gamma
e
bn10/gamma/Read/ReadVariableOpReadVariableOp
bn10/gamma*
_output_shapes
:@*
dtype0
j
	bn10/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	bn10/beta
c
bn10/beta/Read/ReadVariableOpReadVariableOp	bn10/beta*
_output_shapes
:@*
dtype0
x
bn10/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_namebn10/moving_mean
q
$bn10/moving_mean/Read/ReadVariableOpReadVariableOpbn10/moving_mean*
_output_shapes
:@*
dtype0
А
bn10/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_namebn10/moving_variance
y
(bn10/moving_variance/Read/ReadVariableOpReadVariableOpbn10/moving_variance*
_output_shapes
:@*
dtype0
~
conv12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameconv12/kernel
w
!conv12/kernel/Read/ReadVariableOpReadVariableOpconv12/kernel*&
_output_shapes
:@@*
dtype0
l

bn13/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
bn13/gamma
e
bn13/gamma/Read/ReadVariableOpReadVariableOp
bn13/gamma*
_output_shapes
:@*
dtype0
j
	bn13/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	bn13/beta
c
bn13/beta/Read/ReadVariableOpReadVariableOp	bn13/beta*
_output_shapes
:@*
dtype0
x
bn13/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_namebn13/moving_mean
q
$bn13/moving_mean/Read/ReadVariableOpReadVariableOpbn13/moving_mean*
_output_shapes
:@*
dtype0
А
bn13/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_namebn13/moving_variance
y
(bn13/moving_variance/Read/ReadVariableOpReadVariableOpbn13/moving_variance*
_output_shapes
:@*
dtype0
~
conv15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameconv15/kernel
w
!conv15/kernel/Read/ReadVariableOpReadVariableOpconv15/kernel*&
_output_shapes
:@@*
dtype0
l

bn16/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
bn16/gamma
e
bn16/gamma/Read/ReadVariableOpReadVariableOp
bn16/gamma*
_output_shapes
:@*
dtype0
j
	bn16/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	bn16/beta
c
bn16/beta/Read/ReadVariableOpReadVariableOp	bn16/beta*
_output_shapes
:@*
dtype0
x
bn16/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_namebn16/moving_mean
q
$bn16/moving_mean/Read/ReadVariableOpReadVariableOpbn16/moving_mean*
_output_shapes
:@*
dtype0
А
bn16/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_namebn16/moving_variance
y
(bn16/moving_variance/Read/ReadVariableOpReadVariableOpbn16/moving_variance*
_output_shapes
:@*
dtype0
~
conv18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameconv18/kernel
w
!conv18/kernel/Read/ReadVariableOpReadVariableOpconv18/kernel*&
_output_shapes
:@@*
dtype0
l

bn19/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
bn19/gamma
e
bn19/gamma/Read/ReadVariableOpReadVariableOp
bn19/gamma*
_output_shapes
:@*
dtype0
j
	bn19/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	bn19/beta
c
bn19/beta/Read/ReadVariableOpReadVariableOp	bn19/beta*
_output_shapes
:@*
dtype0
x
bn19/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_namebn19/moving_mean
q
$bn19/moving_mean/Read/ReadVariableOpReadVariableOpbn19/moving_mean*
_output_shapes
:@*
dtype0
А
bn19/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_namebn19/moving_variance
y
(bn19/moving_variance/Read/ReadVariableOpReadVariableOpbn19/moving_variance*
_output_shapes
:@*
dtype0
~
conv21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameconv21/kernel
w
!conv21/kernel/Read/ReadVariableOpReadVariableOpconv21/kernel*&
_output_shapes
:@@*
dtype0
l

bn22/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
bn22/gamma
e
bn22/gamma/Read/ReadVariableOpReadVariableOp
bn22/gamma*
_output_shapes
:@*
dtype0
j
	bn22/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	bn22/beta
c
bn22/beta/Read/ReadVariableOpReadVariableOp	bn22/beta*
_output_shapes
:@*
dtype0
x
bn22/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_namebn22/moving_mean
q
$bn22/moving_mean/Read/ReadVariableOpReadVariableOpbn22/moving_mean*
_output_shapes
:@*
dtype0
А
bn22/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_namebn22/moving_variance
y
(bn22/moving_variance/Read/ReadVariableOpReadVariableOpbn22/moving_variance*
_output_shapes
:@*
dtype0
~
conv24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameconv24/kernel
w
!conv24/kernel/Read/ReadVariableOpReadVariableOpconv24/kernel*&
_output_shapes
:@@*
dtype0
l

bn25/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
bn25/gamma
e
bn25/gamma/Read/ReadVariableOpReadVariableOp
bn25/gamma*
_output_shapes
:@*
dtype0
j
	bn25/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	bn25/beta
c
bn25/beta/Read/ReadVariableOpReadVariableOp	bn25/beta*
_output_shapes
:@*
dtype0
x
bn25/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_namebn25/moving_mean
q
$bn25/moving_mean/Read/ReadVariableOpReadVariableOpbn25/moving_mean*
_output_shapes
:@*
dtype0
А
bn25/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_namebn25/moving_variance
y
(bn25/moving_variance/Read/ReadVariableOpReadVariableOpbn25/moving_variance*
_output_shapes
:@*
dtype0
~
conv27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameconv27/kernel
w
!conv27/kernel/Read/ReadVariableOpReadVariableOpconv27/kernel*&
_output_shapes
:@@*
dtype0
l

bn28/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
bn28/gamma
e
bn28/gamma/Read/ReadVariableOpReadVariableOp
bn28/gamma*
_output_shapes
:@*
dtype0
j
	bn28/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	bn28/beta
c
bn28/beta/Read/ReadVariableOpReadVariableOp	bn28/beta*
_output_shapes
:@*
dtype0
x
bn28/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_namebn28/moving_mean
q
$bn28/moving_mean/Read/ReadVariableOpReadVariableOpbn28/moving_mean*
_output_shapes
:@*
dtype0
А
bn28/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_namebn28/moving_variance
y
(bn28/moving_variance/Read/ReadVariableOpReadVariableOpbn28/moving_variance*
_output_shapes
:@*
dtype0
~
conv30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameconv30/kernel
w
!conv30/kernel/Read/ReadVariableOpReadVariableOpconv30/kernel*&
_output_shapes
:@@*
dtype0
l

bn31/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
bn31/gamma
e
bn31/gamma/Read/ReadVariableOpReadVariableOp
bn31/gamma*
_output_shapes
:@*
dtype0
j
	bn31/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	bn31/beta
c
bn31/beta/Read/ReadVariableOpReadVariableOp	bn31/beta*
_output_shapes
:@*
dtype0
x
bn31/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_namebn31/moving_mean
q
$bn31/moving_mean/Read/ReadVariableOpReadVariableOpbn31/moving_mean*
_output_shapes
:@*
dtype0
А
bn31/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_namebn31/moving_variance
y
(bn31/moving_variance/Read/ReadVariableOpReadVariableOpbn31/moving_variance*
_output_shapes
:@*
dtype0
~
conv33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameconv33/kernel
w
!conv33/kernel/Read/ReadVariableOpReadVariableOpconv33/kernel*&
_output_shapes
:@@*
dtype0
l

bn34/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
bn34/gamma
e
bn34/gamma/Read/ReadVariableOpReadVariableOp
bn34/gamma*
_output_shapes
:@*
dtype0
j
	bn34/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	bn34/beta
c
bn34/beta/Read/ReadVariableOpReadVariableOp	bn34/beta*
_output_shapes
:@*
dtype0
x
bn34/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_namebn34/moving_mean
q
$bn34/moving_mean/Read/ReadVariableOpReadVariableOpbn34/moving_mean*
_output_shapes
:@*
dtype0
А
bn34/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_namebn34/moving_variance
y
(bn34/moving_variance/Read/ReadVariableOpReadVariableOpbn34/moving_variance*
_output_shapes
:@*
dtype0
~
conv36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameconv36/kernel
w
!conv36/kernel/Read/ReadVariableOpReadVariableOpconv36/kernel*&
_output_shapes
:@@*
dtype0
l

bn37/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
bn37/gamma
e
bn37/gamma/Read/ReadVariableOpReadVariableOp
bn37/gamma*
_output_shapes
:@*
dtype0
j
	bn37/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	bn37/beta
c
bn37/beta/Read/ReadVariableOpReadVariableOp	bn37/beta*
_output_shapes
:@*
dtype0
x
bn37/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_namebn37/moving_mean
q
$bn37/moving_mean/Read/ReadVariableOpReadVariableOpbn37/moving_mean*
_output_shapes
:@*
dtype0
А
bn37/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_namebn37/moving_variance
y
(bn37/moving_variance/Read/ReadVariableOpReadVariableOpbn37/moving_variance*
_output_shapes
:@*
dtype0
~
conv39/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameconv39/kernel
w
!conv39/kernel/Read/ReadVariableOpReadVariableOpconv39/kernel*&
_output_shapes
:@@*
dtype0
l

bn40/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
bn40/gamma
e
bn40/gamma/Read/ReadVariableOpReadVariableOp
bn40/gamma*
_output_shapes
:@*
dtype0
j
	bn40/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	bn40/beta
c
bn40/beta/Read/ReadVariableOpReadVariableOp	bn40/beta*
_output_shapes
:@*
dtype0
x
bn40/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_namebn40/moving_mean
q
$bn40/moving_mean/Read/ReadVariableOpReadVariableOpbn40/moving_mean*
_output_shapes
:@*
dtype0
А
bn40/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_namebn40/moving_variance
y
(bn40/moving_variance/Read/ReadVariableOpReadVariableOpbn40/moving_variance*
_output_shapes
:@*
dtype0
~
conv42/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameconv42/kernel
w
!conv42/kernel/Read/ReadVariableOpReadVariableOpconv42/kernel*&
_output_shapes
:@@*
dtype0
l

bn43/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
bn43/gamma
e
bn43/gamma/Read/ReadVariableOpReadVariableOp
bn43/gamma*
_output_shapes
:@*
dtype0
j
	bn43/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	bn43/beta
c
bn43/beta/Read/ReadVariableOpReadVariableOp	bn43/beta*
_output_shapes
:@*
dtype0
x
bn43/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_namebn43/moving_mean
q
$bn43/moving_mean/Read/ReadVariableOpReadVariableOpbn43/moving_mean*
_output_shapes
:@*
dtype0
А
bn43/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_namebn43/moving_variance
y
(bn43/moving_variance/Read/ReadVariableOpReadVariableOpbn43/moving_variance*
_output_shapes
:@*
dtype0
~
conv45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameconv45/kernel
w
!conv45/kernel/Read/ReadVariableOpReadVariableOpconv45/kernel*&
_output_shapes
:@@*
dtype0
l

bn46/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
bn46/gamma
e
bn46/gamma/Read/ReadVariableOpReadVariableOp
bn46/gamma*
_output_shapes
:@*
dtype0
j
	bn46/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	bn46/beta
c
bn46/beta/Read/ReadVariableOpReadVariableOp	bn46/beta*
_output_shapes
:@*
dtype0
x
bn46/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_namebn46/moving_mean
q
$bn46/moving_mean/Read/ReadVariableOpReadVariableOpbn46/moving_mean*
_output_shapes
:@*
dtype0
А
bn46/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_namebn46/moving_variance
y
(bn46/moving_variance/Read/ReadVariableOpReadVariableOpbn46/moving_variance*
_output_shapes
:@*
dtype0
~
conv48/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv48/kernel
w
!conv48/kernel/Read/ReadVariableOpReadVariableOpconv48/kernel*&
_output_shapes
:@*
dtype0

NoOpNoOp
╠з
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Жз
value√жBўж Bяж
┼
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer-8

layer_with_weights-5

layer-9
layer_with_weights-6
layer-10
layer-11
layer_with_weights-7
layer-12
layer_with_weights-8
layer-13
layer-14
layer_with_weights-9
layer-15
layer_with_weights-10
layer-16
layer-17
layer_with_weights-11
layer-18
layer_with_weights-12
layer-19
layer-20
layer_with_weights-13
layer-21
layer_with_weights-14
layer-22
layer-23
layer_with_weights-15
layer-24
layer_with_weights-16
layer-25
layer-26
layer_with_weights-17
layer-27
layer_with_weights-18
layer-28
layer-29
layer_with_weights-19
layer-30
 layer_with_weights-20
 layer-31
!layer-32
"layer_with_weights-21
"layer-33
#layer_with_weights-22
#layer-34
$layer-35
%layer_with_weights-23
%layer-36
&layer_with_weights-24
&layer-37
'layer-38
(layer_with_weights-25
(layer-39
)layer_with_weights-26
)layer-40
*layer-41
+layer_with_weights-27
+layer-42
,layer_with_weights-28
,layer-43
-layer-44
.layer_with_weights-29
.layer-45
/layer_with_weights-30
/layer-46
0layer-47
1layer_with_weights-31
1layer-48
2layer-49
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses
9_default_save_signature
:
signatures*
* 
ж

;kernel
<bias
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses*
О
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses* 
Ь

Ikernel
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses*
╒
Paxis
	Qgamma
Rbeta
Smoving_mean
Tmoving_variance
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses*
О
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses* 
Ь

akernel
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses*
╒
haxis
	igamma
jbeta
kmoving_mean
lmoving_variance
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses*
О
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses* 
Ь

ykernel
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses*
р
	Аaxis

Бgamma
	Вbeta
Гmoving_mean
Дmoving_variance
Е	variables
Жtrainable_variables
Зregularization_losses
И	keras_api
Й__call__
+К&call_and_return_all_conditional_losses*
Ф
Л	variables
Мtrainable_variables
Нregularization_losses
О	keras_api
П__call__
+Р&call_and_return_all_conditional_losses* 
г
Сkernel
Т	variables
Уtrainable_variables
Фregularization_losses
Х	keras_api
Ц__call__
+Ч&call_and_return_all_conditional_losses*
р
	Шaxis

Щgamma
	Ъbeta
Ыmoving_mean
Ьmoving_variance
Э	variables
Юtrainable_variables
Яregularization_losses
а	keras_api
б__call__
+в&call_and_return_all_conditional_losses*
Ф
г	variables
дtrainable_variables
еregularization_losses
ж	keras_api
з__call__
+и&call_and_return_all_conditional_losses* 
г
йkernel
к	variables
лtrainable_variables
мregularization_losses
н	keras_api
о__call__
+п&call_and_return_all_conditional_losses*
р
	░axis

▒gamma
	▓beta
│moving_mean
┤moving_variance
╡	variables
╢trainable_variables
╖regularization_losses
╕	keras_api
╣__call__
+║&call_and_return_all_conditional_losses*
Ф
╗	variables
╝trainable_variables
╜regularization_losses
╛	keras_api
┐__call__
+└&call_and_return_all_conditional_losses* 
г
┴kernel
┬	variables
├trainable_variables
─regularization_losses
┼	keras_api
╞__call__
+╟&call_and_return_all_conditional_losses*
р
	╚axis

╔gamma
	╩beta
╦moving_mean
╠moving_variance
═	variables
╬trainable_variables
╧regularization_losses
╨	keras_api
╤__call__
+╥&call_and_return_all_conditional_losses*
Ф
╙	variables
╘trainable_variables
╒regularization_losses
╓	keras_api
╫__call__
+╪&call_and_return_all_conditional_losses* 
г
┘kernel
┌	variables
█trainable_variables
▄regularization_losses
▌	keras_api
▐__call__
+▀&call_and_return_all_conditional_losses*
р
	рaxis

сgamma
	тbeta
уmoving_mean
фmoving_variance
х	variables
цtrainable_variables
чregularization_losses
ш	keras_api
щ__call__
+ъ&call_and_return_all_conditional_losses*
Ф
ы	variables
ьtrainable_variables
эregularization_losses
ю	keras_api
я__call__
+Ё&call_and_return_all_conditional_losses* 
г
ёkernel
Є	variables
єtrainable_variables
Їregularization_losses
ї	keras_api
Ў__call__
+ў&call_and_return_all_conditional_losses*
р
	°axis

∙gamma
	·beta
√moving_mean
№moving_variance
¤	variables
■trainable_variables
 regularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses*
Ф
Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses* 
г
Йkernel
К	variables
Лtrainable_variables
Мregularization_losses
Н	keras_api
О__call__
+П&call_and_return_all_conditional_losses*
р
	Рaxis

Сgamma
	Тbeta
Уmoving_mean
Фmoving_variance
Х	variables
Цtrainable_variables
Чregularization_losses
Ш	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses*
Ф
Ы	variables
Ьtrainable_variables
Эregularization_losses
Ю	keras_api
Я__call__
+а&call_and_return_all_conditional_losses* 
г
бkernel
в	variables
гtrainable_variables
дregularization_losses
е	keras_api
ж__call__
+з&call_and_return_all_conditional_losses*
р
	иaxis

йgamma
	кbeta
лmoving_mean
мmoving_variance
н	variables
оtrainable_variables
пregularization_losses
░	keras_api
▒__call__
+▓&call_and_return_all_conditional_losses*
Ф
│	variables
┤trainable_variables
╡regularization_losses
╢	keras_api
╖__call__
+╕&call_and_return_all_conditional_losses* 
г
╣kernel
║	variables
╗trainable_variables
╝regularization_losses
╜	keras_api
╛__call__
+┐&call_and_return_all_conditional_losses*
р
	└axis

┴gamma
	┬beta
├moving_mean
─moving_variance
┼	variables
╞trainable_variables
╟regularization_losses
╚	keras_api
╔__call__
+╩&call_and_return_all_conditional_losses*
Ф
╦	variables
╠trainable_variables
═regularization_losses
╬	keras_api
╧__call__
+╨&call_and_return_all_conditional_losses* 
г
╤kernel
╥	variables
╙trainable_variables
╘regularization_losses
╒	keras_api
╓__call__
+╫&call_and_return_all_conditional_losses*
р
	╪axis

┘gamma
	┌beta
█moving_mean
▄moving_variance
▌	variables
▐trainable_variables
▀regularization_losses
р	keras_api
с__call__
+т&call_and_return_all_conditional_losses*
Ф
у	variables
фtrainable_variables
хregularization_losses
ц	keras_api
ч__call__
+ш&call_and_return_all_conditional_losses* 
г
щkernel
ъ	variables
ыtrainable_variables
ьregularization_losses
э	keras_api
ю__call__
+я&call_and_return_all_conditional_losses*
р
	Ёaxis

ёgamma
	Єbeta
єmoving_mean
Їmoving_variance
ї	variables
Ўtrainable_variables
ўregularization_losses
°	keras_api
∙__call__
+·&call_and_return_all_conditional_losses*
Ф
√	variables
№trainable_variables
¤regularization_losses
■	keras_api
 __call__
+А&call_and_return_all_conditional_losses* 
г
Бkernel
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses*
р
	Иaxis

Йgamma
	Кbeta
Лmoving_mean
Мmoving_variance
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses*
Ф
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses* 
г
Щkernel
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses*
р
	аaxis

бgamma
	вbeta
гmoving_mean
дmoving_variance
е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses*
Ф
л	variables
мtrainable_variables
нregularization_losses
о	keras_api
п__call__
+░&call_and_return_all_conditional_losses* 
г
▒kernel
▓	variables
│trainable_variables
┤regularization_losses
╡	keras_api
╢__call__
+╖&call_and_return_all_conditional_losses*
Ф
╕	variables
╣trainable_variables
║regularization_losses
╗	keras_api
╝__call__
+╜&call_and_return_all_conditional_losses* 
л
;0
<1
I2
Q3
R4
S5
T6
a7
i8
j9
k10
l11
y12
Б13
В14
Г15
Д16
С17
Щ18
Ъ19
Ы20
Ь21
й22
▒23
▓24
│25
┤26
┴27
╔28
╩29
╦30
╠31
┘32
с33
т34
у35
ф36
ё37
∙38
·39
√40
№41
Й42
С43
Т44
У45
Ф46
б47
й48
к49
л50
м51
╣52
┴53
┬54
├55
─56
╤57
┘58
┌59
█60
▄61
щ62
ё63
Є64
є65
Ї66
Б67
Й68
К69
Л70
М71
Щ72
б73
в74
г75
д76
▒77*
б
;0
<1
I2
Q3
R4
a5
i6
j7
y8
Б9
В10
С11
Щ12
Ъ13
й14
▒15
▓16
┴17
╔18
╩19
┘20
с21
т22
ё23
∙24
·25
Й26
С27
Т28
б29
й30
к31
╣32
┴33
┬34
╤35
┘36
┌37
щ38
ё39
Є40
Б41
Й42
К43
Щ44
б45
в46
▒47*
* 
╡
╛non_trainable_variables
┐layers
└metrics
 ┴layer_regularization_losses
┬layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
9_default_save_signature
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*
* 
* 
* 

├serving_default* 
\V
VARIABLE_VALUEconv1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
conv1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

;0
<1*

;0
<1*
* 
Ш
─non_trainable_variables
┼layers
╞metrics
 ╟layer_regularization_losses
╚layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ц
╔non_trainable_variables
╩layers
╦metrics
 ╠layer_regularization_losses
═layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses* 
* 
* 
\V
VARIABLE_VALUEconv3/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*

I0*

I0*
* 
Ш
╬non_trainable_variables
╧layers
╨metrics
 ╤layer_regularization_losses
╥layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses*
* 
* 
* 
XR
VARIABLE_VALUE	bn4/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEbn4/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEbn4/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEbn4/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
Q0
R1
S2
T3*

Q0
R1*
* 
Ш
╙non_trainable_variables
╘layers
╒metrics
 ╓layer_regularization_losses
╫layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ц
╪non_trainable_variables
┘layers
┌metrics
 █layer_regularization_losses
▄layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses* 
* 
* 
\V
VARIABLE_VALUEconv6/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*

a0*

a0*
* 
Ш
▌non_trainable_variables
▐layers
▀metrics
 рlayer_regularization_losses
сlayer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses*
* 
* 
* 
XR
VARIABLE_VALUE	bn7/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEbn7/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEbn7/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEbn7/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
i0
j1
k2
l3*

i0
j1*
* 
Ш
тnon_trainable_variables
уlayers
фmetrics
 хlayer_regularization_losses
цlayer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ц
чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses* 
* 
* 
\V
VARIABLE_VALUEconv9/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*

y0*

y0*
* 
Ш
ьnon_trainable_variables
эlayers
юmetrics
 яlayer_regularization_losses
Ёlayer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
YS
VARIABLE_VALUE
bn10/gamma5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUE	bn10/beta4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEbn10/moving_mean;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEbn10/moving_variance?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
Б0
В1
Г2
Д3*

Б0
В1*
* 
Ю
ёnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
Е	variables
Жtrainable_variables
Зregularization_losses
Й__call__
+К&call_and_return_all_conditional_losses
'К"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ь
Ўnon_trainable_variables
ўlayers
°metrics
 ∙layer_regularization_losses
·layer_metrics
Л	variables
Мtrainable_variables
Нregularization_losses
П__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses* 
* 
* 
]W
VARIABLE_VALUEconv12/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*

С0*

С0*
* 
Ю
√non_trainable_variables
№layers
¤metrics
 ■layer_regularization_losses
 layer_metrics
Т	variables
Уtrainable_variables
Фregularization_losses
Ц__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses*
* 
* 
* 
YS
VARIABLE_VALUE
bn13/gamma5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUE	bn13/beta4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEbn13/moving_mean;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEbn13/moving_variance?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
Щ0
Ъ1
Ы2
Ь3*

Щ0
Ъ1*
* 
Ю
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
Э	variables
Юtrainable_variables
Яregularization_losses
б__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ь
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
г	variables
дtrainable_variables
еregularization_losses
з__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses* 
* 
* 
]W
VARIABLE_VALUEconv15/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*

й0*

й0*
* 
Ю
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
к	variables
лtrainable_variables
мregularization_losses
о__call__
+п&call_and_return_all_conditional_losses
'п"call_and_return_conditional_losses*
* 
* 
* 
ZT
VARIABLE_VALUE
bn16/gamma6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE	bn16/beta5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEbn16/moving_mean<layer_with_weights-10/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEbn16/moving_variance@layer_with_weights-10/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
▒0
▓1
│2
┤3*

▒0
▓1*
* 
Ю
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
╡	variables
╢trainable_variables
╖regularization_losses
╣__call__
+║&call_and_return_all_conditional_losses
'║"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ь
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
╗	variables
╝trainable_variables
╜regularization_losses
┐__call__
+└&call_and_return_all_conditional_losses
'└"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEconv18/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE*

┴0*

┴0*
* 
Ю
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
┬	variables
├trainable_variables
─regularization_losses
╞__call__
+╟&call_and_return_all_conditional_losses
'╟"call_and_return_conditional_losses*
* 
* 
* 
ZT
VARIABLE_VALUE
bn19/gamma6layer_with_weights-12/gamma/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE	bn19/beta5layer_with_weights-12/beta/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEbn19/moving_mean<layer_with_weights-12/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEbn19/moving_variance@layer_with_weights-12/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
╔0
╩1
╦2
╠3*

╔0
╩1*
* 
Ю
Юnon_trainable_variables
Яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
═	variables
╬trainable_variables
╧regularization_losses
╤__call__
+╥&call_and_return_all_conditional_losses
'╥"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ь
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
╙	variables
╘trainable_variables
╒regularization_losses
╫__call__
+╪&call_and_return_all_conditional_losses
'╪"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEconv21/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE*

┘0*

┘0*
* 
Ю
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
┌	variables
█trainable_variables
▄regularization_losses
▐__call__
+▀&call_and_return_all_conditional_losses
'▀"call_and_return_conditional_losses*
* 
* 
* 
ZT
VARIABLE_VALUE
bn22/gamma6layer_with_weights-14/gamma/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE	bn22/beta5layer_with_weights-14/beta/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEbn22/moving_mean<layer_with_weights-14/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEbn22/moving_variance@layer_with_weights-14/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
с0
т1
у2
ф3*

с0
т1*
* 
Ю
нnon_trainable_variables
оlayers
пmetrics
 ░layer_regularization_losses
▒layer_metrics
х	variables
цtrainable_variables
чregularization_losses
щ__call__
+ъ&call_and_return_all_conditional_losses
'ъ"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ь
▓non_trainable_variables
│layers
┤metrics
 ╡layer_regularization_losses
╢layer_metrics
ы	variables
ьtrainable_variables
эregularization_losses
я__call__
+Ё&call_and_return_all_conditional_losses
'Ё"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEconv24/kernel7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUE*

ё0*

ё0*
* 
Ю
╖non_trainable_variables
╕layers
╣metrics
 ║layer_regularization_losses
╗layer_metrics
Є	variables
єtrainable_variables
Їregularization_losses
Ў__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses*
* 
* 
* 
ZT
VARIABLE_VALUE
bn25/gamma6layer_with_weights-16/gamma/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE	bn25/beta5layer_with_weights-16/beta/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEbn25/moving_mean<layer_with_weights-16/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEbn25/moving_variance@layer_with_weights-16/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
∙0
·1
√2
№3*

∙0
·1*
* 
Ю
╝non_trainable_variables
╜layers
╛metrics
 ┐layer_regularization_losses
└layer_metrics
¤	variables
■trainable_variables
 regularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ь
┴non_trainable_variables
┬layers
├metrics
 ─layer_regularization_losses
┼layer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEconv27/kernel7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUE*

Й0*

Й0*
* 
Ю
╞non_trainable_variables
╟layers
╚metrics
 ╔layer_regularization_losses
╩layer_metrics
К	variables
Лtrainable_variables
Мregularization_losses
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses*
* 
* 
* 
ZT
VARIABLE_VALUE
bn28/gamma6layer_with_weights-18/gamma/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE	bn28/beta5layer_with_weights-18/beta/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEbn28/moving_mean<layer_with_weights-18/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEbn28/moving_variance@layer_with_weights-18/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
С0
Т1
У2
Ф3*

С0
Т1*
* 
Ю
╦non_trainable_variables
╠layers
═metrics
 ╬layer_regularization_losses
╧layer_metrics
Х	variables
Цtrainable_variables
Чregularization_losses
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ь
╨non_trainable_variables
╤layers
╥metrics
 ╙layer_regularization_losses
╘layer_metrics
Ы	variables
Ьtrainable_variables
Эregularization_losses
Я__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEconv30/kernel7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUE*

б0*

б0*
* 
Ю
╒non_trainable_variables
╓layers
╫metrics
 ╪layer_regularization_losses
┘layer_metrics
в	variables
гtrainable_variables
дregularization_losses
ж__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses*
* 
* 
* 
ZT
VARIABLE_VALUE
bn31/gamma6layer_with_weights-20/gamma/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE	bn31/beta5layer_with_weights-20/beta/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEbn31/moving_mean<layer_with_weights-20/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEbn31/moving_variance@layer_with_weights-20/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
й0
к1
л2
м3*

й0
к1*
* 
Ю
┌non_trainable_variables
█layers
▄metrics
 ▌layer_regularization_losses
▐layer_metrics
н	variables
оtrainable_variables
пregularization_losses
▒__call__
+▓&call_and_return_all_conditional_losses
'▓"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ь
▀non_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
│	variables
┤trainable_variables
╡regularization_losses
╖__call__
+╕&call_and_return_all_conditional_losses
'╕"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEconv33/kernel7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUE*

╣0*

╣0*
* 
Ю
фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
║	variables
╗trainable_variables
╝regularization_losses
╛__call__
+┐&call_and_return_all_conditional_losses
'┐"call_and_return_conditional_losses*
* 
* 
* 
ZT
VARIABLE_VALUE
bn34/gamma6layer_with_weights-22/gamma/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE	bn34/beta5layer_with_weights-22/beta/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEbn34/moving_mean<layer_with_weights-22/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEbn34/moving_variance@layer_with_weights-22/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
┴0
┬1
├2
─3*

┴0
┬1*
* 
Ю
щnon_trainable_variables
ъlayers
ыmetrics
 ьlayer_regularization_losses
эlayer_metrics
┼	variables
╞trainable_variables
╟regularization_losses
╔__call__
+╩&call_and_return_all_conditional_losses
'╩"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ь
юnon_trainable_variables
яlayers
Ёmetrics
 ёlayer_regularization_losses
Єlayer_metrics
╦	variables
╠trainable_variables
═regularization_losses
╧__call__
+╨&call_and_return_all_conditional_losses
'╨"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEconv36/kernel7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUE*

╤0*

╤0*
* 
Ю
єnon_trainable_variables
Їlayers
їmetrics
 Ўlayer_regularization_losses
ўlayer_metrics
╥	variables
╙trainable_variables
╘regularization_losses
╓__call__
+╫&call_and_return_all_conditional_losses
'╫"call_and_return_conditional_losses*
* 
* 
* 
ZT
VARIABLE_VALUE
bn37/gamma6layer_with_weights-24/gamma/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE	bn37/beta5layer_with_weights-24/beta/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEbn37/moving_mean<layer_with_weights-24/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEbn37/moving_variance@layer_with_weights-24/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
┘0
┌1
█2
▄3*

┘0
┌1*
* 
Ю
°non_trainable_variables
∙layers
·metrics
 √layer_regularization_losses
№layer_metrics
▌	variables
▐trainable_variables
▀regularization_losses
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ь
¤non_trainable_variables
■layers
 metrics
 Аlayer_regularization_losses
Бlayer_metrics
у	variables
фtrainable_variables
хregularization_losses
ч__call__
+ш&call_and_return_all_conditional_losses
'ш"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEconv39/kernel7layer_with_weights-25/kernel/.ATTRIBUTES/VARIABLE_VALUE*

щ0*

щ0*
* 
Ю
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
ъ	variables
ыtrainable_variables
ьregularization_losses
ю__call__
+я&call_and_return_all_conditional_losses
'я"call_and_return_conditional_losses*
* 
* 
* 
ZT
VARIABLE_VALUE
bn40/gamma6layer_with_weights-26/gamma/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE	bn40/beta5layer_with_weights-26/beta/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEbn40/moving_mean<layer_with_weights-26/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEbn40/moving_variance@layer_with_weights-26/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
ё0
Є1
є2
Ї3*

ё0
Є1*
* 
Ю
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
ї	variables
Ўtrainable_variables
ўregularization_losses
∙__call__
+·&call_and_return_all_conditional_losses
'·"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ь
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
√	variables
№trainable_variables
¤regularization_losses
 __call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEconv42/kernel7layer_with_weights-27/kernel/.ATTRIBUTES/VARIABLE_VALUE*

Б0*

Б0*
* 
Ю
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses*
* 
* 
* 
ZT
VARIABLE_VALUE
bn43/gamma6layer_with_weights-28/gamma/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE	bn43/beta5layer_with_weights-28/beta/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEbn43/moving_mean<layer_with_weights-28/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEbn43/moving_variance@layer_with_weights-28/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
Й0
К1
Л2
М3*

Й0
К1*
* 
Ю
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ь
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEconv45/kernel7layer_with_weights-29/kernel/.ATTRIBUTES/VARIABLE_VALUE*

Щ0*

Щ0*
* 
Ю
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses*
* 
* 
* 
ZT
VARIABLE_VALUE
bn46/gamma6layer_with_weights-30/gamma/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE	bn46/beta5layer_with_weights-30/beta/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEbn46/moving_mean<layer_with_weights-30/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEbn46/moving_variance@layer_with_weights-30/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
б0
в1
г2
д3*

б0
в1*
* 
Ю
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ь
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
л	variables
мtrainable_variables
нregularization_losses
п__call__
+░&call_and_return_all_conditional_losses
'░"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEconv48/kernel7layer_with_weights-31/kernel/.ATTRIBUTES/VARIABLE_VALUE*

▒0*

▒0*
* 
Ю
пnon_trainable_variables
░layers
▒metrics
 ▓layer_regularization_losses
│layer_metrics
▓	variables
│trainable_variables
┤regularization_losses
╢__call__
+╖&call_and_return_all_conditional_losses
'╖"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ь
┤non_trainable_variables
╡layers
╢metrics
 ╖layer_regularization_losses
╕layer_metrics
╕	variables
╣trainable_variables
║regularization_losses
╝__call__
+╜&call_and_return_all_conditional_losses
'╜"call_and_return_conditional_losses* 
* 
* 
Д
S0
T1
k2
l3
Г4
Д5
Ы6
Ь7
│8
┤9
╦10
╠11
у12
ф13
√14
№15
У16
Ф17
л18
м19
├20
─21
█22
▄23
є24
Ї25
Л26
М27
г28
д29*
К
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38
(39
)40
*41
+42
,43
-44
.45
/46
047
148
249*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

S0
T1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

k0
l1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Г0
Д1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Ы0
Ь1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

│0
┤1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

╦0
╠1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

у0
ф1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

√0
№1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

У0
Ф1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

л0
м1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

├0
─1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

█0
▄1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

є0
Ї1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Л0
М1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

г0
д1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
н
serving_default_input0Placeholder*A
_output_shapes/
-:+                           *
dtype0*6
shape-:+                           
Ш
StatefulPartitionedCallStatefulPartitionedCallserving_default_input0conv1/kernel
conv1/biasconv3/kernel	bn4/gammabn4/betabn4/moving_meanbn4/moving_varianceconv6/kernel	bn7/gammabn7/betabn7/moving_meanbn7/moving_varianceconv9/kernel
bn10/gamma	bn10/betabn10/moving_meanbn10/moving_varianceconv12/kernel
bn13/gamma	bn13/betabn13/moving_meanbn13/moving_varianceconv15/kernel
bn16/gamma	bn16/betabn16/moving_meanbn16/moving_varianceconv18/kernel
bn19/gamma	bn19/betabn19/moving_meanbn19/moving_varianceconv21/kernel
bn22/gamma	bn22/betabn22/moving_meanbn22/moving_varianceconv24/kernel
bn25/gamma	bn25/betabn25/moving_meanbn25/moving_varianceconv27/kernel
bn28/gamma	bn28/betabn28/moving_meanbn28/moving_varianceconv30/kernel
bn31/gamma	bn31/betabn31/moving_meanbn31/moving_varianceconv33/kernel
bn34/gamma	bn34/betabn34/moving_meanbn34/moving_varianceconv36/kernel
bn37/gamma	bn37/betabn37/moving_meanbn37/moving_varianceconv39/kernel
bn40/gamma	bn40/betabn40/moving_meanbn40/moving_varianceconv42/kernel
bn43/gamma	bn43/betabn43/moving_meanbn43/moving_varianceconv45/kernel
bn46/gamma	bn46/betabn46/moving_meanbn46/moving_varianceconv48/kernel*Z
TinS
Q2O*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *p
_read_only_resource_inputsR
PN	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMN*0
config_proto 

CPU

GPU2*0J 8В *+
f&R$
"__inference_signature_wrapper_5330
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
▓
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename conv1/kernel/Read/ReadVariableOpconv1/bias/Read/ReadVariableOp conv3/kernel/Read/ReadVariableOpbn4/gamma/Read/ReadVariableOpbn4/beta/Read/ReadVariableOp#bn4/moving_mean/Read/ReadVariableOp'bn4/moving_variance/Read/ReadVariableOp conv6/kernel/Read/ReadVariableOpbn7/gamma/Read/ReadVariableOpbn7/beta/Read/ReadVariableOp#bn7/moving_mean/Read/ReadVariableOp'bn7/moving_variance/Read/ReadVariableOp conv9/kernel/Read/ReadVariableOpbn10/gamma/Read/ReadVariableOpbn10/beta/Read/ReadVariableOp$bn10/moving_mean/Read/ReadVariableOp(bn10/moving_variance/Read/ReadVariableOp!conv12/kernel/Read/ReadVariableOpbn13/gamma/Read/ReadVariableOpbn13/beta/Read/ReadVariableOp$bn13/moving_mean/Read/ReadVariableOp(bn13/moving_variance/Read/ReadVariableOp!conv15/kernel/Read/ReadVariableOpbn16/gamma/Read/ReadVariableOpbn16/beta/Read/ReadVariableOp$bn16/moving_mean/Read/ReadVariableOp(bn16/moving_variance/Read/ReadVariableOp!conv18/kernel/Read/ReadVariableOpbn19/gamma/Read/ReadVariableOpbn19/beta/Read/ReadVariableOp$bn19/moving_mean/Read/ReadVariableOp(bn19/moving_variance/Read/ReadVariableOp!conv21/kernel/Read/ReadVariableOpbn22/gamma/Read/ReadVariableOpbn22/beta/Read/ReadVariableOp$bn22/moving_mean/Read/ReadVariableOp(bn22/moving_variance/Read/ReadVariableOp!conv24/kernel/Read/ReadVariableOpbn25/gamma/Read/ReadVariableOpbn25/beta/Read/ReadVariableOp$bn25/moving_mean/Read/ReadVariableOp(bn25/moving_variance/Read/ReadVariableOp!conv27/kernel/Read/ReadVariableOpbn28/gamma/Read/ReadVariableOpbn28/beta/Read/ReadVariableOp$bn28/moving_mean/Read/ReadVariableOp(bn28/moving_variance/Read/ReadVariableOp!conv30/kernel/Read/ReadVariableOpbn31/gamma/Read/ReadVariableOpbn31/beta/Read/ReadVariableOp$bn31/moving_mean/Read/ReadVariableOp(bn31/moving_variance/Read/ReadVariableOp!conv33/kernel/Read/ReadVariableOpbn34/gamma/Read/ReadVariableOpbn34/beta/Read/ReadVariableOp$bn34/moving_mean/Read/ReadVariableOp(bn34/moving_variance/Read/ReadVariableOp!conv36/kernel/Read/ReadVariableOpbn37/gamma/Read/ReadVariableOpbn37/beta/Read/ReadVariableOp$bn37/moving_mean/Read/ReadVariableOp(bn37/moving_variance/Read/ReadVariableOp!conv39/kernel/Read/ReadVariableOpbn40/gamma/Read/ReadVariableOpbn40/beta/Read/ReadVariableOp$bn40/moving_mean/Read/ReadVariableOp(bn40/moving_variance/Read/ReadVariableOp!conv42/kernel/Read/ReadVariableOpbn43/gamma/Read/ReadVariableOpbn43/beta/Read/ReadVariableOp$bn43/moving_mean/Read/ReadVariableOp(bn43/moving_variance/Read/ReadVariableOp!conv45/kernel/Read/ReadVariableOpbn46/gamma/Read/ReadVariableOpbn46/beta/Read/ReadVariableOp$bn46/moving_mean/Read/ReadVariableOp(bn46/moving_variance/Read/ReadVariableOp!conv48/kernel/Read/ReadVariableOpConst*[
TinT
R2P*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *&
f!R
__inference__traced_save_6932
Х
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1/kernel
conv1/biasconv3/kernel	bn4/gammabn4/betabn4/moving_meanbn4/moving_varianceconv6/kernel	bn7/gammabn7/betabn7/moving_meanbn7/moving_varianceconv9/kernel
bn10/gamma	bn10/betabn10/moving_meanbn10/moving_varianceconv12/kernel
bn13/gamma	bn13/betabn13/moving_meanbn13/moving_varianceconv15/kernel
bn16/gamma	bn16/betabn16/moving_meanbn16/moving_varianceconv18/kernel
bn19/gamma	bn19/betabn19/moving_meanbn19/moving_varianceconv21/kernel
bn22/gamma	bn22/betabn22/moving_meanbn22/moving_varianceconv24/kernel
bn25/gamma	bn25/betabn25/moving_meanbn25/moving_varianceconv27/kernel
bn28/gamma	bn28/betabn28/moving_meanbn28/moving_varianceconv30/kernel
bn31/gamma	bn31/betabn31/moving_meanbn31/moving_varianceconv33/kernel
bn34/gamma	bn34/betabn34/moving_meanbn34/moving_varianceconv36/kernel
bn37/gamma	bn37/betabn37/moving_meanbn37/moving_varianceconv39/kernel
bn40/gamma	bn40/betabn40/moving_meanbn40/moving_varianceconv42/kernel
bn43/gamma	bn43/betabn43/moving_meanbn43/moving_varianceconv45/kernel
bn46/gamma	bn46/betabn46/moving_meanbn46/moving_varianceconv48/kernel*Z
TinS
Q2O*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference__traced_restore_7176о·!
с
░
?__inference_conv9_layer_call_and_return_conditional_losses_2401

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ь
╛
#__inference_bn37_layer_call_fn_6345

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn37_layer_call_and_return_conditional_losses_2107Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
м
\
@__inference_relu11_layer_call_and_return_conditional_losses_2419

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ю
╛
#__inference_bn46_layer_call_fn_6590

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn46_layer_call_and_return_conditional_losses_2268Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ю
╛
#__inference_bn16_layer_call_fn_5730

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn16_layer_call_and_return_conditional_losses_1628Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
т
▒
@__inference_conv42_layer_call_and_return_conditional_losses_6491

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
л
[
?__inference_relu5_layer_call_and_return_conditional_losses_2365

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
┐И
М
__inference__traced_save_6932
file_prefix+
'savev2_conv1_kernel_read_readvariableop)
%savev2_conv1_bias_read_readvariableop+
'savev2_conv3_kernel_read_readvariableop(
$savev2_bn4_gamma_read_readvariableop'
#savev2_bn4_beta_read_readvariableop.
*savev2_bn4_moving_mean_read_readvariableop2
.savev2_bn4_moving_variance_read_readvariableop+
'savev2_conv6_kernel_read_readvariableop(
$savev2_bn7_gamma_read_readvariableop'
#savev2_bn7_beta_read_readvariableop.
*savev2_bn7_moving_mean_read_readvariableop2
.savev2_bn7_moving_variance_read_readvariableop+
'savev2_conv9_kernel_read_readvariableop)
%savev2_bn10_gamma_read_readvariableop(
$savev2_bn10_beta_read_readvariableop/
+savev2_bn10_moving_mean_read_readvariableop3
/savev2_bn10_moving_variance_read_readvariableop,
(savev2_conv12_kernel_read_readvariableop)
%savev2_bn13_gamma_read_readvariableop(
$savev2_bn13_beta_read_readvariableop/
+savev2_bn13_moving_mean_read_readvariableop3
/savev2_bn13_moving_variance_read_readvariableop,
(savev2_conv15_kernel_read_readvariableop)
%savev2_bn16_gamma_read_readvariableop(
$savev2_bn16_beta_read_readvariableop/
+savev2_bn16_moving_mean_read_readvariableop3
/savev2_bn16_moving_variance_read_readvariableop,
(savev2_conv18_kernel_read_readvariableop)
%savev2_bn19_gamma_read_readvariableop(
$savev2_bn19_beta_read_readvariableop/
+savev2_bn19_moving_mean_read_readvariableop3
/savev2_bn19_moving_variance_read_readvariableop,
(savev2_conv21_kernel_read_readvariableop)
%savev2_bn22_gamma_read_readvariableop(
$savev2_bn22_beta_read_readvariableop/
+savev2_bn22_moving_mean_read_readvariableop3
/savev2_bn22_moving_variance_read_readvariableop,
(savev2_conv24_kernel_read_readvariableop)
%savev2_bn25_gamma_read_readvariableop(
$savev2_bn25_beta_read_readvariableop/
+savev2_bn25_moving_mean_read_readvariableop3
/savev2_bn25_moving_variance_read_readvariableop,
(savev2_conv27_kernel_read_readvariableop)
%savev2_bn28_gamma_read_readvariableop(
$savev2_bn28_beta_read_readvariableop/
+savev2_bn28_moving_mean_read_readvariableop3
/savev2_bn28_moving_variance_read_readvariableop,
(savev2_conv30_kernel_read_readvariableop)
%savev2_bn31_gamma_read_readvariableop(
$savev2_bn31_beta_read_readvariableop/
+savev2_bn31_moving_mean_read_readvariableop3
/savev2_bn31_moving_variance_read_readvariableop,
(savev2_conv33_kernel_read_readvariableop)
%savev2_bn34_gamma_read_readvariableop(
$savev2_bn34_beta_read_readvariableop/
+savev2_bn34_moving_mean_read_readvariableop3
/savev2_bn34_moving_variance_read_readvariableop,
(savev2_conv36_kernel_read_readvariableop)
%savev2_bn37_gamma_read_readvariableop(
$savev2_bn37_beta_read_readvariableop/
+savev2_bn37_moving_mean_read_readvariableop3
/savev2_bn37_moving_variance_read_readvariableop,
(savev2_conv39_kernel_read_readvariableop)
%savev2_bn40_gamma_read_readvariableop(
$savev2_bn40_beta_read_readvariableop/
+savev2_bn40_moving_mean_read_readvariableop3
/savev2_bn40_moving_variance_read_readvariableop,
(savev2_conv42_kernel_read_readvariableop)
%savev2_bn43_gamma_read_readvariableop(
$savev2_bn43_beta_read_readvariableop/
+savev2_bn43_moving_mean_read_readvariableop3
/savev2_bn43_moving_variance_read_readvariableop,
(savev2_conv45_kernel_read_readvariableop)
%savev2_bn46_gamma_read_readvariableop(
$savev2_bn46_beta_read_readvariableop/
+savev2_bn46_moving_mean_read_readvariableop3
/savev2_bn46_moving_variance_read_readvariableop,
(savev2_conv48_kernel_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ї$
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*Э$
valueУ$BР$OB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-10/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-10/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-12/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-12/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-12/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-14/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-14/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-14/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-16/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-16/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-16/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-18/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-18/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-18/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-20/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-20/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-20/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-22/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-22/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-22/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-22/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-24/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-24/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-24/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-24/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-25/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-26/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-26/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-26/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-26/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-27/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-28/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-28/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-28/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-28/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-29/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-30/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-30/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-30/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-30/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-31/kernel/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHО
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*│
valueйBжOB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ш
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_conv1_kernel_read_readvariableop%savev2_conv1_bias_read_readvariableop'savev2_conv3_kernel_read_readvariableop$savev2_bn4_gamma_read_readvariableop#savev2_bn4_beta_read_readvariableop*savev2_bn4_moving_mean_read_readvariableop.savev2_bn4_moving_variance_read_readvariableop'savev2_conv6_kernel_read_readvariableop$savev2_bn7_gamma_read_readvariableop#savev2_bn7_beta_read_readvariableop*savev2_bn7_moving_mean_read_readvariableop.savev2_bn7_moving_variance_read_readvariableop'savev2_conv9_kernel_read_readvariableop%savev2_bn10_gamma_read_readvariableop$savev2_bn10_beta_read_readvariableop+savev2_bn10_moving_mean_read_readvariableop/savev2_bn10_moving_variance_read_readvariableop(savev2_conv12_kernel_read_readvariableop%savev2_bn13_gamma_read_readvariableop$savev2_bn13_beta_read_readvariableop+savev2_bn13_moving_mean_read_readvariableop/savev2_bn13_moving_variance_read_readvariableop(savev2_conv15_kernel_read_readvariableop%savev2_bn16_gamma_read_readvariableop$savev2_bn16_beta_read_readvariableop+savev2_bn16_moving_mean_read_readvariableop/savev2_bn16_moving_variance_read_readvariableop(savev2_conv18_kernel_read_readvariableop%savev2_bn19_gamma_read_readvariableop$savev2_bn19_beta_read_readvariableop+savev2_bn19_moving_mean_read_readvariableop/savev2_bn19_moving_variance_read_readvariableop(savev2_conv21_kernel_read_readvariableop%savev2_bn22_gamma_read_readvariableop$savev2_bn22_beta_read_readvariableop+savev2_bn22_moving_mean_read_readvariableop/savev2_bn22_moving_variance_read_readvariableop(savev2_conv24_kernel_read_readvariableop%savev2_bn25_gamma_read_readvariableop$savev2_bn25_beta_read_readvariableop+savev2_bn25_moving_mean_read_readvariableop/savev2_bn25_moving_variance_read_readvariableop(savev2_conv27_kernel_read_readvariableop%savev2_bn28_gamma_read_readvariableop$savev2_bn28_beta_read_readvariableop+savev2_bn28_moving_mean_read_readvariableop/savev2_bn28_moving_variance_read_readvariableop(savev2_conv30_kernel_read_readvariableop%savev2_bn31_gamma_read_readvariableop$savev2_bn31_beta_read_readvariableop+savev2_bn31_moving_mean_read_readvariableop/savev2_bn31_moving_variance_read_readvariableop(savev2_conv33_kernel_read_readvariableop%savev2_bn34_gamma_read_readvariableop$savev2_bn34_beta_read_readvariableop+savev2_bn34_moving_mean_read_readvariableop/savev2_bn34_moving_variance_read_readvariableop(savev2_conv36_kernel_read_readvariableop%savev2_bn37_gamma_read_readvariableop$savev2_bn37_beta_read_readvariableop+savev2_bn37_moving_mean_read_readvariableop/savev2_bn37_moving_variance_read_readvariableop(savev2_conv39_kernel_read_readvariableop%savev2_bn40_gamma_read_readvariableop$savev2_bn40_beta_read_readvariableop+savev2_bn40_moving_mean_read_readvariableop/savev2_bn40_moving_variance_read_readvariableop(savev2_conv42_kernel_read_readvariableop%savev2_bn43_gamma_read_readvariableop$savev2_bn43_beta_read_readvariableop+savev2_bn43_moving_mean_read_readvariableop/savev2_bn43_moving_variance_read_readvariableop(savev2_conv45_kernel_read_readvariableop%savev2_bn46_gamma_read_readvariableop$savev2_bn46_beta_read_readvariableop+savev2_bn46_moving_mean_read_readvariableop/savev2_bn46_moving_variance_read_readvariableop(savev2_conv48_kernel_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *]
dtypesS
Q2OР
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
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

identity_1Identity_1:output:0*╣
_input_shapesз
д: :@:@:@@:@:@:@:@:@@:@:@:@:@:@@:@:@:@:@:@@:@:@:@:@:@@:@:@:@:@:@@:@:@:@:@:@@:@:@:@:@:@@:@:@:@:@:@@:@:@:@:@:@@:@:@:@:@:@@:@:@:@:@:@@:@:@:@:@:@@:@:@:@:@:@@:@:@:@:@:@@:@:@:@:@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 	

_output_shapes
:@: 


_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:  

_output_shapes
:@:,!(
&
_output_shapes
:@@: "

_output_shapes
:@: #

_output_shapes
:@: $

_output_shapes
:@: %

_output_shapes
:@:,&(
&
_output_shapes
:@@: '

_output_shapes
:@: (

_output_shapes
:@: )

_output_shapes
:@: *

_output_shapes
:@:,+(
&
_output_shapes
:@@: ,

_output_shapes
:@: -

_output_shapes
:@: .

_output_shapes
:@: /

_output_shapes
:@:,0(
&
_output_shapes
:@@: 1

_output_shapes
:@: 2

_output_shapes
:@: 3

_output_shapes
:@: 4

_output_shapes
:@:,5(
&
_output_shapes
:@@: 6

_output_shapes
:@: 7

_output_shapes
:@: 8

_output_shapes
:@: 9

_output_shapes
:@:,:(
&
_output_shapes
:@@: ;

_output_shapes
:@: <

_output_shapes
:@: =

_output_shapes
:@: >

_output_shapes
:@:,?(
&
_output_shapes
:@@: @

_output_shapes
:@: A

_output_shapes
:@: B

_output_shapes
:@: C

_output_shapes
:@:,D(
&
_output_shapes
:@@: E

_output_shapes
:@: F

_output_shapes
:@: G

_output_shapes
:@: H

_output_shapes
:@:,I(
&
_output_shapes
:@@: J

_output_shapes
:@: K

_output_shapes
:@: L

_output_shapes
:@: M

_output_shapes
:@:,N(
&
_output_shapes
:@:O

_output_shapes
: 
Ф
н
>__inference_bn28_layer_call_and_return_conditional_losses_1915

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
м
\
@__inference_relu47_layer_call_and_return_conditional_losses_2743

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
з
Й
>__inference_bn28_layer_call_and_return_conditional_losses_1884

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
┴
U
)__inference_subtract49_layer_call_fn_6669
inputs_0
inputs_1
identity┘
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_subtract49_layer_call_and_return_conditional_losses_2762z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+                           "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:+                           :+                           :k g
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/0:kg
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/1
Ф
н
>__inference_bn40_layer_call_and_return_conditional_losses_2171

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
м
\
@__inference_relu11_layer_call_and_return_conditional_losses_5617

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ж
Б
%__inference_conv27_layer_call_fn_6054

inputs!
unknown:@@
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv27_layer_call_and_return_conditional_losses_2563Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
з
Й
>__inference_bn37_layer_call_and_return_conditional_losses_2076

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ф
н
>__inference_bn43_layer_call_and_return_conditional_losses_6553

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ф
н
>__inference_bn46_layer_call_and_return_conditional_losses_6639

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╚и
╗-
 __inference__traced_restore_7176
file_prefix7
assignvariableop_conv1_kernel:@+
assignvariableop_1_conv1_bias:@9
assignvariableop_2_conv3_kernel:@@*
assignvariableop_3_bn4_gamma:@)
assignvariableop_4_bn4_beta:@0
"assignvariableop_5_bn4_moving_mean:@4
&assignvariableop_6_bn4_moving_variance:@9
assignvariableop_7_conv6_kernel:@@*
assignvariableop_8_bn7_gamma:@)
assignvariableop_9_bn7_beta:@1
#assignvariableop_10_bn7_moving_mean:@5
'assignvariableop_11_bn7_moving_variance:@:
 assignvariableop_12_conv9_kernel:@@,
assignvariableop_13_bn10_gamma:@+
assignvariableop_14_bn10_beta:@2
$assignvariableop_15_bn10_moving_mean:@6
(assignvariableop_16_bn10_moving_variance:@;
!assignvariableop_17_conv12_kernel:@@,
assignvariableop_18_bn13_gamma:@+
assignvariableop_19_bn13_beta:@2
$assignvariableop_20_bn13_moving_mean:@6
(assignvariableop_21_bn13_moving_variance:@;
!assignvariableop_22_conv15_kernel:@@,
assignvariableop_23_bn16_gamma:@+
assignvariableop_24_bn16_beta:@2
$assignvariableop_25_bn16_moving_mean:@6
(assignvariableop_26_bn16_moving_variance:@;
!assignvariableop_27_conv18_kernel:@@,
assignvariableop_28_bn19_gamma:@+
assignvariableop_29_bn19_beta:@2
$assignvariableop_30_bn19_moving_mean:@6
(assignvariableop_31_bn19_moving_variance:@;
!assignvariableop_32_conv21_kernel:@@,
assignvariableop_33_bn22_gamma:@+
assignvariableop_34_bn22_beta:@2
$assignvariableop_35_bn22_moving_mean:@6
(assignvariableop_36_bn22_moving_variance:@;
!assignvariableop_37_conv24_kernel:@@,
assignvariableop_38_bn25_gamma:@+
assignvariableop_39_bn25_beta:@2
$assignvariableop_40_bn25_moving_mean:@6
(assignvariableop_41_bn25_moving_variance:@;
!assignvariableop_42_conv27_kernel:@@,
assignvariableop_43_bn28_gamma:@+
assignvariableop_44_bn28_beta:@2
$assignvariableop_45_bn28_moving_mean:@6
(assignvariableop_46_bn28_moving_variance:@;
!assignvariableop_47_conv30_kernel:@@,
assignvariableop_48_bn31_gamma:@+
assignvariableop_49_bn31_beta:@2
$assignvariableop_50_bn31_moving_mean:@6
(assignvariableop_51_bn31_moving_variance:@;
!assignvariableop_52_conv33_kernel:@@,
assignvariableop_53_bn34_gamma:@+
assignvariableop_54_bn34_beta:@2
$assignvariableop_55_bn34_moving_mean:@6
(assignvariableop_56_bn34_moving_variance:@;
!assignvariableop_57_conv36_kernel:@@,
assignvariableop_58_bn37_gamma:@+
assignvariableop_59_bn37_beta:@2
$assignvariableop_60_bn37_moving_mean:@6
(assignvariableop_61_bn37_moving_variance:@;
!assignvariableop_62_conv39_kernel:@@,
assignvariableop_63_bn40_gamma:@+
assignvariableop_64_bn40_beta:@2
$assignvariableop_65_bn40_moving_mean:@6
(assignvariableop_66_bn40_moving_variance:@;
!assignvariableop_67_conv42_kernel:@@,
assignvariableop_68_bn43_gamma:@+
assignvariableop_69_bn43_beta:@2
$assignvariableop_70_bn43_moving_mean:@6
(assignvariableop_71_bn43_moving_variance:@;
!assignvariableop_72_conv45_kernel:@@,
assignvariableop_73_bn46_gamma:@+
assignvariableop_74_bn46_beta:@2
$assignvariableop_75_bn46_moving_mean:@6
(assignvariableop_76_bn46_moving_variance:@;
!assignvariableop_77_conv48_kernel:@
identity_79ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_56вAssignVariableOp_57вAssignVariableOp_58вAssignVariableOp_59вAssignVariableOp_6вAssignVariableOp_60вAssignVariableOp_61вAssignVariableOp_62вAssignVariableOp_63вAssignVariableOp_64вAssignVariableOp_65вAssignVariableOp_66вAssignVariableOp_67вAssignVariableOp_68вAssignVariableOp_69вAssignVariableOp_7вAssignVariableOp_70вAssignVariableOp_71вAssignVariableOp_72вAssignVariableOp_73вAssignVariableOp_74вAssignVariableOp_75вAssignVariableOp_76вAssignVariableOp_77вAssignVariableOp_8вAssignVariableOp_9ў$
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*Э$
valueУ$BР$OB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-10/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-10/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-12/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-12/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-12/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-14/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-14/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-14/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-16/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-16/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-16/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-18/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-18/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-18/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-20/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-20/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-20/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-22/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-22/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-22/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-22/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-24/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-24/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-24/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-24/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-25/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-26/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-26/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-26/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-26/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-27/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-28/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-28/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-28/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-28/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-29/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-30/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-30/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-30/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-30/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-31/kernel/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHС
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*│
valueйBжOB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B м
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*╥
_output_shapes┐
╝:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*]
dtypesS
Q2O[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOpAssignVariableOpassignvariableop_conv1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_2AssignVariableOpassignvariableop_2_conv3_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_3AssignVariableOpassignvariableop_3_bn4_gammaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_4AssignVariableOpassignvariableop_4_bn4_betaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_5AssignVariableOp"assignvariableop_5_bn4_moving_meanIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_6AssignVariableOp&assignvariableop_6_bn4_moving_varianceIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_7AssignVariableOpassignvariableop_7_conv6_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_8AssignVariableOpassignvariableop_8_bn7_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_9AssignVariableOpassignvariableop_9_bn7_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_10AssignVariableOp#assignvariableop_10_bn7_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_11AssignVariableOp'assignvariableop_11_bn7_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_12AssignVariableOp assignvariableop_12_conv9_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_13AssignVariableOpassignvariableop_13_bn10_gammaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_14AssignVariableOpassignvariableop_14_bn10_betaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_15AssignVariableOp$assignvariableop_15_bn10_moving_meanIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_16AssignVariableOp(assignvariableop_16_bn10_moving_varianceIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_17AssignVariableOp!assignvariableop_17_conv12_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_18AssignVariableOpassignvariableop_18_bn13_gammaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_19AssignVariableOpassignvariableop_19_bn13_betaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_20AssignVariableOp$assignvariableop_20_bn13_moving_meanIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_21AssignVariableOp(assignvariableop_21_bn13_moving_varianceIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_22AssignVariableOp!assignvariableop_22_conv15_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_23AssignVariableOpassignvariableop_23_bn16_gammaIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_24AssignVariableOpassignvariableop_24_bn16_betaIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_25AssignVariableOp$assignvariableop_25_bn16_moving_meanIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_26AssignVariableOp(assignvariableop_26_bn16_moving_varianceIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_27AssignVariableOp!assignvariableop_27_conv18_kernelIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_28AssignVariableOpassignvariableop_28_bn19_gammaIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_29AssignVariableOpassignvariableop_29_bn19_betaIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_30AssignVariableOp$assignvariableop_30_bn19_moving_meanIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_31AssignVariableOp(assignvariableop_31_bn19_moving_varianceIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_32AssignVariableOp!assignvariableop_32_conv21_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_33AssignVariableOpassignvariableop_33_bn22_gammaIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_34AssignVariableOpassignvariableop_34_bn22_betaIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_35AssignVariableOp$assignvariableop_35_bn22_moving_meanIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_36AssignVariableOp(assignvariableop_36_bn22_moving_varianceIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_37AssignVariableOp!assignvariableop_37_conv24_kernelIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_38AssignVariableOpassignvariableop_38_bn25_gammaIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_39AssignVariableOpassignvariableop_39_bn25_betaIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_40AssignVariableOp$assignvariableop_40_bn25_moving_meanIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_41AssignVariableOp(assignvariableop_41_bn25_moving_varianceIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_42AssignVariableOp!assignvariableop_42_conv27_kernelIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_43AssignVariableOpassignvariableop_43_bn28_gammaIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_44AssignVariableOpassignvariableop_44_bn28_betaIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_45AssignVariableOp$assignvariableop_45_bn28_moving_meanIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_46AssignVariableOp(assignvariableop_46_bn28_moving_varianceIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_47AssignVariableOp!assignvariableop_47_conv30_kernelIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_48AssignVariableOpassignvariableop_48_bn31_gammaIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_49AssignVariableOpassignvariableop_49_bn31_betaIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_50AssignVariableOp$assignvariableop_50_bn31_moving_meanIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_51AssignVariableOp(assignvariableop_51_bn31_moving_varianceIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_52AssignVariableOp!assignvariableop_52_conv33_kernelIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_53AssignVariableOpassignvariableop_53_bn34_gammaIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_54AssignVariableOpassignvariableop_54_bn34_betaIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_55AssignVariableOp$assignvariableop_55_bn34_moving_meanIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_56AssignVariableOp(assignvariableop_56_bn34_moving_varianceIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_57AssignVariableOp!assignvariableop_57_conv36_kernelIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_58AssignVariableOpassignvariableop_58_bn37_gammaIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_59AssignVariableOpassignvariableop_59_bn37_betaIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_60AssignVariableOp$assignvariableop_60_bn37_moving_meanIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_61AssignVariableOp(assignvariableop_61_bn37_moving_varianceIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_62AssignVariableOp!assignvariableop_62_conv39_kernelIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_63AssignVariableOpassignvariableop_63_bn40_gammaIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_64AssignVariableOpassignvariableop_64_bn40_betaIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_65AssignVariableOp$assignvariableop_65_bn40_moving_meanIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_66AssignVariableOp(assignvariableop_66_bn40_moving_varianceIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_67AssignVariableOp!assignvariableop_67_conv42_kernelIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_68AssignVariableOpassignvariableop_68_bn43_gammaIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_69AssignVariableOpassignvariableop_69_bn43_betaIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_70AssignVariableOp$assignvariableop_70_bn43_moving_meanIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_71AssignVariableOp(assignvariableop_71_bn43_moving_varianceIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_72AssignVariableOp!assignvariableop_72_conv45_kernelIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_73AssignVariableOpassignvariableop_73_bn46_gammaIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_74AssignVariableOpassignvariableop_74_bn46_betaIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_75AssignVariableOp$assignvariableop_75_bn46_moving_meanIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_76AssignVariableOp(assignvariableop_76_bn46_moving_varianceIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_77AssignVariableOp!assignvariableop_77_conv48_kernelIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Г
Identity_78Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_79IdentityIdentity_78:output:0^NoOp_1*
T0*
_output_shapes
: Ё
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_79Identity_79:output:0*│
_input_shapesб
Ю: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ф
н
>__inference_bn28_layer_call_and_return_conditional_losses_6123

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
т
▒
@__inference_conv36_layer_call_and_return_conditional_losses_2644

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ф
н
>__inference_bn25_layer_call_and_return_conditional_losses_6037

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ф
н
>__inference_bn13_layer_call_and_return_conditional_losses_5693

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
¤

°
?__inference_conv1_layer_call_and_return_conditional_losses_5349

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0П
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
л
[
?__inference_relu2_layer_call_and_return_conditional_losses_5359

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ь
╛
#__inference_bn34_layer_call_fn_6259

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn34_layer_call_and_return_conditional_losses_2043Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Д
А
$__inference_conv6_layer_call_fn_5452

inputs!
unknown:@@
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_conv6_layer_call_and_return_conditional_losses_2374Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
т
▒
@__inference_conv48_layer_call_and_return_conditional_losses_2752

inputs8
conv2d_readvariableop_resource:@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           ^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ф
н
>__inference_bn25_layer_call_and_return_conditional_losses_1851

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
з
Й
>__inference_bn34_layer_call_and_return_conditional_losses_6277

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
з
Й
>__inference_bn13_layer_call_and_return_conditional_losses_1564

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╒"
И
$__inference_model_layer_call_fn_4436

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@#
	unknown_6:@@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@$

unknown_16:@@

unknown_17:@

unknown_18:@

unknown_19:@

unknown_20:@$

unknown_21:@@

unknown_22:@

unknown_23:@

unknown_24:@

unknown_25:@$

unknown_26:@@

unknown_27:@

unknown_28:@

unknown_29:@

unknown_30:@$

unknown_31:@@

unknown_32:@

unknown_33:@

unknown_34:@

unknown_35:@$

unknown_36:@@

unknown_37:@

unknown_38:@

unknown_39:@

unknown_40:@$

unknown_41:@@

unknown_42:@

unknown_43:@

unknown_44:@

unknown_45:@$

unknown_46:@@

unknown_47:@

unknown_48:@

unknown_49:@

unknown_50:@$

unknown_51:@@

unknown_52:@

unknown_53:@

unknown_54:@

unknown_55:@$

unknown_56:@@

unknown_57:@

unknown_58:@

unknown_59:@

unknown_60:@$

unknown_61:@@

unknown_62:@

unknown_63:@

unknown_64:@

unknown_65:@$

unknown_66:@@

unknown_67:@

unknown_68:@

unknown_69:@

unknown_70:@$

unknown_71:@@

unknown_72:@

unknown_73:@

unknown_74:@

unknown_75:@$

unknown_76:@
identityИвStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70
unknown_71
unknown_72
unknown_73
unknown_74
unknown_75
unknown_76*Z
TinS
Q2O*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *p
_read_only_resource_inputsR
PN	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMN*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_2765Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*▐
_input_shapes╠
╔:+                           : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
м
\
@__inference_relu20_layer_call_and_return_conditional_losses_5875

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
¤

°
?__inference_conv1_layer_call_and_return_conditional_losses_2327

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0П
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
т
▒
@__inference_conv18_layer_call_and_return_conditional_losses_2482

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ю
╛
#__inference_bn40_layer_call_fn_6418

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn40_layer_call_and_return_conditional_losses_2140Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
м
\
@__inference_relu17_layer_call_and_return_conditional_losses_5789

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ф
н
>__inference_bn22_layer_call_and_return_conditional_losses_5951

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
А
A
%__inference_relu11_layer_call_fn_5612

inputs
identity╚
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu11_layer_call_and_return_conditional_losses_2419z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
т
▒
@__inference_conv15_layer_call_and_return_conditional_losses_2455

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ф
н
>__inference_bn10_layer_call_and_return_conditional_losses_1531

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
з
Й
>__inference_bn40_layer_call_and_return_conditional_losses_2140

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
У
м
=__inference_bn4_layer_call_and_return_conditional_losses_5435

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ь
╛
#__inference_bn10_layer_call_fn_5571

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn10_layer_call_and_return_conditional_losses_1531Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
з
Й
>__inference_bn31_layer_call_and_return_conditional_losses_1948

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╙
n
D__inference_subtract49_layer_call_and_return_conditional_losses_2762

inputs
inputs_1
identityh
subSubinputsinputs_1*
T0*A
_output_shapes/
-:+                           i
IdentityIdentitysub:z:0*
T0*A
_output_shapes/
-:+                           "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:+                           :+                           :i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Ф
н
>__inference_bn22_layer_call_and_return_conditional_losses_1787

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ф
н
>__inference_bn46_layer_call_and_return_conditional_losses_2299

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
т
▒
@__inference_conv39_layer_call_and_return_conditional_losses_6405

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ж
И
=__inference_bn7_layer_call_and_return_conditional_losses_5503

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
л
[
?__inference_relu8_layer_call_and_return_conditional_losses_5531

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ж
Б
%__inference_conv12_layer_call_fn_5624

inputs!
unknown:@@
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv12_layer_call_and_return_conditional_losses_2428Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ф
н
>__inference_bn43_layer_call_and_return_conditional_losses_2235

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
л
[
?__inference_relu5_layer_call_and_return_conditional_losses_5445

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
м
\
@__inference_relu29_layer_call_and_return_conditional_losses_2581

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
т
▒
@__inference_conv18_layer_call_and_return_conditional_losses_5803

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
т
▒
@__inference_conv12_layer_call_and_return_conditional_losses_5631

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ь╬
█
?__inference_model_layer_call_and_return_conditional_losses_3537

inputs$

conv1_3331:@

conv1_3333:@$

conv3_3337:@@
bn4_3340:@
bn4_3342:@
bn4_3344:@
bn4_3346:@$

conv6_3350:@@
bn7_3353:@
bn7_3355:@
bn7_3357:@
bn7_3359:@$

conv9_3363:@@
	bn10_3366:@
	bn10_3368:@
	bn10_3370:@
	bn10_3372:@%
conv12_3376:@@
	bn13_3379:@
	bn13_3381:@
	bn13_3383:@
	bn13_3385:@%
conv15_3389:@@
	bn16_3392:@
	bn16_3394:@
	bn16_3396:@
	bn16_3398:@%
conv18_3402:@@
	bn19_3405:@
	bn19_3407:@
	bn19_3409:@
	bn19_3411:@%
conv21_3415:@@
	bn22_3418:@
	bn22_3420:@
	bn22_3422:@
	bn22_3424:@%
conv24_3428:@@
	bn25_3431:@
	bn25_3433:@
	bn25_3435:@
	bn25_3437:@%
conv27_3441:@@
	bn28_3444:@
	bn28_3446:@
	bn28_3448:@
	bn28_3450:@%
conv30_3454:@@
	bn31_3457:@
	bn31_3459:@
	bn31_3461:@
	bn31_3463:@%
conv33_3467:@@
	bn34_3470:@
	bn34_3472:@
	bn34_3474:@
	bn34_3476:@%
conv36_3480:@@
	bn37_3483:@
	bn37_3485:@
	bn37_3487:@
	bn37_3489:@%
conv39_3493:@@
	bn40_3496:@
	bn40_3498:@
	bn40_3500:@
	bn40_3502:@%
conv42_3506:@@
	bn43_3509:@
	bn43_3511:@
	bn43_3513:@
	bn43_3515:@%
conv45_3519:@@
	bn46_3522:@
	bn46_3524:@
	bn46_3526:@
	bn46_3528:@%
conv48_3532:@
identityИвbn10/StatefulPartitionedCallвbn13/StatefulPartitionedCallвbn16/StatefulPartitionedCallвbn19/StatefulPartitionedCallвbn22/StatefulPartitionedCallвbn25/StatefulPartitionedCallвbn28/StatefulPartitionedCallвbn31/StatefulPartitionedCallвbn34/StatefulPartitionedCallвbn37/StatefulPartitionedCallвbn4/StatefulPartitionedCallвbn40/StatefulPartitionedCallвbn43/StatefulPartitionedCallвbn46/StatefulPartitionedCallвbn7/StatefulPartitionedCallвconv1/StatefulPartitionedCallвconv12/StatefulPartitionedCallвconv15/StatefulPartitionedCallвconv18/StatefulPartitionedCallвconv21/StatefulPartitionedCallвconv24/StatefulPartitionedCallвconv27/StatefulPartitionedCallвconv3/StatefulPartitionedCallвconv30/StatefulPartitionedCallвconv33/StatefulPartitionedCallвconv36/StatefulPartitionedCallвconv39/StatefulPartitionedCallвconv42/StatefulPartitionedCallвconv45/StatefulPartitionedCallвconv48/StatefulPartitionedCallвconv6/StatefulPartitionedCallвconv9/StatefulPartitionedCall√
conv1/StatefulPartitionedCallStatefulPartitionedCallinputs
conv1_3331
conv1_3333*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_conv1_layer_call_and_return_conditional_losses_2327э
relu2/PartitionedCallPartitionedCall&conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_relu2_layer_call_and_return_conditional_losses_2338Е
conv3/StatefulPartitionedCallStatefulPartitionedCallrelu2/PartitionedCall:output:0
conv3_3337*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_conv3_layer_call_and_return_conditional_losses_2347й
bn4/StatefulPartitionedCallStatefulPartitionedCall&conv3/StatefulPartitionedCall:output:0bn4_3340bn4_3342bn4_3344bn4_3346*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *F
fAR?
=__inference_bn4_layer_call_and_return_conditional_losses_1403ы
relu5/PartitionedCallPartitionedCall$bn4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_relu5_layer_call_and_return_conditional_losses_2365Е
conv6/StatefulPartitionedCallStatefulPartitionedCallrelu5/PartitionedCall:output:0
conv6_3350*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_conv6_layer_call_and_return_conditional_losses_2374й
bn7/StatefulPartitionedCallStatefulPartitionedCall&conv6/StatefulPartitionedCall:output:0bn7_3353bn7_3355bn7_3357bn7_3359*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *F
fAR?
=__inference_bn7_layer_call_and_return_conditional_losses_1467ы
relu8/PartitionedCallPartitionedCall$bn7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_relu8_layer_call_and_return_conditional_losses_2392Е
conv9/StatefulPartitionedCallStatefulPartitionedCallrelu8/PartitionedCall:output:0
conv9_3363*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_conv9_layer_call_and_return_conditional_losses_2401п
bn10/StatefulPartitionedCallStatefulPartitionedCall&conv9/StatefulPartitionedCall:output:0	bn10_3366	bn10_3368	bn10_3370	bn10_3372*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn10_layer_call_and_return_conditional_losses_1531ю
relu11/PartitionedCallPartitionedCall%bn10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu11_layer_call_and_return_conditional_losses_2419Й
conv12/StatefulPartitionedCallStatefulPartitionedCallrelu11/PartitionedCall:output:0conv12_3376*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv12_layer_call_and_return_conditional_losses_2428░
bn13/StatefulPartitionedCallStatefulPartitionedCall'conv12/StatefulPartitionedCall:output:0	bn13_3379	bn13_3381	bn13_3383	bn13_3385*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn13_layer_call_and_return_conditional_losses_1595ю
relu14/PartitionedCallPartitionedCall%bn13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu14_layer_call_and_return_conditional_losses_2446Й
conv15/StatefulPartitionedCallStatefulPartitionedCallrelu14/PartitionedCall:output:0conv15_3389*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv15_layer_call_and_return_conditional_losses_2455░
bn16/StatefulPartitionedCallStatefulPartitionedCall'conv15/StatefulPartitionedCall:output:0	bn16_3392	bn16_3394	bn16_3396	bn16_3398*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn16_layer_call_and_return_conditional_losses_1659ю
relu17/PartitionedCallPartitionedCall%bn16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu17_layer_call_and_return_conditional_losses_2473Й
conv18/StatefulPartitionedCallStatefulPartitionedCallrelu17/PartitionedCall:output:0conv18_3402*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv18_layer_call_and_return_conditional_losses_2482░
bn19/StatefulPartitionedCallStatefulPartitionedCall'conv18/StatefulPartitionedCall:output:0	bn19_3405	bn19_3407	bn19_3409	bn19_3411*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn19_layer_call_and_return_conditional_losses_1723ю
relu20/PartitionedCallPartitionedCall%bn19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu20_layer_call_and_return_conditional_losses_2500Й
conv21/StatefulPartitionedCallStatefulPartitionedCallrelu20/PartitionedCall:output:0conv21_3415*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv21_layer_call_and_return_conditional_losses_2509░
bn22/StatefulPartitionedCallStatefulPartitionedCall'conv21/StatefulPartitionedCall:output:0	bn22_3418	bn22_3420	bn22_3422	bn22_3424*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn22_layer_call_and_return_conditional_losses_1787ю
relu23/PartitionedCallPartitionedCall%bn22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu23_layer_call_and_return_conditional_losses_2527Й
conv24/StatefulPartitionedCallStatefulPartitionedCallrelu23/PartitionedCall:output:0conv24_3428*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv24_layer_call_and_return_conditional_losses_2536░
bn25/StatefulPartitionedCallStatefulPartitionedCall'conv24/StatefulPartitionedCall:output:0	bn25_3431	bn25_3433	bn25_3435	bn25_3437*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn25_layer_call_and_return_conditional_losses_1851ю
relu26/PartitionedCallPartitionedCall%bn25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu26_layer_call_and_return_conditional_losses_2554Й
conv27/StatefulPartitionedCallStatefulPartitionedCallrelu26/PartitionedCall:output:0conv27_3441*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv27_layer_call_and_return_conditional_losses_2563░
bn28/StatefulPartitionedCallStatefulPartitionedCall'conv27/StatefulPartitionedCall:output:0	bn28_3444	bn28_3446	bn28_3448	bn28_3450*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn28_layer_call_and_return_conditional_losses_1915ю
relu29/PartitionedCallPartitionedCall%bn28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu29_layer_call_and_return_conditional_losses_2581Й
conv30/StatefulPartitionedCallStatefulPartitionedCallrelu29/PartitionedCall:output:0conv30_3454*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv30_layer_call_and_return_conditional_losses_2590░
bn31/StatefulPartitionedCallStatefulPartitionedCall'conv30/StatefulPartitionedCall:output:0	bn31_3457	bn31_3459	bn31_3461	bn31_3463*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn31_layer_call_and_return_conditional_losses_1979ю
relu32/PartitionedCallPartitionedCall%bn31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu32_layer_call_and_return_conditional_losses_2608Й
conv33/StatefulPartitionedCallStatefulPartitionedCallrelu32/PartitionedCall:output:0conv33_3467*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv33_layer_call_and_return_conditional_losses_2617░
bn34/StatefulPartitionedCallStatefulPartitionedCall'conv33/StatefulPartitionedCall:output:0	bn34_3470	bn34_3472	bn34_3474	bn34_3476*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn34_layer_call_and_return_conditional_losses_2043ю
relu35/PartitionedCallPartitionedCall%bn34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu35_layer_call_and_return_conditional_losses_2635Й
conv36/StatefulPartitionedCallStatefulPartitionedCallrelu35/PartitionedCall:output:0conv36_3480*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv36_layer_call_and_return_conditional_losses_2644░
bn37/StatefulPartitionedCallStatefulPartitionedCall'conv36/StatefulPartitionedCall:output:0	bn37_3483	bn37_3485	bn37_3487	bn37_3489*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn37_layer_call_and_return_conditional_losses_2107ю
relu38/PartitionedCallPartitionedCall%bn37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu38_layer_call_and_return_conditional_losses_2662Й
conv39/StatefulPartitionedCallStatefulPartitionedCallrelu38/PartitionedCall:output:0conv39_3493*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv39_layer_call_and_return_conditional_losses_2671░
bn40/StatefulPartitionedCallStatefulPartitionedCall'conv39/StatefulPartitionedCall:output:0	bn40_3496	bn40_3498	bn40_3500	bn40_3502*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn40_layer_call_and_return_conditional_losses_2171ю
relu41/PartitionedCallPartitionedCall%bn40/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu41_layer_call_and_return_conditional_losses_2689Й
conv42/StatefulPartitionedCallStatefulPartitionedCallrelu41/PartitionedCall:output:0conv42_3506*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv42_layer_call_and_return_conditional_losses_2698░
bn43/StatefulPartitionedCallStatefulPartitionedCall'conv42/StatefulPartitionedCall:output:0	bn43_3509	bn43_3511	bn43_3513	bn43_3515*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn43_layer_call_and_return_conditional_losses_2235ю
relu44/PartitionedCallPartitionedCall%bn43/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu44_layer_call_and_return_conditional_losses_2716Й
conv45/StatefulPartitionedCallStatefulPartitionedCallrelu44/PartitionedCall:output:0conv45_3519*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv45_layer_call_and_return_conditional_losses_2725░
bn46/StatefulPartitionedCallStatefulPartitionedCall'conv45/StatefulPartitionedCall:output:0	bn46_3522	bn46_3524	bn46_3526	bn46_3528*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn46_layer_call_and_return_conditional_losses_2299ю
relu47/PartitionedCallPartitionedCall%bn46/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu47_layer_call_and_return_conditional_losses_2743Й
conv48/StatefulPartitionedCallStatefulPartitionedCallrelu47/PartitionedCall:output:0conv48_3532*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv48_layer_call_and_return_conditional_losses_2752Б
subtract49/PartitionedCallPartitionedCallinputs'conv48/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_subtract49_layer_call_and_return_conditional_losses_2762М
IdentityIdentity#subtract49/PartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           ┬
NoOpNoOp^bn10/StatefulPartitionedCall^bn13/StatefulPartitionedCall^bn16/StatefulPartitionedCall^bn19/StatefulPartitionedCall^bn22/StatefulPartitionedCall^bn25/StatefulPartitionedCall^bn28/StatefulPartitionedCall^bn31/StatefulPartitionedCall^bn34/StatefulPartitionedCall^bn37/StatefulPartitionedCall^bn4/StatefulPartitionedCall^bn40/StatefulPartitionedCall^bn43/StatefulPartitionedCall^bn46/StatefulPartitionedCall^bn7/StatefulPartitionedCall^conv1/StatefulPartitionedCall^conv12/StatefulPartitionedCall^conv15/StatefulPartitionedCall^conv18/StatefulPartitionedCall^conv21/StatefulPartitionedCall^conv24/StatefulPartitionedCall^conv27/StatefulPartitionedCall^conv3/StatefulPartitionedCall^conv30/StatefulPartitionedCall^conv33/StatefulPartitionedCall^conv36/StatefulPartitionedCall^conv39/StatefulPartitionedCall^conv42/StatefulPartitionedCall^conv45/StatefulPartitionedCall^conv48/StatefulPartitionedCall^conv6/StatefulPartitionedCall^conv9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*▐
_input_shapes╠
╔:+                           : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2<
bn10/StatefulPartitionedCallbn10/StatefulPartitionedCall2<
bn13/StatefulPartitionedCallbn13/StatefulPartitionedCall2<
bn16/StatefulPartitionedCallbn16/StatefulPartitionedCall2<
bn19/StatefulPartitionedCallbn19/StatefulPartitionedCall2<
bn22/StatefulPartitionedCallbn22/StatefulPartitionedCall2<
bn25/StatefulPartitionedCallbn25/StatefulPartitionedCall2<
bn28/StatefulPartitionedCallbn28/StatefulPartitionedCall2<
bn31/StatefulPartitionedCallbn31/StatefulPartitionedCall2<
bn34/StatefulPartitionedCallbn34/StatefulPartitionedCall2<
bn37/StatefulPartitionedCallbn37/StatefulPartitionedCall2:
bn4/StatefulPartitionedCallbn4/StatefulPartitionedCall2<
bn40/StatefulPartitionedCallbn40/StatefulPartitionedCall2<
bn43/StatefulPartitionedCallbn43/StatefulPartitionedCall2<
bn46/StatefulPartitionedCallbn46/StatefulPartitionedCall2:
bn7/StatefulPartitionedCallbn7/StatefulPartitionedCall2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall2@
conv12/StatefulPartitionedCallconv12/StatefulPartitionedCall2@
conv15/StatefulPartitionedCallconv15/StatefulPartitionedCall2@
conv18/StatefulPartitionedCallconv18/StatefulPartitionedCall2@
conv21/StatefulPartitionedCallconv21/StatefulPartitionedCall2@
conv24/StatefulPartitionedCallconv24/StatefulPartitionedCall2@
conv27/StatefulPartitionedCallconv27/StatefulPartitionedCall2>
conv3/StatefulPartitionedCallconv3/StatefulPartitionedCall2@
conv30/StatefulPartitionedCallconv30/StatefulPartitionedCall2@
conv33/StatefulPartitionedCallconv33/StatefulPartitionedCall2@
conv36/StatefulPartitionedCallconv36/StatefulPartitionedCall2@
conv39/StatefulPartitionedCallconv39/StatefulPartitionedCall2@
conv42/StatefulPartitionedCallconv42/StatefulPartitionedCall2@
conv45/StatefulPartitionedCallconv45/StatefulPartitionedCall2@
conv48/StatefulPartitionedCallconv48/StatefulPartitionedCall2>
conv6/StatefulPartitionedCallconv6/StatefulPartitionedCall2>
conv9/StatefulPartitionedCallconv9/StatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
з
Й
>__inference_bn16_layer_call_and_return_conditional_losses_5761

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
т
▒
@__inference_conv45_layer_call_and_return_conditional_losses_6577

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ь
╛
#__inference_bn22_layer_call_fn_5915

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn22_layer_call_and_return_conditional_losses_1787Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ж
И
=__inference_bn7_layer_call_and_return_conditional_losses_1436

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ф
н
>__inference_bn37_layer_call_and_return_conditional_losses_2107

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ф
н
>__inference_bn19_layer_call_and_return_conditional_losses_5865

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
с
░
?__inference_conv6_layer_call_and_return_conditional_losses_2374

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ф
н
>__inference_bn19_layer_call_and_return_conditional_losses_1723

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ю
╛
#__inference_bn25_layer_call_fn_5988

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn25_layer_call_and_return_conditional_losses_1820Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
с
░
?__inference_conv3_layer_call_and_return_conditional_losses_5373

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
К╧
█
?__inference_model_layer_call_and_return_conditional_losses_2765

inputs$

conv1_2328:@

conv1_2330:@$

conv3_2348:@@
bn4_2351:@
bn4_2353:@
bn4_2355:@
bn4_2357:@$

conv6_2375:@@
bn7_2378:@
bn7_2380:@
bn7_2382:@
bn7_2384:@$

conv9_2402:@@
	bn10_2405:@
	bn10_2407:@
	bn10_2409:@
	bn10_2411:@%
conv12_2429:@@
	bn13_2432:@
	bn13_2434:@
	bn13_2436:@
	bn13_2438:@%
conv15_2456:@@
	bn16_2459:@
	bn16_2461:@
	bn16_2463:@
	bn16_2465:@%
conv18_2483:@@
	bn19_2486:@
	bn19_2488:@
	bn19_2490:@
	bn19_2492:@%
conv21_2510:@@
	bn22_2513:@
	bn22_2515:@
	bn22_2517:@
	bn22_2519:@%
conv24_2537:@@
	bn25_2540:@
	bn25_2542:@
	bn25_2544:@
	bn25_2546:@%
conv27_2564:@@
	bn28_2567:@
	bn28_2569:@
	bn28_2571:@
	bn28_2573:@%
conv30_2591:@@
	bn31_2594:@
	bn31_2596:@
	bn31_2598:@
	bn31_2600:@%
conv33_2618:@@
	bn34_2621:@
	bn34_2623:@
	bn34_2625:@
	bn34_2627:@%
conv36_2645:@@
	bn37_2648:@
	bn37_2650:@
	bn37_2652:@
	bn37_2654:@%
conv39_2672:@@
	bn40_2675:@
	bn40_2677:@
	bn40_2679:@
	bn40_2681:@%
conv42_2699:@@
	bn43_2702:@
	bn43_2704:@
	bn43_2706:@
	bn43_2708:@%
conv45_2726:@@
	bn46_2729:@
	bn46_2731:@
	bn46_2733:@
	bn46_2735:@%
conv48_2753:@
identityИвbn10/StatefulPartitionedCallвbn13/StatefulPartitionedCallвbn16/StatefulPartitionedCallвbn19/StatefulPartitionedCallвbn22/StatefulPartitionedCallвbn25/StatefulPartitionedCallвbn28/StatefulPartitionedCallвbn31/StatefulPartitionedCallвbn34/StatefulPartitionedCallвbn37/StatefulPartitionedCallвbn4/StatefulPartitionedCallвbn40/StatefulPartitionedCallвbn43/StatefulPartitionedCallвbn46/StatefulPartitionedCallвbn7/StatefulPartitionedCallвconv1/StatefulPartitionedCallвconv12/StatefulPartitionedCallвconv15/StatefulPartitionedCallвconv18/StatefulPartitionedCallвconv21/StatefulPartitionedCallвconv24/StatefulPartitionedCallвconv27/StatefulPartitionedCallвconv3/StatefulPartitionedCallвconv30/StatefulPartitionedCallвconv33/StatefulPartitionedCallвconv36/StatefulPartitionedCallвconv39/StatefulPartitionedCallвconv42/StatefulPartitionedCallвconv45/StatefulPartitionedCallвconv48/StatefulPartitionedCallвconv6/StatefulPartitionedCallвconv9/StatefulPartitionedCall√
conv1/StatefulPartitionedCallStatefulPartitionedCallinputs
conv1_2328
conv1_2330*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_conv1_layer_call_and_return_conditional_losses_2327э
relu2/PartitionedCallPartitionedCall&conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_relu2_layer_call_and_return_conditional_losses_2338Е
conv3/StatefulPartitionedCallStatefulPartitionedCallrelu2/PartitionedCall:output:0
conv3_2348*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_conv3_layer_call_and_return_conditional_losses_2347л
bn4/StatefulPartitionedCallStatefulPartitionedCall&conv3/StatefulPartitionedCall:output:0bn4_2351bn4_2353bn4_2355bn4_2357*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *F
fAR?
=__inference_bn4_layer_call_and_return_conditional_losses_1372ы
relu5/PartitionedCallPartitionedCall$bn4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_relu5_layer_call_and_return_conditional_losses_2365Е
conv6/StatefulPartitionedCallStatefulPartitionedCallrelu5/PartitionedCall:output:0
conv6_2375*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_conv6_layer_call_and_return_conditional_losses_2374л
bn7/StatefulPartitionedCallStatefulPartitionedCall&conv6/StatefulPartitionedCall:output:0bn7_2378bn7_2380bn7_2382bn7_2384*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *F
fAR?
=__inference_bn7_layer_call_and_return_conditional_losses_1436ы
relu8/PartitionedCallPartitionedCall$bn7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_relu8_layer_call_and_return_conditional_losses_2392Е
conv9/StatefulPartitionedCallStatefulPartitionedCallrelu8/PartitionedCall:output:0
conv9_2402*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_conv9_layer_call_and_return_conditional_losses_2401▒
bn10/StatefulPartitionedCallStatefulPartitionedCall&conv9/StatefulPartitionedCall:output:0	bn10_2405	bn10_2407	bn10_2409	bn10_2411*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn10_layer_call_and_return_conditional_losses_1500ю
relu11/PartitionedCallPartitionedCall%bn10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu11_layer_call_and_return_conditional_losses_2419Й
conv12/StatefulPartitionedCallStatefulPartitionedCallrelu11/PartitionedCall:output:0conv12_2429*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv12_layer_call_and_return_conditional_losses_2428▓
bn13/StatefulPartitionedCallStatefulPartitionedCall'conv12/StatefulPartitionedCall:output:0	bn13_2432	bn13_2434	bn13_2436	bn13_2438*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn13_layer_call_and_return_conditional_losses_1564ю
relu14/PartitionedCallPartitionedCall%bn13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu14_layer_call_and_return_conditional_losses_2446Й
conv15/StatefulPartitionedCallStatefulPartitionedCallrelu14/PartitionedCall:output:0conv15_2456*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv15_layer_call_and_return_conditional_losses_2455▓
bn16/StatefulPartitionedCallStatefulPartitionedCall'conv15/StatefulPartitionedCall:output:0	bn16_2459	bn16_2461	bn16_2463	bn16_2465*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn16_layer_call_and_return_conditional_losses_1628ю
relu17/PartitionedCallPartitionedCall%bn16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu17_layer_call_and_return_conditional_losses_2473Й
conv18/StatefulPartitionedCallStatefulPartitionedCallrelu17/PartitionedCall:output:0conv18_2483*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv18_layer_call_and_return_conditional_losses_2482▓
bn19/StatefulPartitionedCallStatefulPartitionedCall'conv18/StatefulPartitionedCall:output:0	bn19_2486	bn19_2488	bn19_2490	bn19_2492*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn19_layer_call_and_return_conditional_losses_1692ю
relu20/PartitionedCallPartitionedCall%bn19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu20_layer_call_and_return_conditional_losses_2500Й
conv21/StatefulPartitionedCallStatefulPartitionedCallrelu20/PartitionedCall:output:0conv21_2510*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv21_layer_call_and_return_conditional_losses_2509▓
bn22/StatefulPartitionedCallStatefulPartitionedCall'conv21/StatefulPartitionedCall:output:0	bn22_2513	bn22_2515	bn22_2517	bn22_2519*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn22_layer_call_and_return_conditional_losses_1756ю
relu23/PartitionedCallPartitionedCall%bn22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu23_layer_call_and_return_conditional_losses_2527Й
conv24/StatefulPartitionedCallStatefulPartitionedCallrelu23/PartitionedCall:output:0conv24_2537*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv24_layer_call_and_return_conditional_losses_2536▓
bn25/StatefulPartitionedCallStatefulPartitionedCall'conv24/StatefulPartitionedCall:output:0	bn25_2540	bn25_2542	bn25_2544	bn25_2546*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn25_layer_call_and_return_conditional_losses_1820ю
relu26/PartitionedCallPartitionedCall%bn25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu26_layer_call_and_return_conditional_losses_2554Й
conv27/StatefulPartitionedCallStatefulPartitionedCallrelu26/PartitionedCall:output:0conv27_2564*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv27_layer_call_and_return_conditional_losses_2563▓
bn28/StatefulPartitionedCallStatefulPartitionedCall'conv27/StatefulPartitionedCall:output:0	bn28_2567	bn28_2569	bn28_2571	bn28_2573*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn28_layer_call_and_return_conditional_losses_1884ю
relu29/PartitionedCallPartitionedCall%bn28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu29_layer_call_and_return_conditional_losses_2581Й
conv30/StatefulPartitionedCallStatefulPartitionedCallrelu29/PartitionedCall:output:0conv30_2591*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv30_layer_call_and_return_conditional_losses_2590▓
bn31/StatefulPartitionedCallStatefulPartitionedCall'conv30/StatefulPartitionedCall:output:0	bn31_2594	bn31_2596	bn31_2598	bn31_2600*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn31_layer_call_and_return_conditional_losses_1948ю
relu32/PartitionedCallPartitionedCall%bn31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu32_layer_call_and_return_conditional_losses_2608Й
conv33/StatefulPartitionedCallStatefulPartitionedCallrelu32/PartitionedCall:output:0conv33_2618*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv33_layer_call_and_return_conditional_losses_2617▓
bn34/StatefulPartitionedCallStatefulPartitionedCall'conv33/StatefulPartitionedCall:output:0	bn34_2621	bn34_2623	bn34_2625	bn34_2627*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn34_layer_call_and_return_conditional_losses_2012ю
relu35/PartitionedCallPartitionedCall%bn34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu35_layer_call_and_return_conditional_losses_2635Й
conv36/StatefulPartitionedCallStatefulPartitionedCallrelu35/PartitionedCall:output:0conv36_2645*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv36_layer_call_and_return_conditional_losses_2644▓
bn37/StatefulPartitionedCallStatefulPartitionedCall'conv36/StatefulPartitionedCall:output:0	bn37_2648	bn37_2650	bn37_2652	bn37_2654*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn37_layer_call_and_return_conditional_losses_2076ю
relu38/PartitionedCallPartitionedCall%bn37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu38_layer_call_and_return_conditional_losses_2662Й
conv39/StatefulPartitionedCallStatefulPartitionedCallrelu38/PartitionedCall:output:0conv39_2672*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv39_layer_call_and_return_conditional_losses_2671▓
bn40/StatefulPartitionedCallStatefulPartitionedCall'conv39/StatefulPartitionedCall:output:0	bn40_2675	bn40_2677	bn40_2679	bn40_2681*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn40_layer_call_and_return_conditional_losses_2140ю
relu41/PartitionedCallPartitionedCall%bn40/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu41_layer_call_and_return_conditional_losses_2689Й
conv42/StatefulPartitionedCallStatefulPartitionedCallrelu41/PartitionedCall:output:0conv42_2699*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv42_layer_call_and_return_conditional_losses_2698▓
bn43/StatefulPartitionedCallStatefulPartitionedCall'conv42/StatefulPartitionedCall:output:0	bn43_2702	bn43_2704	bn43_2706	bn43_2708*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn43_layer_call_and_return_conditional_losses_2204ю
relu44/PartitionedCallPartitionedCall%bn43/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu44_layer_call_and_return_conditional_losses_2716Й
conv45/StatefulPartitionedCallStatefulPartitionedCallrelu44/PartitionedCall:output:0conv45_2726*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv45_layer_call_and_return_conditional_losses_2725▓
bn46/StatefulPartitionedCallStatefulPartitionedCall'conv45/StatefulPartitionedCall:output:0	bn46_2729	bn46_2731	bn46_2733	bn46_2735*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn46_layer_call_and_return_conditional_losses_2268ю
relu47/PartitionedCallPartitionedCall%bn46/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu47_layer_call_and_return_conditional_losses_2743Й
conv48/StatefulPartitionedCallStatefulPartitionedCallrelu47/PartitionedCall:output:0conv48_2753*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv48_layer_call_and_return_conditional_losses_2752Б
subtract49/PartitionedCallPartitionedCallinputs'conv48/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_subtract49_layer_call_and_return_conditional_losses_2762М
IdentityIdentity#subtract49/PartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           ┬
NoOpNoOp^bn10/StatefulPartitionedCall^bn13/StatefulPartitionedCall^bn16/StatefulPartitionedCall^bn19/StatefulPartitionedCall^bn22/StatefulPartitionedCall^bn25/StatefulPartitionedCall^bn28/StatefulPartitionedCall^bn31/StatefulPartitionedCall^bn34/StatefulPartitionedCall^bn37/StatefulPartitionedCall^bn4/StatefulPartitionedCall^bn40/StatefulPartitionedCall^bn43/StatefulPartitionedCall^bn46/StatefulPartitionedCall^bn7/StatefulPartitionedCall^conv1/StatefulPartitionedCall^conv12/StatefulPartitionedCall^conv15/StatefulPartitionedCall^conv18/StatefulPartitionedCall^conv21/StatefulPartitionedCall^conv24/StatefulPartitionedCall^conv27/StatefulPartitionedCall^conv3/StatefulPartitionedCall^conv30/StatefulPartitionedCall^conv33/StatefulPartitionedCall^conv36/StatefulPartitionedCall^conv39/StatefulPartitionedCall^conv42/StatefulPartitionedCall^conv45/StatefulPartitionedCall^conv48/StatefulPartitionedCall^conv6/StatefulPartitionedCall^conv9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*▐
_input_shapes╠
╔:+                           : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2<
bn10/StatefulPartitionedCallbn10/StatefulPartitionedCall2<
bn13/StatefulPartitionedCallbn13/StatefulPartitionedCall2<
bn16/StatefulPartitionedCallbn16/StatefulPartitionedCall2<
bn19/StatefulPartitionedCallbn19/StatefulPartitionedCall2<
bn22/StatefulPartitionedCallbn22/StatefulPartitionedCall2<
bn25/StatefulPartitionedCallbn25/StatefulPartitionedCall2<
bn28/StatefulPartitionedCallbn28/StatefulPartitionedCall2<
bn31/StatefulPartitionedCallbn31/StatefulPartitionedCall2<
bn34/StatefulPartitionedCallbn34/StatefulPartitionedCall2<
bn37/StatefulPartitionedCallbn37/StatefulPartitionedCall2:
bn4/StatefulPartitionedCallbn4/StatefulPartitionedCall2<
bn40/StatefulPartitionedCallbn40/StatefulPartitionedCall2<
bn43/StatefulPartitionedCallbn43/StatefulPartitionedCall2<
bn46/StatefulPartitionedCallbn46/StatefulPartitionedCall2:
bn7/StatefulPartitionedCallbn7/StatefulPartitionedCall2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall2@
conv12/StatefulPartitionedCallconv12/StatefulPartitionedCall2@
conv15/StatefulPartitionedCallconv15/StatefulPartitionedCall2@
conv18/StatefulPartitionedCallconv18/StatefulPartitionedCall2@
conv21/StatefulPartitionedCallconv21/StatefulPartitionedCall2@
conv24/StatefulPartitionedCallconv24/StatefulPartitionedCall2@
conv27/StatefulPartitionedCallconv27/StatefulPartitionedCall2>
conv3/StatefulPartitionedCallconv3/StatefulPartitionedCall2@
conv30/StatefulPartitionedCallconv30/StatefulPartitionedCall2@
conv33/StatefulPartitionedCallconv33/StatefulPartitionedCall2@
conv36/StatefulPartitionedCallconv36/StatefulPartitionedCall2@
conv39/StatefulPartitionedCallconv39/StatefulPartitionedCall2@
conv42/StatefulPartitionedCallconv42/StatefulPartitionedCall2@
conv45/StatefulPartitionedCallconv45/StatefulPartitionedCall2@
conv48/StatefulPartitionedCallconv48/StatefulPartitionedCall2>
conv6/StatefulPartitionedCallconv6/StatefulPartitionedCall2>
conv9/StatefulPartitionedCallconv9/StatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
У
м
=__inference_bn7_layer_call_and_return_conditional_losses_5521

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ф
н
>__inference_bn10_layer_call_and_return_conditional_losses_5607

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ф
н
>__inference_bn16_layer_call_and_return_conditional_losses_1659

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
з
Й
>__inference_bn37_layer_call_and_return_conditional_losses_6363

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ж
Б
%__inference_conv42_layer_call_fn_6484

inputs!
unknown:@@
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv42_layer_call_and_return_conditional_losses_2698Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
А
A
%__inference_relu47_layer_call_fn_6644

inputs
identity╚
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu47_layer_call_and_return_conditional_losses_2743z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ю
╛
#__inference_bn31_layer_call_fn_6160

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn31_layer_call_and_return_conditional_losses_1948Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
м
\
@__inference_relu44_layer_call_and_return_conditional_losses_6563

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ф
н
>__inference_bn31_layer_call_and_return_conditional_losses_1979

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
■
@
$__inference_relu5_layer_call_fn_5440

inputs
identity╟
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_relu5_layer_call_and_return_conditional_losses_2365z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
м
\
@__inference_relu14_layer_call_and_return_conditional_losses_2446

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
з
Й
>__inference_bn43_layer_call_and_return_conditional_losses_2204

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
м
\
@__inference_relu23_layer_call_and_return_conditional_losses_2527

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
А
A
%__inference_relu35_layer_call_fn_6300

inputs
identity╚
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu35_layer_call_and_return_conditional_losses_2635z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ю
╛
#__inference_bn34_layer_call_fn_6246

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn34_layer_call_and_return_conditional_losses_2012Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
К╧
█
?__inference_model_layer_call_and_return_conditional_losses_4066

input0$

conv1_3860:@

conv1_3862:@$

conv3_3866:@@
bn4_3869:@
bn4_3871:@
bn4_3873:@
bn4_3875:@$

conv6_3879:@@
bn7_3882:@
bn7_3884:@
bn7_3886:@
bn7_3888:@$

conv9_3892:@@
	bn10_3895:@
	bn10_3897:@
	bn10_3899:@
	bn10_3901:@%
conv12_3905:@@
	bn13_3908:@
	bn13_3910:@
	bn13_3912:@
	bn13_3914:@%
conv15_3918:@@
	bn16_3921:@
	bn16_3923:@
	bn16_3925:@
	bn16_3927:@%
conv18_3931:@@
	bn19_3934:@
	bn19_3936:@
	bn19_3938:@
	bn19_3940:@%
conv21_3944:@@
	bn22_3947:@
	bn22_3949:@
	bn22_3951:@
	bn22_3953:@%
conv24_3957:@@
	bn25_3960:@
	bn25_3962:@
	bn25_3964:@
	bn25_3966:@%
conv27_3970:@@
	bn28_3973:@
	bn28_3975:@
	bn28_3977:@
	bn28_3979:@%
conv30_3983:@@
	bn31_3986:@
	bn31_3988:@
	bn31_3990:@
	bn31_3992:@%
conv33_3996:@@
	bn34_3999:@
	bn34_4001:@
	bn34_4003:@
	bn34_4005:@%
conv36_4009:@@
	bn37_4012:@
	bn37_4014:@
	bn37_4016:@
	bn37_4018:@%
conv39_4022:@@
	bn40_4025:@
	bn40_4027:@
	bn40_4029:@
	bn40_4031:@%
conv42_4035:@@
	bn43_4038:@
	bn43_4040:@
	bn43_4042:@
	bn43_4044:@%
conv45_4048:@@
	bn46_4051:@
	bn46_4053:@
	bn46_4055:@
	bn46_4057:@%
conv48_4061:@
identityИвbn10/StatefulPartitionedCallвbn13/StatefulPartitionedCallвbn16/StatefulPartitionedCallвbn19/StatefulPartitionedCallвbn22/StatefulPartitionedCallвbn25/StatefulPartitionedCallвbn28/StatefulPartitionedCallвbn31/StatefulPartitionedCallвbn34/StatefulPartitionedCallвbn37/StatefulPartitionedCallвbn4/StatefulPartitionedCallвbn40/StatefulPartitionedCallвbn43/StatefulPartitionedCallвbn46/StatefulPartitionedCallвbn7/StatefulPartitionedCallвconv1/StatefulPartitionedCallвconv12/StatefulPartitionedCallвconv15/StatefulPartitionedCallвconv18/StatefulPartitionedCallвconv21/StatefulPartitionedCallвconv24/StatefulPartitionedCallвconv27/StatefulPartitionedCallвconv3/StatefulPartitionedCallвconv30/StatefulPartitionedCallвconv33/StatefulPartitionedCallвconv36/StatefulPartitionedCallвconv39/StatefulPartitionedCallвconv42/StatefulPartitionedCallвconv45/StatefulPartitionedCallвconv48/StatefulPartitionedCallвconv6/StatefulPartitionedCallвconv9/StatefulPartitionedCall√
conv1/StatefulPartitionedCallStatefulPartitionedCallinput0
conv1_3860
conv1_3862*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_conv1_layer_call_and_return_conditional_losses_2327э
relu2/PartitionedCallPartitionedCall&conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_relu2_layer_call_and_return_conditional_losses_2338Е
conv3/StatefulPartitionedCallStatefulPartitionedCallrelu2/PartitionedCall:output:0
conv3_3866*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_conv3_layer_call_and_return_conditional_losses_2347л
bn4/StatefulPartitionedCallStatefulPartitionedCall&conv3/StatefulPartitionedCall:output:0bn4_3869bn4_3871bn4_3873bn4_3875*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *F
fAR?
=__inference_bn4_layer_call_and_return_conditional_losses_1372ы
relu5/PartitionedCallPartitionedCall$bn4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_relu5_layer_call_and_return_conditional_losses_2365Е
conv6/StatefulPartitionedCallStatefulPartitionedCallrelu5/PartitionedCall:output:0
conv6_3879*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_conv6_layer_call_and_return_conditional_losses_2374л
bn7/StatefulPartitionedCallStatefulPartitionedCall&conv6/StatefulPartitionedCall:output:0bn7_3882bn7_3884bn7_3886bn7_3888*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *F
fAR?
=__inference_bn7_layer_call_and_return_conditional_losses_1436ы
relu8/PartitionedCallPartitionedCall$bn7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_relu8_layer_call_and_return_conditional_losses_2392Е
conv9/StatefulPartitionedCallStatefulPartitionedCallrelu8/PartitionedCall:output:0
conv9_3892*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_conv9_layer_call_and_return_conditional_losses_2401▒
bn10/StatefulPartitionedCallStatefulPartitionedCall&conv9/StatefulPartitionedCall:output:0	bn10_3895	bn10_3897	bn10_3899	bn10_3901*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn10_layer_call_and_return_conditional_losses_1500ю
relu11/PartitionedCallPartitionedCall%bn10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu11_layer_call_and_return_conditional_losses_2419Й
conv12/StatefulPartitionedCallStatefulPartitionedCallrelu11/PartitionedCall:output:0conv12_3905*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv12_layer_call_and_return_conditional_losses_2428▓
bn13/StatefulPartitionedCallStatefulPartitionedCall'conv12/StatefulPartitionedCall:output:0	bn13_3908	bn13_3910	bn13_3912	bn13_3914*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn13_layer_call_and_return_conditional_losses_1564ю
relu14/PartitionedCallPartitionedCall%bn13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu14_layer_call_and_return_conditional_losses_2446Й
conv15/StatefulPartitionedCallStatefulPartitionedCallrelu14/PartitionedCall:output:0conv15_3918*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv15_layer_call_and_return_conditional_losses_2455▓
bn16/StatefulPartitionedCallStatefulPartitionedCall'conv15/StatefulPartitionedCall:output:0	bn16_3921	bn16_3923	bn16_3925	bn16_3927*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn16_layer_call_and_return_conditional_losses_1628ю
relu17/PartitionedCallPartitionedCall%bn16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu17_layer_call_and_return_conditional_losses_2473Й
conv18/StatefulPartitionedCallStatefulPartitionedCallrelu17/PartitionedCall:output:0conv18_3931*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv18_layer_call_and_return_conditional_losses_2482▓
bn19/StatefulPartitionedCallStatefulPartitionedCall'conv18/StatefulPartitionedCall:output:0	bn19_3934	bn19_3936	bn19_3938	bn19_3940*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn19_layer_call_and_return_conditional_losses_1692ю
relu20/PartitionedCallPartitionedCall%bn19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu20_layer_call_and_return_conditional_losses_2500Й
conv21/StatefulPartitionedCallStatefulPartitionedCallrelu20/PartitionedCall:output:0conv21_3944*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv21_layer_call_and_return_conditional_losses_2509▓
bn22/StatefulPartitionedCallStatefulPartitionedCall'conv21/StatefulPartitionedCall:output:0	bn22_3947	bn22_3949	bn22_3951	bn22_3953*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn22_layer_call_and_return_conditional_losses_1756ю
relu23/PartitionedCallPartitionedCall%bn22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu23_layer_call_and_return_conditional_losses_2527Й
conv24/StatefulPartitionedCallStatefulPartitionedCallrelu23/PartitionedCall:output:0conv24_3957*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv24_layer_call_and_return_conditional_losses_2536▓
bn25/StatefulPartitionedCallStatefulPartitionedCall'conv24/StatefulPartitionedCall:output:0	bn25_3960	bn25_3962	bn25_3964	bn25_3966*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn25_layer_call_and_return_conditional_losses_1820ю
relu26/PartitionedCallPartitionedCall%bn25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu26_layer_call_and_return_conditional_losses_2554Й
conv27/StatefulPartitionedCallStatefulPartitionedCallrelu26/PartitionedCall:output:0conv27_3970*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv27_layer_call_and_return_conditional_losses_2563▓
bn28/StatefulPartitionedCallStatefulPartitionedCall'conv27/StatefulPartitionedCall:output:0	bn28_3973	bn28_3975	bn28_3977	bn28_3979*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn28_layer_call_and_return_conditional_losses_1884ю
relu29/PartitionedCallPartitionedCall%bn28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu29_layer_call_and_return_conditional_losses_2581Й
conv30/StatefulPartitionedCallStatefulPartitionedCallrelu29/PartitionedCall:output:0conv30_3983*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv30_layer_call_and_return_conditional_losses_2590▓
bn31/StatefulPartitionedCallStatefulPartitionedCall'conv30/StatefulPartitionedCall:output:0	bn31_3986	bn31_3988	bn31_3990	bn31_3992*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn31_layer_call_and_return_conditional_losses_1948ю
relu32/PartitionedCallPartitionedCall%bn31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu32_layer_call_and_return_conditional_losses_2608Й
conv33/StatefulPartitionedCallStatefulPartitionedCallrelu32/PartitionedCall:output:0conv33_3996*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv33_layer_call_and_return_conditional_losses_2617▓
bn34/StatefulPartitionedCallStatefulPartitionedCall'conv33/StatefulPartitionedCall:output:0	bn34_3999	bn34_4001	bn34_4003	bn34_4005*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn34_layer_call_and_return_conditional_losses_2012ю
relu35/PartitionedCallPartitionedCall%bn34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu35_layer_call_and_return_conditional_losses_2635Й
conv36/StatefulPartitionedCallStatefulPartitionedCallrelu35/PartitionedCall:output:0conv36_4009*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv36_layer_call_and_return_conditional_losses_2644▓
bn37/StatefulPartitionedCallStatefulPartitionedCall'conv36/StatefulPartitionedCall:output:0	bn37_4012	bn37_4014	bn37_4016	bn37_4018*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn37_layer_call_and_return_conditional_losses_2076ю
relu38/PartitionedCallPartitionedCall%bn37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu38_layer_call_and_return_conditional_losses_2662Й
conv39/StatefulPartitionedCallStatefulPartitionedCallrelu38/PartitionedCall:output:0conv39_4022*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv39_layer_call_and_return_conditional_losses_2671▓
bn40/StatefulPartitionedCallStatefulPartitionedCall'conv39/StatefulPartitionedCall:output:0	bn40_4025	bn40_4027	bn40_4029	bn40_4031*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn40_layer_call_and_return_conditional_losses_2140ю
relu41/PartitionedCallPartitionedCall%bn40/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu41_layer_call_and_return_conditional_losses_2689Й
conv42/StatefulPartitionedCallStatefulPartitionedCallrelu41/PartitionedCall:output:0conv42_4035*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv42_layer_call_and_return_conditional_losses_2698▓
bn43/StatefulPartitionedCallStatefulPartitionedCall'conv42/StatefulPartitionedCall:output:0	bn43_4038	bn43_4040	bn43_4042	bn43_4044*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn43_layer_call_and_return_conditional_losses_2204ю
relu44/PartitionedCallPartitionedCall%bn43/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu44_layer_call_and_return_conditional_losses_2716Й
conv45/StatefulPartitionedCallStatefulPartitionedCallrelu44/PartitionedCall:output:0conv45_4048*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv45_layer_call_and_return_conditional_losses_2725▓
bn46/StatefulPartitionedCallStatefulPartitionedCall'conv45/StatefulPartitionedCall:output:0	bn46_4051	bn46_4053	bn46_4055	bn46_4057*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn46_layer_call_and_return_conditional_losses_2268ю
relu47/PartitionedCallPartitionedCall%bn46/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu47_layer_call_and_return_conditional_losses_2743Й
conv48/StatefulPartitionedCallStatefulPartitionedCallrelu47/PartitionedCall:output:0conv48_4061*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv48_layer_call_and_return_conditional_losses_2752Б
subtract49/PartitionedCallPartitionedCallinput0'conv48/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_subtract49_layer_call_and_return_conditional_losses_2762М
IdentityIdentity#subtract49/PartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           ┬
NoOpNoOp^bn10/StatefulPartitionedCall^bn13/StatefulPartitionedCall^bn16/StatefulPartitionedCall^bn19/StatefulPartitionedCall^bn22/StatefulPartitionedCall^bn25/StatefulPartitionedCall^bn28/StatefulPartitionedCall^bn31/StatefulPartitionedCall^bn34/StatefulPartitionedCall^bn37/StatefulPartitionedCall^bn4/StatefulPartitionedCall^bn40/StatefulPartitionedCall^bn43/StatefulPartitionedCall^bn46/StatefulPartitionedCall^bn7/StatefulPartitionedCall^conv1/StatefulPartitionedCall^conv12/StatefulPartitionedCall^conv15/StatefulPartitionedCall^conv18/StatefulPartitionedCall^conv21/StatefulPartitionedCall^conv24/StatefulPartitionedCall^conv27/StatefulPartitionedCall^conv3/StatefulPartitionedCall^conv30/StatefulPartitionedCall^conv33/StatefulPartitionedCall^conv36/StatefulPartitionedCall^conv39/StatefulPartitionedCall^conv42/StatefulPartitionedCall^conv45/StatefulPartitionedCall^conv48/StatefulPartitionedCall^conv6/StatefulPartitionedCall^conv9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*▐
_input_shapes╠
╔:+                           : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2<
bn10/StatefulPartitionedCallbn10/StatefulPartitionedCall2<
bn13/StatefulPartitionedCallbn13/StatefulPartitionedCall2<
bn16/StatefulPartitionedCallbn16/StatefulPartitionedCall2<
bn19/StatefulPartitionedCallbn19/StatefulPartitionedCall2<
bn22/StatefulPartitionedCallbn22/StatefulPartitionedCall2<
bn25/StatefulPartitionedCallbn25/StatefulPartitionedCall2<
bn28/StatefulPartitionedCallbn28/StatefulPartitionedCall2<
bn31/StatefulPartitionedCallbn31/StatefulPartitionedCall2<
bn34/StatefulPartitionedCallbn34/StatefulPartitionedCall2<
bn37/StatefulPartitionedCallbn37/StatefulPartitionedCall2:
bn4/StatefulPartitionedCallbn4/StatefulPartitionedCall2<
bn40/StatefulPartitionedCallbn40/StatefulPartitionedCall2<
bn43/StatefulPartitionedCallbn43/StatefulPartitionedCall2<
bn46/StatefulPartitionedCallbn46/StatefulPartitionedCall2:
bn7/StatefulPartitionedCallbn7/StatefulPartitionedCall2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall2@
conv12/StatefulPartitionedCallconv12/StatefulPartitionedCall2@
conv15/StatefulPartitionedCallconv15/StatefulPartitionedCall2@
conv18/StatefulPartitionedCallconv18/StatefulPartitionedCall2@
conv21/StatefulPartitionedCallconv21/StatefulPartitionedCall2@
conv24/StatefulPartitionedCallconv24/StatefulPartitionedCall2@
conv27/StatefulPartitionedCallconv27/StatefulPartitionedCall2>
conv3/StatefulPartitionedCallconv3/StatefulPartitionedCall2@
conv30/StatefulPartitionedCallconv30/StatefulPartitionedCall2@
conv33/StatefulPartitionedCallconv33/StatefulPartitionedCall2@
conv36/StatefulPartitionedCallconv36/StatefulPartitionedCall2@
conv39/StatefulPartitionedCallconv39/StatefulPartitionedCall2@
conv42/StatefulPartitionedCallconv42/StatefulPartitionedCall2@
conv45/StatefulPartitionedCallconv45/StatefulPartitionedCall2@
conv48/StatefulPartitionedCallconv48/StatefulPartitionedCall2>
conv6/StatefulPartitionedCallconv6/StatefulPartitionedCall2>
conv9/StatefulPartitionedCallconv9/StatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinput0
ю
╛
#__inference_bn19_layer_call_fn_5816

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn19_layer_call_and_return_conditional_losses_1692Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ь
╛
#__inference_bn46_layer_call_fn_6603

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn46_layer_call_and_return_conditional_losses_2299Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
з
Й
>__inference_bn16_layer_call_and_return_conditional_losses_1628

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
т
▒
@__inference_conv45_layer_call_and_return_conditional_losses_2725

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
м
\
@__inference_relu17_layer_call_and_return_conditional_losses_2473

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
У
м
=__inference_bn4_layer_call_and_return_conditional_losses_1403

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ф
н
>__inference_bn16_layer_call_and_return_conditional_losses_5779

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
з
Й
>__inference_bn22_layer_call_and_return_conditional_losses_5933

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
А
A
%__inference_relu14_layer_call_fn_5698

inputs
identity╚
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu14_layer_call_and_return_conditional_losses_2446z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
т
▒
@__inference_conv12_layer_call_and_return_conditional_losses_2428

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
т
▒
@__inference_conv27_layer_call_and_return_conditional_losses_2563

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ь
╛
#__inference_bn13_layer_call_fn_5657

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn13_layer_call_and_return_conditional_losses_1595Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
т
▒
@__inference_conv42_layer_call_and_return_conditional_losses_2698

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╖"
И
$__inference_model_layer_call_fn_3857

input0!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@#
	unknown_6:@@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@$

unknown_16:@@

unknown_17:@

unknown_18:@

unknown_19:@

unknown_20:@$

unknown_21:@@

unknown_22:@

unknown_23:@

unknown_24:@

unknown_25:@$

unknown_26:@@

unknown_27:@

unknown_28:@

unknown_29:@

unknown_30:@$

unknown_31:@@

unknown_32:@

unknown_33:@

unknown_34:@

unknown_35:@$

unknown_36:@@

unknown_37:@

unknown_38:@

unknown_39:@

unknown_40:@$

unknown_41:@@

unknown_42:@

unknown_43:@

unknown_44:@

unknown_45:@$

unknown_46:@@

unknown_47:@

unknown_48:@

unknown_49:@

unknown_50:@$

unknown_51:@@

unknown_52:@

unknown_53:@

unknown_54:@

unknown_55:@$

unknown_56:@@

unknown_57:@

unknown_58:@

unknown_59:@

unknown_60:@$

unknown_61:@@

unknown_62:@

unknown_63:@

unknown_64:@

unknown_65:@$

unknown_66:@@

unknown_67:@

unknown_68:@

unknown_69:@

unknown_70:@$

unknown_71:@@

unknown_72:@

unknown_73:@

unknown_74:@

unknown_75:@$

unknown_76:@
identityИвStatefulPartitionedCallЄ

StatefulPartitionedCallStatefulPartitionedCallinput0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70
unknown_71
unknown_72
unknown_73
unknown_74
unknown_75
unknown_76*Z
TinS
Q2O*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *R
_read_only_resource_inputs4
20	
!"#&'(+,-012567:;<?@ADEFIJKN*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_3537Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*▐
_input_shapes╠
╔:+                           : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinput0
м
\
@__inference_relu14_layer_call_and_return_conditional_losses_5703

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ф
н
>__inference_bn37_layer_call_and_return_conditional_losses_6381

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ж
Б
%__inference_conv48_layer_call_fn_6656

inputs!
unknown:@
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv48_layer_call_and_return_conditional_losses_2752Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
з
Й
>__inference_bn25_layer_call_and_return_conditional_losses_6019

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
з
Й
>__inference_bn46_layer_call_and_return_conditional_losses_2268

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ж
Б
%__inference_conv21_layer_call_fn_5882

inputs!
unknown:@@
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv21_layer_call_and_return_conditional_losses_2509Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ь
╛
#__inference_bn31_layer_call_fn_6173

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn31_layer_call_and_return_conditional_losses_1979Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ь
╛
#__inference_bn28_layer_call_fn_6087

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn28_layer_call_and_return_conditional_losses_1915Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
м
Щ
$__inference_conv1_layer_call_fn_5339

inputs!
unknown:@
	unknown_0:@
identityИвStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_conv1_layer_call_and_return_conditional_losses_2327Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
А
A
%__inference_relu20_layer_call_fn_5870

inputs
identity╚
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu20_layer_call_and_return_conditional_losses_2500z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ж
Б
%__inference_conv45_layer_call_fn_6570

inputs!
unknown:@@
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv45_layer_call_and_return_conditional_losses_2725Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
з
Й
>__inference_bn22_layer_call_and_return_conditional_losses_1756

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ф
н
>__inference_bn13_layer_call_and_return_conditional_losses_1595

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
т
▒
@__inference_conv36_layer_call_and_return_conditional_losses_6319

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ф
н
>__inference_bn40_layer_call_and_return_conditional_losses_6467

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
м
\
@__inference_relu32_layer_call_and_return_conditional_losses_6219

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
т
▒
@__inference_conv30_layer_call_and_return_conditional_losses_6147

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
м
\
@__inference_relu44_layer_call_and_return_conditional_losses_2716

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ю
╛
#__inference_bn22_layer_call_fn_5902

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn22_layer_call_and_return_conditional_losses_1756Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Л╝
ю<
__inference__wrapped_model_1350

input0D
*model_conv1_conv2d_readvariableop_resource:@9
+model_conv1_biasadd_readvariableop_resource:@D
*model_conv3_conv2d_readvariableop_resource:@@/
!model_bn4_readvariableop_resource:@1
#model_bn4_readvariableop_1_resource:@@
2model_bn4_fusedbatchnormv3_readvariableop_resource:@B
4model_bn4_fusedbatchnormv3_readvariableop_1_resource:@D
*model_conv6_conv2d_readvariableop_resource:@@/
!model_bn7_readvariableop_resource:@1
#model_bn7_readvariableop_1_resource:@@
2model_bn7_fusedbatchnormv3_readvariableop_resource:@B
4model_bn7_fusedbatchnormv3_readvariableop_1_resource:@D
*model_conv9_conv2d_readvariableop_resource:@@0
"model_bn10_readvariableop_resource:@2
$model_bn10_readvariableop_1_resource:@A
3model_bn10_fusedbatchnormv3_readvariableop_resource:@C
5model_bn10_fusedbatchnormv3_readvariableop_1_resource:@E
+model_conv12_conv2d_readvariableop_resource:@@0
"model_bn13_readvariableop_resource:@2
$model_bn13_readvariableop_1_resource:@A
3model_bn13_fusedbatchnormv3_readvariableop_resource:@C
5model_bn13_fusedbatchnormv3_readvariableop_1_resource:@E
+model_conv15_conv2d_readvariableop_resource:@@0
"model_bn16_readvariableop_resource:@2
$model_bn16_readvariableop_1_resource:@A
3model_bn16_fusedbatchnormv3_readvariableop_resource:@C
5model_bn16_fusedbatchnormv3_readvariableop_1_resource:@E
+model_conv18_conv2d_readvariableop_resource:@@0
"model_bn19_readvariableop_resource:@2
$model_bn19_readvariableop_1_resource:@A
3model_bn19_fusedbatchnormv3_readvariableop_resource:@C
5model_bn19_fusedbatchnormv3_readvariableop_1_resource:@E
+model_conv21_conv2d_readvariableop_resource:@@0
"model_bn22_readvariableop_resource:@2
$model_bn22_readvariableop_1_resource:@A
3model_bn22_fusedbatchnormv3_readvariableop_resource:@C
5model_bn22_fusedbatchnormv3_readvariableop_1_resource:@E
+model_conv24_conv2d_readvariableop_resource:@@0
"model_bn25_readvariableop_resource:@2
$model_bn25_readvariableop_1_resource:@A
3model_bn25_fusedbatchnormv3_readvariableop_resource:@C
5model_bn25_fusedbatchnormv3_readvariableop_1_resource:@E
+model_conv27_conv2d_readvariableop_resource:@@0
"model_bn28_readvariableop_resource:@2
$model_bn28_readvariableop_1_resource:@A
3model_bn28_fusedbatchnormv3_readvariableop_resource:@C
5model_bn28_fusedbatchnormv3_readvariableop_1_resource:@E
+model_conv30_conv2d_readvariableop_resource:@@0
"model_bn31_readvariableop_resource:@2
$model_bn31_readvariableop_1_resource:@A
3model_bn31_fusedbatchnormv3_readvariableop_resource:@C
5model_bn31_fusedbatchnormv3_readvariableop_1_resource:@E
+model_conv33_conv2d_readvariableop_resource:@@0
"model_bn34_readvariableop_resource:@2
$model_bn34_readvariableop_1_resource:@A
3model_bn34_fusedbatchnormv3_readvariableop_resource:@C
5model_bn34_fusedbatchnormv3_readvariableop_1_resource:@E
+model_conv36_conv2d_readvariableop_resource:@@0
"model_bn37_readvariableop_resource:@2
$model_bn37_readvariableop_1_resource:@A
3model_bn37_fusedbatchnormv3_readvariableop_resource:@C
5model_bn37_fusedbatchnormv3_readvariableop_1_resource:@E
+model_conv39_conv2d_readvariableop_resource:@@0
"model_bn40_readvariableop_resource:@2
$model_bn40_readvariableop_1_resource:@A
3model_bn40_fusedbatchnormv3_readvariableop_resource:@C
5model_bn40_fusedbatchnormv3_readvariableop_1_resource:@E
+model_conv42_conv2d_readvariableop_resource:@@0
"model_bn43_readvariableop_resource:@2
$model_bn43_readvariableop_1_resource:@A
3model_bn43_fusedbatchnormv3_readvariableop_resource:@C
5model_bn43_fusedbatchnormv3_readvariableop_1_resource:@E
+model_conv45_conv2d_readvariableop_resource:@@0
"model_bn46_readvariableop_resource:@2
$model_bn46_readvariableop_1_resource:@A
3model_bn46_fusedbatchnormv3_readvariableop_resource:@C
5model_bn46_fusedbatchnormv3_readvariableop_1_resource:@E
+model_conv48_conv2d_readvariableop_resource:@
identityИв*model/bn10/FusedBatchNormV3/ReadVariableOpв,model/bn10/FusedBatchNormV3/ReadVariableOp_1вmodel/bn10/ReadVariableOpвmodel/bn10/ReadVariableOp_1в*model/bn13/FusedBatchNormV3/ReadVariableOpв,model/bn13/FusedBatchNormV3/ReadVariableOp_1вmodel/bn13/ReadVariableOpвmodel/bn13/ReadVariableOp_1в*model/bn16/FusedBatchNormV3/ReadVariableOpв,model/bn16/FusedBatchNormV3/ReadVariableOp_1вmodel/bn16/ReadVariableOpвmodel/bn16/ReadVariableOp_1в*model/bn19/FusedBatchNormV3/ReadVariableOpв,model/bn19/FusedBatchNormV3/ReadVariableOp_1вmodel/bn19/ReadVariableOpвmodel/bn19/ReadVariableOp_1в*model/bn22/FusedBatchNormV3/ReadVariableOpв,model/bn22/FusedBatchNormV3/ReadVariableOp_1вmodel/bn22/ReadVariableOpвmodel/bn22/ReadVariableOp_1в*model/bn25/FusedBatchNormV3/ReadVariableOpв,model/bn25/FusedBatchNormV3/ReadVariableOp_1вmodel/bn25/ReadVariableOpвmodel/bn25/ReadVariableOp_1в*model/bn28/FusedBatchNormV3/ReadVariableOpв,model/bn28/FusedBatchNormV3/ReadVariableOp_1вmodel/bn28/ReadVariableOpвmodel/bn28/ReadVariableOp_1в*model/bn31/FusedBatchNormV3/ReadVariableOpв,model/bn31/FusedBatchNormV3/ReadVariableOp_1вmodel/bn31/ReadVariableOpвmodel/bn31/ReadVariableOp_1в*model/bn34/FusedBatchNormV3/ReadVariableOpв,model/bn34/FusedBatchNormV3/ReadVariableOp_1вmodel/bn34/ReadVariableOpвmodel/bn34/ReadVariableOp_1в*model/bn37/FusedBatchNormV3/ReadVariableOpв,model/bn37/FusedBatchNormV3/ReadVariableOp_1вmodel/bn37/ReadVariableOpвmodel/bn37/ReadVariableOp_1в)model/bn4/FusedBatchNormV3/ReadVariableOpв+model/bn4/FusedBatchNormV3/ReadVariableOp_1вmodel/bn4/ReadVariableOpвmodel/bn4/ReadVariableOp_1в*model/bn40/FusedBatchNormV3/ReadVariableOpв,model/bn40/FusedBatchNormV3/ReadVariableOp_1вmodel/bn40/ReadVariableOpвmodel/bn40/ReadVariableOp_1в*model/bn43/FusedBatchNormV3/ReadVariableOpв,model/bn43/FusedBatchNormV3/ReadVariableOp_1вmodel/bn43/ReadVariableOpвmodel/bn43/ReadVariableOp_1в*model/bn46/FusedBatchNormV3/ReadVariableOpв,model/bn46/FusedBatchNormV3/ReadVariableOp_1вmodel/bn46/ReadVariableOpвmodel/bn46/ReadVariableOp_1в)model/bn7/FusedBatchNormV3/ReadVariableOpв+model/bn7/FusedBatchNormV3/ReadVariableOp_1вmodel/bn7/ReadVariableOpвmodel/bn7/ReadVariableOp_1в"model/conv1/BiasAdd/ReadVariableOpв!model/conv1/Conv2D/ReadVariableOpв"model/conv12/Conv2D/ReadVariableOpв"model/conv15/Conv2D/ReadVariableOpв"model/conv18/Conv2D/ReadVariableOpв"model/conv21/Conv2D/ReadVariableOpв"model/conv24/Conv2D/ReadVariableOpв"model/conv27/Conv2D/ReadVariableOpв!model/conv3/Conv2D/ReadVariableOpв"model/conv30/Conv2D/ReadVariableOpв"model/conv33/Conv2D/ReadVariableOpв"model/conv36/Conv2D/ReadVariableOpв"model/conv39/Conv2D/ReadVariableOpв"model/conv42/Conv2D/ReadVariableOpв"model/conv45/Conv2D/ReadVariableOpв"model/conv48/Conv2D/ReadVariableOpв!model/conv6/Conv2D/ReadVariableOpв!model/conv9/Conv2D/ReadVariableOpФ
!model/conv1/Conv2D/ReadVariableOpReadVariableOp*model_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0├
model/conv1/Conv2DConv2Dinput0)model/conv1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
К
"model/conv1/BiasAdd/ReadVariableOpReadVariableOp+model_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0│
model/conv1/BiasAddBiasAddmodel/conv1/Conv2D:output:0*model/conv1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @В
model/relu2/ReluRelumodel/conv1/BiasAdd:output:0*
T0*A
_output_shapes/
-:+                           @Ф
!model/conv3/Conv2D/ReadVariableOpReadVariableOp*model_conv3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0█
model/conv3/Conv2DConv2Dmodel/relu2/Relu:activations:0)model/conv3/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
v
model/bn4/ReadVariableOpReadVariableOp!model_bn4_readvariableop_resource*
_output_shapes
:@*
dtype0z
model/bn4/ReadVariableOp_1ReadVariableOp#model_bn4_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ш
)model/bn4/FusedBatchNormV3/ReadVariableOpReadVariableOp2model_bn4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ь
+model/bn4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp4model_bn4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0¤
model/bn4/FusedBatchNormV3FusedBatchNormV3model/conv3/Conv2D:output:0 model/bn4/ReadVariableOp:value:0"model/bn4/ReadVariableOp_1:value:01model/bn4/FusedBatchNormV3/ReadVariableOp:value:03model/bn4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( Д
model/relu5/ReluRelumodel/bn4/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @Ф
!model/conv6/Conv2D/ReadVariableOpReadVariableOp*model_conv6_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0█
model/conv6/Conv2DConv2Dmodel/relu5/Relu:activations:0)model/conv6/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
v
model/bn7/ReadVariableOpReadVariableOp!model_bn7_readvariableop_resource*
_output_shapes
:@*
dtype0z
model/bn7/ReadVariableOp_1ReadVariableOp#model_bn7_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ш
)model/bn7/FusedBatchNormV3/ReadVariableOpReadVariableOp2model_bn7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ь
+model/bn7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp4model_bn7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0¤
model/bn7/FusedBatchNormV3FusedBatchNormV3model/conv6/Conv2D:output:0 model/bn7/ReadVariableOp:value:0"model/bn7/ReadVariableOp_1:value:01model/bn7/FusedBatchNormV3/ReadVariableOp:value:03model/bn7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( Д
model/relu8/ReluRelumodel/bn7/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @Ф
!model/conv9/Conv2D/ReadVariableOpReadVariableOp*model_conv9_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0█
model/conv9/Conv2DConv2Dmodel/relu8/Relu:activations:0)model/conv9/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
model/bn10/ReadVariableOpReadVariableOp"model_bn10_readvariableop_resource*
_output_shapes
:@*
dtype0|
model/bn10/ReadVariableOp_1ReadVariableOp$model_bn10_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ъ
*model/bn10/FusedBatchNormV3/ReadVariableOpReadVariableOp3model_bn10_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ю
,model/bn10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5model_bn10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0В
model/bn10/FusedBatchNormV3FusedBatchNormV3model/conv9/Conv2D:output:0!model/bn10/ReadVariableOp:value:0#model/bn10/ReadVariableOp_1:value:02model/bn10/FusedBatchNormV3/ReadVariableOp:value:04model/bn10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( Ж
model/relu11/ReluRelumodel/bn10/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @Ц
"model/conv12/Conv2D/ReadVariableOpReadVariableOp+model_conv12_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0▐
model/conv12/Conv2DConv2Dmodel/relu11/Relu:activations:0*model/conv12/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
model/bn13/ReadVariableOpReadVariableOp"model_bn13_readvariableop_resource*
_output_shapes
:@*
dtype0|
model/bn13/ReadVariableOp_1ReadVariableOp$model_bn13_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ъ
*model/bn13/FusedBatchNormV3/ReadVariableOpReadVariableOp3model_bn13_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ю
,model/bn13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5model_bn13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Г
model/bn13/FusedBatchNormV3FusedBatchNormV3model/conv12/Conv2D:output:0!model/bn13/ReadVariableOp:value:0#model/bn13/ReadVariableOp_1:value:02model/bn13/FusedBatchNormV3/ReadVariableOp:value:04model/bn13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( Ж
model/relu14/ReluRelumodel/bn13/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @Ц
"model/conv15/Conv2D/ReadVariableOpReadVariableOp+model_conv15_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0▐
model/conv15/Conv2DConv2Dmodel/relu14/Relu:activations:0*model/conv15/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
model/bn16/ReadVariableOpReadVariableOp"model_bn16_readvariableop_resource*
_output_shapes
:@*
dtype0|
model/bn16/ReadVariableOp_1ReadVariableOp$model_bn16_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ъ
*model/bn16/FusedBatchNormV3/ReadVariableOpReadVariableOp3model_bn16_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ю
,model/bn16/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5model_bn16_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Г
model/bn16/FusedBatchNormV3FusedBatchNormV3model/conv15/Conv2D:output:0!model/bn16/ReadVariableOp:value:0#model/bn16/ReadVariableOp_1:value:02model/bn16/FusedBatchNormV3/ReadVariableOp:value:04model/bn16/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( Ж
model/relu17/ReluRelumodel/bn16/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @Ц
"model/conv18/Conv2D/ReadVariableOpReadVariableOp+model_conv18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0▐
model/conv18/Conv2DConv2Dmodel/relu17/Relu:activations:0*model/conv18/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
model/bn19/ReadVariableOpReadVariableOp"model_bn19_readvariableop_resource*
_output_shapes
:@*
dtype0|
model/bn19/ReadVariableOp_1ReadVariableOp$model_bn19_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ъ
*model/bn19/FusedBatchNormV3/ReadVariableOpReadVariableOp3model_bn19_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ю
,model/bn19/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5model_bn19_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Г
model/bn19/FusedBatchNormV3FusedBatchNormV3model/conv18/Conv2D:output:0!model/bn19/ReadVariableOp:value:0#model/bn19/ReadVariableOp_1:value:02model/bn19/FusedBatchNormV3/ReadVariableOp:value:04model/bn19/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( Ж
model/relu20/ReluRelumodel/bn19/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @Ц
"model/conv21/Conv2D/ReadVariableOpReadVariableOp+model_conv21_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0▐
model/conv21/Conv2DConv2Dmodel/relu20/Relu:activations:0*model/conv21/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
model/bn22/ReadVariableOpReadVariableOp"model_bn22_readvariableop_resource*
_output_shapes
:@*
dtype0|
model/bn22/ReadVariableOp_1ReadVariableOp$model_bn22_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ъ
*model/bn22/FusedBatchNormV3/ReadVariableOpReadVariableOp3model_bn22_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ю
,model/bn22/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5model_bn22_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Г
model/bn22/FusedBatchNormV3FusedBatchNormV3model/conv21/Conv2D:output:0!model/bn22/ReadVariableOp:value:0#model/bn22/ReadVariableOp_1:value:02model/bn22/FusedBatchNormV3/ReadVariableOp:value:04model/bn22/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( Ж
model/relu23/ReluRelumodel/bn22/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @Ц
"model/conv24/Conv2D/ReadVariableOpReadVariableOp+model_conv24_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0▐
model/conv24/Conv2DConv2Dmodel/relu23/Relu:activations:0*model/conv24/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
model/bn25/ReadVariableOpReadVariableOp"model_bn25_readvariableop_resource*
_output_shapes
:@*
dtype0|
model/bn25/ReadVariableOp_1ReadVariableOp$model_bn25_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ъ
*model/bn25/FusedBatchNormV3/ReadVariableOpReadVariableOp3model_bn25_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ю
,model/bn25/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5model_bn25_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Г
model/bn25/FusedBatchNormV3FusedBatchNormV3model/conv24/Conv2D:output:0!model/bn25/ReadVariableOp:value:0#model/bn25/ReadVariableOp_1:value:02model/bn25/FusedBatchNormV3/ReadVariableOp:value:04model/bn25/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( Ж
model/relu26/ReluRelumodel/bn25/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @Ц
"model/conv27/Conv2D/ReadVariableOpReadVariableOp+model_conv27_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0▐
model/conv27/Conv2DConv2Dmodel/relu26/Relu:activations:0*model/conv27/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
model/bn28/ReadVariableOpReadVariableOp"model_bn28_readvariableop_resource*
_output_shapes
:@*
dtype0|
model/bn28/ReadVariableOp_1ReadVariableOp$model_bn28_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ъ
*model/bn28/FusedBatchNormV3/ReadVariableOpReadVariableOp3model_bn28_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ю
,model/bn28/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5model_bn28_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Г
model/bn28/FusedBatchNormV3FusedBatchNormV3model/conv27/Conv2D:output:0!model/bn28/ReadVariableOp:value:0#model/bn28/ReadVariableOp_1:value:02model/bn28/FusedBatchNormV3/ReadVariableOp:value:04model/bn28/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( Ж
model/relu29/ReluRelumodel/bn28/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @Ц
"model/conv30/Conv2D/ReadVariableOpReadVariableOp+model_conv30_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0▐
model/conv30/Conv2DConv2Dmodel/relu29/Relu:activations:0*model/conv30/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
model/bn31/ReadVariableOpReadVariableOp"model_bn31_readvariableop_resource*
_output_shapes
:@*
dtype0|
model/bn31/ReadVariableOp_1ReadVariableOp$model_bn31_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ъ
*model/bn31/FusedBatchNormV3/ReadVariableOpReadVariableOp3model_bn31_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ю
,model/bn31/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5model_bn31_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Г
model/bn31/FusedBatchNormV3FusedBatchNormV3model/conv30/Conv2D:output:0!model/bn31/ReadVariableOp:value:0#model/bn31/ReadVariableOp_1:value:02model/bn31/FusedBatchNormV3/ReadVariableOp:value:04model/bn31/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( Ж
model/relu32/ReluRelumodel/bn31/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @Ц
"model/conv33/Conv2D/ReadVariableOpReadVariableOp+model_conv33_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0▐
model/conv33/Conv2DConv2Dmodel/relu32/Relu:activations:0*model/conv33/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
model/bn34/ReadVariableOpReadVariableOp"model_bn34_readvariableop_resource*
_output_shapes
:@*
dtype0|
model/bn34/ReadVariableOp_1ReadVariableOp$model_bn34_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ъ
*model/bn34/FusedBatchNormV3/ReadVariableOpReadVariableOp3model_bn34_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ю
,model/bn34/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5model_bn34_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Г
model/bn34/FusedBatchNormV3FusedBatchNormV3model/conv33/Conv2D:output:0!model/bn34/ReadVariableOp:value:0#model/bn34/ReadVariableOp_1:value:02model/bn34/FusedBatchNormV3/ReadVariableOp:value:04model/bn34/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( Ж
model/relu35/ReluRelumodel/bn34/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @Ц
"model/conv36/Conv2D/ReadVariableOpReadVariableOp+model_conv36_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0▐
model/conv36/Conv2DConv2Dmodel/relu35/Relu:activations:0*model/conv36/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
model/bn37/ReadVariableOpReadVariableOp"model_bn37_readvariableop_resource*
_output_shapes
:@*
dtype0|
model/bn37/ReadVariableOp_1ReadVariableOp$model_bn37_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ъ
*model/bn37/FusedBatchNormV3/ReadVariableOpReadVariableOp3model_bn37_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ю
,model/bn37/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5model_bn37_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Г
model/bn37/FusedBatchNormV3FusedBatchNormV3model/conv36/Conv2D:output:0!model/bn37/ReadVariableOp:value:0#model/bn37/ReadVariableOp_1:value:02model/bn37/FusedBatchNormV3/ReadVariableOp:value:04model/bn37/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( Ж
model/relu38/ReluRelumodel/bn37/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @Ц
"model/conv39/Conv2D/ReadVariableOpReadVariableOp+model_conv39_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0▐
model/conv39/Conv2DConv2Dmodel/relu38/Relu:activations:0*model/conv39/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
model/bn40/ReadVariableOpReadVariableOp"model_bn40_readvariableop_resource*
_output_shapes
:@*
dtype0|
model/bn40/ReadVariableOp_1ReadVariableOp$model_bn40_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ъ
*model/bn40/FusedBatchNormV3/ReadVariableOpReadVariableOp3model_bn40_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ю
,model/bn40/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5model_bn40_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Г
model/bn40/FusedBatchNormV3FusedBatchNormV3model/conv39/Conv2D:output:0!model/bn40/ReadVariableOp:value:0#model/bn40/ReadVariableOp_1:value:02model/bn40/FusedBatchNormV3/ReadVariableOp:value:04model/bn40/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( Ж
model/relu41/ReluRelumodel/bn40/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @Ц
"model/conv42/Conv2D/ReadVariableOpReadVariableOp+model_conv42_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0▐
model/conv42/Conv2DConv2Dmodel/relu41/Relu:activations:0*model/conv42/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
model/bn43/ReadVariableOpReadVariableOp"model_bn43_readvariableop_resource*
_output_shapes
:@*
dtype0|
model/bn43/ReadVariableOp_1ReadVariableOp$model_bn43_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ъ
*model/bn43/FusedBatchNormV3/ReadVariableOpReadVariableOp3model_bn43_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ю
,model/bn43/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5model_bn43_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Г
model/bn43/FusedBatchNormV3FusedBatchNormV3model/conv42/Conv2D:output:0!model/bn43/ReadVariableOp:value:0#model/bn43/ReadVariableOp_1:value:02model/bn43/FusedBatchNormV3/ReadVariableOp:value:04model/bn43/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( Ж
model/relu44/ReluRelumodel/bn43/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @Ц
"model/conv45/Conv2D/ReadVariableOpReadVariableOp+model_conv45_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0▐
model/conv45/Conv2DConv2Dmodel/relu44/Relu:activations:0*model/conv45/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
model/bn46/ReadVariableOpReadVariableOp"model_bn46_readvariableop_resource*
_output_shapes
:@*
dtype0|
model/bn46/ReadVariableOp_1ReadVariableOp$model_bn46_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ъ
*model/bn46/FusedBatchNormV3/ReadVariableOpReadVariableOp3model_bn46_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ю
,model/bn46/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5model_bn46_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Г
model/bn46/FusedBatchNormV3FusedBatchNormV3model/conv45/Conv2D:output:0!model/bn46/ReadVariableOp:value:0#model/bn46/ReadVariableOp_1:value:02model/bn46/FusedBatchNormV3/ReadVariableOp:value:04model/bn46/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( Ж
model/relu47/ReluRelumodel/bn46/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @Ц
"model/conv48/Conv2D/ReadVariableOpReadVariableOp+model_conv48_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0▐
model/conv48/Conv2DConv2Dmodel/relu47/Relu:activations:0*model/conv48/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
Н
model/subtract49/subSubinput0model/conv48/Conv2D:output:0*
T0*A
_output_shapes/
-:+                           Б
IdentityIdentitymodel/subtract49/sub:z:0^NoOp*
T0*A
_output_shapes/
-:+                           Ю
NoOpNoOp+^model/bn10/FusedBatchNormV3/ReadVariableOp-^model/bn10/FusedBatchNormV3/ReadVariableOp_1^model/bn10/ReadVariableOp^model/bn10/ReadVariableOp_1+^model/bn13/FusedBatchNormV3/ReadVariableOp-^model/bn13/FusedBatchNormV3/ReadVariableOp_1^model/bn13/ReadVariableOp^model/bn13/ReadVariableOp_1+^model/bn16/FusedBatchNormV3/ReadVariableOp-^model/bn16/FusedBatchNormV3/ReadVariableOp_1^model/bn16/ReadVariableOp^model/bn16/ReadVariableOp_1+^model/bn19/FusedBatchNormV3/ReadVariableOp-^model/bn19/FusedBatchNormV3/ReadVariableOp_1^model/bn19/ReadVariableOp^model/bn19/ReadVariableOp_1+^model/bn22/FusedBatchNormV3/ReadVariableOp-^model/bn22/FusedBatchNormV3/ReadVariableOp_1^model/bn22/ReadVariableOp^model/bn22/ReadVariableOp_1+^model/bn25/FusedBatchNormV3/ReadVariableOp-^model/bn25/FusedBatchNormV3/ReadVariableOp_1^model/bn25/ReadVariableOp^model/bn25/ReadVariableOp_1+^model/bn28/FusedBatchNormV3/ReadVariableOp-^model/bn28/FusedBatchNormV3/ReadVariableOp_1^model/bn28/ReadVariableOp^model/bn28/ReadVariableOp_1+^model/bn31/FusedBatchNormV3/ReadVariableOp-^model/bn31/FusedBatchNormV3/ReadVariableOp_1^model/bn31/ReadVariableOp^model/bn31/ReadVariableOp_1+^model/bn34/FusedBatchNormV3/ReadVariableOp-^model/bn34/FusedBatchNormV3/ReadVariableOp_1^model/bn34/ReadVariableOp^model/bn34/ReadVariableOp_1+^model/bn37/FusedBatchNormV3/ReadVariableOp-^model/bn37/FusedBatchNormV3/ReadVariableOp_1^model/bn37/ReadVariableOp^model/bn37/ReadVariableOp_1*^model/bn4/FusedBatchNormV3/ReadVariableOp,^model/bn4/FusedBatchNormV3/ReadVariableOp_1^model/bn4/ReadVariableOp^model/bn4/ReadVariableOp_1+^model/bn40/FusedBatchNormV3/ReadVariableOp-^model/bn40/FusedBatchNormV3/ReadVariableOp_1^model/bn40/ReadVariableOp^model/bn40/ReadVariableOp_1+^model/bn43/FusedBatchNormV3/ReadVariableOp-^model/bn43/FusedBatchNormV3/ReadVariableOp_1^model/bn43/ReadVariableOp^model/bn43/ReadVariableOp_1+^model/bn46/FusedBatchNormV3/ReadVariableOp-^model/bn46/FusedBatchNormV3/ReadVariableOp_1^model/bn46/ReadVariableOp^model/bn46/ReadVariableOp_1*^model/bn7/FusedBatchNormV3/ReadVariableOp,^model/bn7/FusedBatchNormV3/ReadVariableOp_1^model/bn7/ReadVariableOp^model/bn7/ReadVariableOp_1#^model/conv1/BiasAdd/ReadVariableOp"^model/conv1/Conv2D/ReadVariableOp#^model/conv12/Conv2D/ReadVariableOp#^model/conv15/Conv2D/ReadVariableOp#^model/conv18/Conv2D/ReadVariableOp#^model/conv21/Conv2D/ReadVariableOp#^model/conv24/Conv2D/ReadVariableOp#^model/conv27/Conv2D/ReadVariableOp"^model/conv3/Conv2D/ReadVariableOp#^model/conv30/Conv2D/ReadVariableOp#^model/conv33/Conv2D/ReadVariableOp#^model/conv36/Conv2D/ReadVariableOp#^model/conv39/Conv2D/ReadVariableOp#^model/conv42/Conv2D/ReadVariableOp#^model/conv45/Conv2D/ReadVariableOp#^model/conv48/Conv2D/ReadVariableOp"^model/conv6/Conv2D/ReadVariableOp"^model/conv9/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*▐
_input_shapes╠
╔:+                           : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2X
*model/bn10/FusedBatchNormV3/ReadVariableOp*model/bn10/FusedBatchNormV3/ReadVariableOp2\
,model/bn10/FusedBatchNormV3/ReadVariableOp_1,model/bn10/FusedBatchNormV3/ReadVariableOp_126
model/bn10/ReadVariableOpmodel/bn10/ReadVariableOp2:
model/bn10/ReadVariableOp_1model/bn10/ReadVariableOp_12X
*model/bn13/FusedBatchNormV3/ReadVariableOp*model/bn13/FusedBatchNormV3/ReadVariableOp2\
,model/bn13/FusedBatchNormV3/ReadVariableOp_1,model/bn13/FusedBatchNormV3/ReadVariableOp_126
model/bn13/ReadVariableOpmodel/bn13/ReadVariableOp2:
model/bn13/ReadVariableOp_1model/bn13/ReadVariableOp_12X
*model/bn16/FusedBatchNormV3/ReadVariableOp*model/bn16/FusedBatchNormV3/ReadVariableOp2\
,model/bn16/FusedBatchNormV3/ReadVariableOp_1,model/bn16/FusedBatchNormV3/ReadVariableOp_126
model/bn16/ReadVariableOpmodel/bn16/ReadVariableOp2:
model/bn16/ReadVariableOp_1model/bn16/ReadVariableOp_12X
*model/bn19/FusedBatchNormV3/ReadVariableOp*model/bn19/FusedBatchNormV3/ReadVariableOp2\
,model/bn19/FusedBatchNormV3/ReadVariableOp_1,model/bn19/FusedBatchNormV3/ReadVariableOp_126
model/bn19/ReadVariableOpmodel/bn19/ReadVariableOp2:
model/bn19/ReadVariableOp_1model/bn19/ReadVariableOp_12X
*model/bn22/FusedBatchNormV3/ReadVariableOp*model/bn22/FusedBatchNormV3/ReadVariableOp2\
,model/bn22/FusedBatchNormV3/ReadVariableOp_1,model/bn22/FusedBatchNormV3/ReadVariableOp_126
model/bn22/ReadVariableOpmodel/bn22/ReadVariableOp2:
model/bn22/ReadVariableOp_1model/bn22/ReadVariableOp_12X
*model/bn25/FusedBatchNormV3/ReadVariableOp*model/bn25/FusedBatchNormV3/ReadVariableOp2\
,model/bn25/FusedBatchNormV3/ReadVariableOp_1,model/bn25/FusedBatchNormV3/ReadVariableOp_126
model/bn25/ReadVariableOpmodel/bn25/ReadVariableOp2:
model/bn25/ReadVariableOp_1model/bn25/ReadVariableOp_12X
*model/bn28/FusedBatchNormV3/ReadVariableOp*model/bn28/FusedBatchNormV3/ReadVariableOp2\
,model/bn28/FusedBatchNormV3/ReadVariableOp_1,model/bn28/FusedBatchNormV3/ReadVariableOp_126
model/bn28/ReadVariableOpmodel/bn28/ReadVariableOp2:
model/bn28/ReadVariableOp_1model/bn28/ReadVariableOp_12X
*model/bn31/FusedBatchNormV3/ReadVariableOp*model/bn31/FusedBatchNormV3/ReadVariableOp2\
,model/bn31/FusedBatchNormV3/ReadVariableOp_1,model/bn31/FusedBatchNormV3/ReadVariableOp_126
model/bn31/ReadVariableOpmodel/bn31/ReadVariableOp2:
model/bn31/ReadVariableOp_1model/bn31/ReadVariableOp_12X
*model/bn34/FusedBatchNormV3/ReadVariableOp*model/bn34/FusedBatchNormV3/ReadVariableOp2\
,model/bn34/FusedBatchNormV3/ReadVariableOp_1,model/bn34/FusedBatchNormV3/ReadVariableOp_126
model/bn34/ReadVariableOpmodel/bn34/ReadVariableOp2:
model/bn34/ReadVariableOp_1model/bn34/ReadVariableOp_12X
*model/bn37/FusedBatchNormV3/ReadVariableOp*model/bn37/FusedBatchNormV3/ReadVariableOp2\
,model/bn37/FusedBatchNormV3/ReadVariableOp_1,model/bn37/FusedBatchNormV3/ReadVariableOp_126
model/bn37/ReadVariableOpmodel/bn37/ReadVariableOp2:
model/bn37/ReadVariableOp_1model/bn37/ReadVariableOp_12V
)model/bn4/FusedBatchNormV3/ReadVariableOp)model/bn4/FusedBatchNormV3/ReadVariableOp2Z
+model/bn4/FusedBatchNormV3/ReadVariableOp_1+model/bn4/FusedBatchNormV3/ReadVariableOp_124
model/bn4/ReadVariableOpmodel/bn4/ReadVariableOp28
model/bn4/ReadVariableOp_1model/bn4/ReadVariableOp_12X
*model/bn40/FusedBatchNormV3/ReadVariableOp*model/bn40/FusedBatchNormV3/ReadVariableOp2\
,model/bn40/FusedBatchNormV3/ReadVariableOp_1,model/bn40/FusedBatchNormV3/ReadVariableOp_126
model/bn40/ReadVariableOpmodel/bn40/ReadVariableOp2:
model/bn40/ReadVariableOp_1model/bn40/ReadVariableOp_12X
*model/bn43/FusedBatchNormV3/ReadVariableOp*model/bn43/FusedBatchNormV3/ReadVariableOp2\
,model/bn43/FusedBatchNormV3/ReadVariableOp_1,model/bn43/FusedBatchNormV3/ReadVariableOp_126
model/bn43/ReadVariableOpmodel/bn43/ReadVariableOp2:
model/bn43/ReadVariableOp_1model/bn43/ReadVariableOp_12X
*model/bn46/FusedBatchNormV3/ReadVariableOp*model/bn46/FusedBatchNormV3/ReadVariableOp2\
,model/bn46/FusedBatchNormV3/ReadVariableOp_1,model/bn46/FusedBatchNormV3/ReadVariableOp_126
model/bn46/ReadVariableOpmodel/bn46/ReadVariableOp2:
model/bn46/ReadVariableOp_1model/bn46/ReadVariableOp_12V
)model/bn7/FusedBatchNormV3/ReadVariableOp)model/bn7/FusedBatchNormV3/ReadVariableOp2Z
+model/bn7/FusedBatchNormV3/ReadVariableOp_1+model/bn7/FusedBatchNormV3/ReadVariableOp_124
model/bn7/ReadVariableOpmodel/bn7/ReadVariableOp28
model/bn7/ReadVariableOp_1model/bn7/ReadVariableOp_12H
"model/conv1/BiasAdd/ReadVariableOp"model/conv1/BiasAdd/ReadVariableOp2F
!model/conv1/Conv2D/ReadVariableOp!model/conv1/Conv2D/ReadVariableOp2H
"model/conv12/Conv2D/ReadVariableOp"model/conv12/Conv2D/ReadVariableOp2H
"model/conv15/Conv2D/ReadVariableOp"model/conv15/Conv2D/ReadVariableOp2H
"model/conv18/Conv2D/ReadVariableOp"model/conv18/Conv2D/ReadVariableOp2H
"model/conv21/Conv2D/ReadVariableOp"model/conv21/Conv2D/ReadVariableOp2H
"model/conv24/Conv2D/ReadVariableOp"model/conv24/Conv2D/ReadVariableOp2H
"model/conv27/Conv2D/ReadVariableOp"model/conv27/Conv2D/ReadVariableOp2F
!model/conv3/Conv2D/ReadVariableOp!model/conv3/Conv2D/ReadVariableOp2H
"model/conv30/Conv2D/ReadVariableOp"model/conv30/Conv2D/ReadVariableOp2H
"model/conv33/Conv2D/ReadVariableOp"model/conv33/Conv2D/ReadVariableOp2H
"model/conv36/Conv2D/ReadVariableOp"model/conv36/Conv2D/ReadVariableOp2H
"model/conv39/Conv2D/ReadVariableOp"model/conv39/Conv2D/ReadVariableOp2H
"model/conv42/Conv2D/ReadVariableOp"model/conv42/Conv2D/ReadVariableOp2H
"model/conv45/Conv2D/ReadVariableOp"model/conv45/Conv2D/ReadVariableOp2H
"model/conv48/Conv2D/ReadVariableOp"model/conv48/Conv2D/ReadVariableOp2F
!model/conv6/Conv2D/ReadVariableOp!model/conv6/Conv2D/ReadVariableOp2F
!model/conv9/Conv2D/ReadVariableOp!model/conv9/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinput0
т
▒
@__inference_conv24_layer_call_and_return_conditional_losses_5975

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ж
Б
%__inference_conv36_layer_call_fn_6312

inputs!
unknown:@@
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv36_layer_call_and_return_conditional_losses_2644Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╒"
И
$__inference_model_layer_call_fn_2924

input0!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@#
	unknown_6:@@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@$

unknown_16:@@

unknown_17:@

unknown_18:@

unknown_19:@

unknown_20:@$

unknown_21:@@

unknown_22:@

unknown_23:@

unknown_24:@

unknown_25:@$

unknown_26:@@

unknown_27:@

unknown_28:@

unknown_29:@

unknown_30:@$

unknown_31:@@

unknown_32:@

unknown_33:@

unknown_34:@

unknown_35:@$

unknown_36:@@

unknown_37:@

unknown_38:@

unknown_39:@

unknown_40:@$

unknown_41:@@

unknown_42:@

unknown_43:@

unknown_44:@

unknown_45:@$

unknown_46:@@

unknown_47:@

unknown_48:@

unknown_49:@

unknown_50:@$

unknown_51:@@

unknown_52:@

unknown_53:@

unknown_54:@

unknown_55:@$

unknown_56:@@

unknown_57:@

unknown_58:@

unknown_59:@

unknown_60:@$

unknown_61:@@

unknown_62:@

unknown_63:@

unknown_64:@

unknown_65:@$

unknown_66:@@

unknown_67:@

unknown_68:@

unknown_69:@

unknown_70:@$

unknown_71:@@

unknown_72:@

unknown_73:@

unknown_74:@

unknown_75:@$

unknown_76:@
identityИвStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinput0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70
unknown_71
unknown_72
unknown_73
unknown_74
unknown_75
unknown_76*Z
TinS
Q2O*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *p
_read_only_resource_inputsR
PN	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMN*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_2765Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*▐
_input_shapes╠
╔:+                           : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinput0
ь
╛
#__inference_bn19_layer_call_fn_5829

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn19_layer_call_and_return_conditional_losses_1723Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ж
И
=__inference_bn4_layer_call_and_return_conditional_losses_5417

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
А
A
%__inference_relu17_layer_call_fn_5784

inputs
identity╚
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu17_layer_call_and_return_conditional_losses_2473z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
з
Й
>__inference_bn10_layer_call_and_return_conditional_losses_1500

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
т
▒
@__inference_conv27_layer_call_and_return_conditional_losses_6061

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
з
Й
>__inference_bn28_layer_call_and_return_conditional_losses_6105

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
з
Й
>__inference_bn10_layer_call_and_return_conditional_losses_5589

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
м
\
@__inference_relu38_layer_call_and_return_conditional_losses_2662

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
м
\
@__inference_relu29_layer_call_and_return_conditional_losses_6133

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
з
Й
>__inference_bn43_layer_call_and_return_conditional_losses_6535

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
т
▒
@__inference_conv33_layer_call_and_return_conditional_losses_2617

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ж
Б
%__inference_conv33_layer_call_fn_6226

inputs!
unknown:@@
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv33_layer_call_and_return_conditional_losses_2617Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ф
н
>__inference_bn31_layer_call_and_return_conditional_losses_6209

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ь╬
█
?__inference_model_layer_call_and_return_conditional_losses_4275

input0$

conv1_4069:@

conv1_4071:@$

conv3_4075:@@
bn4_4078:@
bn4_4080:@
bn4_4082:@
bn4_4084:@$

conv6_4088:@@
bn7_4091:@
bn7_4093:@
bn7_4095:@
bn7_4097:@$

conv9_4101:@@
	bn10_4104:@
	bn10_4106:@
	bn10_4108:@
	bn10_4110:@%
conv12_4114:@@
	bn13_4117:@
	bn13_4119:@
	bn13_4121:@
	bn13_4123:@%
conv15_4127:@@
	bn16_4130:@
	bn16_4132:@
	bn16_4134:@
	bn16_4136:@%
conv18_4140:@@
	bn19_4143:@
	bn19_4145:@
	bn19_4147:@
	bn19_4149:@%
conv21_4153:@@
	bn22_4156:@
	bn22_4158:@
	bn22_4160:@
	bn22_4162:@%
conv24_4166:@@
	bn25_4169:@
	bn25_4171:@
	bn25_4173:@
	bn25_4175:@%
conv27_4179:@@
	bn28_4182:@
	bn28_4184:@
	bn28_4186:@
	bn28_4188:@%
conv30_4192:@@
	bn31_4195:@
	bn31_4197:@
	bn31_4199:@
	bn31_4201:@%
conv33_4205:@@
	bn34_4208:@
	bn34_4210:@
	bn34_4212:@
	bn34_4214:@%
conv36_4218:@@
	bn37_4221:@
	bn37_4223:@
	bn37_4225:@
	bn37_4227:@%
conv39_4231:@@
	bn40_4234:@
	bn40_4236:@
	bn40_4238:@
	bn40_4240:@%
conv42_4244:@@
	bn43_4247:@
	bn43_4249:@
	bn43_4251:@
	bn43_4253:@%
conv45_4257:@@
	bn46_4260:@
	bn46_4262:@
	bn46_4264:@
	bn46_4266:@%
conv48_4270:@
identityИвbn10/StatefulPartitionedCallвbn13/StatefulPartitionedCallвbn16/StatefulPartitionedCallвbn19/StatefulPartitionedCallвbn22/StatefulPartitionedCallвbn25/StatefulPartitionedCallвbn28/StatefulPartitionedCallвbn31/StatefulPartitionedCallвbn34/StatefulPartitionedCallвbn37/StatefulPartitionedCallвbn4/StatefulPartitionedCallвbn40/StatefulPartitionedCallвbn43/StatefulPartitionedCallвbn46/StatefulPartitionedCallвbn7/StatefulPartitionedCallвconv1/StatefulPartitionedCallвconv12/StatefulPartitionedCallвconv15/StatefulPartitionedCallвconv18/StatefulPartitionedCallвconv21/StatefulPartitionedCallвconv24/StatefulPartitionedCallвconv27/StatefulPartitionedCallвconv3/StatefulPartitionedCallвconv30/StatefulPartitionedCallвconv33/StatefulPartitionedCallвconv36/StatefulPartitionedCallвconv39/StatefulPartitionedCallвconv42/StatefulPartitionedCallвconv45/StatefulPartitionedCallвconv48/StatefulPartitionedCallвconv6/StatefulPartitionedCallвconv9/StatefulPartitionedCall√
conv1/StatefulPartitionedCallStatefulPartitionedCallinput0
conv1_4069
conv1_4071*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_conv1_layer_call_and_return_conditional_losses_2327э
relu2/PartitionedCallPartitionedCall&conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_relu2_layer_call_and_return_conditional_losses_2338Е
conv3/StatefulPartitionedCallStatefulPartitionedCallrelu2/PartitionedCall:output:0
conv3_4075*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_conv3_layer_call_and_return_conditional_losses_2347й
bn4/StatefulPartitionedCallStatefulPartitionedCall&conv3/StatefulPartitionedCall:output:0bn4_4078bn4_4080bn4_4082bn4_4084*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *F
fAR?
=__inference_bn4_layer_call_and_return_conditional_losses_1403ы
relu5/PartitionedCallPartitionedCall$bn4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_relu5_layer_call_and_return_conditional_losses_2365Е
conv6/StatefulPartitionedCallStatefulPartitionedCallrelu5/PartitionedCall:output:0
conv6_4088*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_conv6_layer_call_and_return_conditional_losses_2374й
bn7/StatefulPartitionedCallStatefulPartitionedCall&conv6/StatefulPartitionedCall:output:0bn7_4091bn7_4093bn7_4095bn7_4097*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *F
fAR?
=__inference_bn7_layer_call_and_return_conditional_losses_1467ы
relu8/PartitionedCallPartitionedCall$bn7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_relu8_layer_call_and_return_conditional_losses_2392Е
conv9/StatefulPartitionedCallStatefulPartitionedCallrelu8/PartitionedCall:output:0
conv9_4101*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_conv9_layer_call_and_return_conditional_losses_2401п
bn10/StatefulPartitionedCallStatefulPartitionedCall&conv9/StatefulPartitionedCall:output:0	bn10_4104	bn10_4106	bn10_4108	bn10_4110*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn10_layer_call_and_return_conditional_losses_1531ю
relu11/PartitionedCallPartitionedCall%bn10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu11_layer_call_and_return_conditional_losses_2419Й
conv12/StatefulPartitionedCallStatefulPartitionedCallrelu11/PartitionedCall:output:0conv12_4114*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv12_layer_call_and_return_conditional_losses_2428░
bn13/StatefulPartitionedCallStatefulPartitionedCall'conv12/StatefulPartitionedCall:output:0	bn13_4117	bn13_4119	bn13_4121	bn13_4123*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn13_layer_call_and_return_conditional_losses_1595ю
relu14/PartitionedCallPartitionedCall%bn13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu14_layer_call_and_return_conditional_losses_2446Й
conv15/StatefulPartitionedCallStatefulPartitionedCallrelu14/PartitionedCall:output:0conv15_4127*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv15_layer_call_and_return_conditional_losses_2455░
bn16/StatefulPartitionedCallStatefulPartitionedCall'conv15/StatefulPartitionedCall:output:0	bn16_4130	bn16_4132	bn16_4134	bn16_4136*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn16_layer_call_and_return_conditional_losses_1659ю
relu17/PartitionedCallPartitionedCall%bn16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu17_layer_call_and_return_conditional_losses_2473Й
conv18/StatefulPartitionedCallStatefulPartitionedCallrelu17/PartitionedCall:output:0conv18_4140*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv18_layer_call_and_return_conditional_losses_2482░
bn19/StatefulPartitionedCallStatefulPartitionedCall'conv18/StatefulPartitionedCall:output:0	bn19_4143	bn19_4145	bn19_4147	bn19_4149*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn19_layer_call_and_return_conditional_losses_1723ю
relu20/PartitionedCallPartitionedCall%bn19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu20_layer_call_and_return_conditional_losses_2500Й
conv21/StatefulPartitionedCallStatefulPartitionedCallrelu20/PartitionedCall:output:0conv21_4153*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv21_layer_call_and_return_conditional_losses_2509░
bn22/StatefulPartitionedCallStatefulPartitionedCall'conv21/StatefulPartitionedCall:output:0	bn22_4156	bn22_4158	bn22_4160	bn22_4162*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn22_layer_call_and_return_conditional_losses_1787ю
relu23/PartitionedCallPartitionedCall%bn22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu23_layer_call_and_return_conditional_losses_2527Й
conv24/StatefulPartitionedCallStatefulPartitionedCallrelu23/PartitionedCall:output:0conv24_4166*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv24_layer_call_and_return_conditional_losses_2536░
bn25/StatefulPartitionedCallStatefulPartitionedCall'conv24/StatefulPartitionedCall:output:0	bn25_4169	bn25_4171	bn25_4173	bn25_4175*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn25_layer_call_and_return_conditional_losses_1851ю
relu26/PartitionedCallPartitionedCall%bn25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu26_layer_call_and_return_conditional_losses_2554Й
conv27/StatefulPartitionedCallStatefulPartitionedCallrelu26/PartitionedCall:output:0conv27_4179*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv27_layer_call_and_return_conditional_losses_2563░
bn28/StatefulPartitionedCallStatefulPartitionedCall'conv27/StatefulPartitionedCall:output:0	bn28_4182	bn28_4184	bn28_4186	bn28_4188*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn28_layer_call_and_return_conditional_losses_1915ю
relu29/PartitionedCallPartitionedCall%bn28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu29_layer_call_and_return_conditional_losses_2581Й
conv30/StatefulPartitionedCallStatefulPartitionedCallrelu29/PartitionedCall:output:0conv30_4192*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv30_layer_call_and_return_conditional_losses_2590░
bn31/StatefulPartitionedCallStatefulPartitionedCall'conv30/StatefulPartitionedCall:output:0	bn31_4195	bn31_4197	bn31_4199	bn31_4201*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn31_layer_call_and_return_conditional_losses_1979ю
relu32/PartitionedCallPartitionedCall%bn31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu32_layer_call_and_return_conditional_losses_2608Й
conv33/StatefulPartitionedCallStatefulPartitionedCallrelu32/PartitionedCall:output:0conv33_4205*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv33_layer_call_and_return_conditional_losses_2617░
bn34/StatefulPartitionedCallStatefulPartitionedCall'conv33/StatefulPartitionedCall:output:0	bn34_4208	bn34_4210	bn34_4212	bn34_4214*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn34_layer_call_and_return_conditional_losses_2043ю
relu35/PartitionedCallPartitionedCall%bn34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu35_layer_call_and_return_conditional_losses_2635Й
conv36/StatefulPartitionedCallStatefulPartitionedCallrelu35/PartitionedCall:output:0conv36_4218*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv36_layer_call_and_return_conditional_losses_2644░
bn37/StatefulPartitionedCallStatefulPartitionedCall'conv36/StatefulPartitionedCall:output:0	bn37_4221	bn37_4223	bn37_4225	bn37_4227*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn37_layer_call_and_return_conditional_losses_2107ю
relu38/PartitionedCallPartitionedCall%bn37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu38_layer_call_and_return_conditional_losses_2662Й
conv39/StatefulPartitionedCallStatefulPartitionedCallrelu38/PartitionedCall:output:0conv39_4231*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv39_layer_call_and_return_conditional_losses_2671░
bn40/StatefulPartitionedCallStatefulPartitionedCall'conv39/StatefulPartitionedCall:output:0	bn40_4234	bn40_4236	bn40_4238	bn40_4240*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn40_layer_call_and_return_conditional_losses_2171ю
relu41/PartitionedCallPartitionedCall%bn40/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu41_layer_call_and_return_conditional_losses_2689Й
conv42/StatefulPartitionedCallStatefulPartitionedCallrelu41/PartitionedCall:output:0conv42_4244*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv42_layer_call_and_return_conditional_losses_2698░
bn43/StatefulPartitionedCallStatefulPartitionedCall'conv42/StatefulPartitionedCall:output:0	bn43_4247	bn43_4249	bn43_4251	bn43_4253*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn43_layer_call_and_return_conditional_losses_2235ю
relu44/PartitionedCallPartitionedCall%bn43/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu44_layer_call_and_return_conditional_losses_2716Й
conv45/StatefulPartitionedCallStatefulPartitionedCallrelu44/PartitionedCall:output:0conv45_4257*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv45_layer_call_and_return_conditional_losses_2725░
bn46/StatefulPartitionedCallStatefulPartitionedCall'conv45/StatefulPartitionedCall:output:0	bn46_4260	bn46_4262	bn46_4264	bn46_4266*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn46_layer_call_and_return_conditional_losses_2299ю
relu47/PartitionedCallPartitionedCall%bn46/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu47_layer_call_and_return_conditional_losses_2743Й
conv48/StatefulPartitionedCallStatefulPartitionedCallrelu47/PartitionedCall:output:0conv48_4270*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv48_layer_call_and_return_conditional_losses_2752Б
subtract49/PartitionedCallPartitionedCallinput0'conv48/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_subtract49_layer_call_and_return_conditional_losses_2762М
IdentityIdentity#subtract49/PartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           ┬
NoOpNoOp^bn10/StatefulPartitionedCall^bn13/StatefulPartitionedCall^bn16/StatefulPartitionedCall^bn19/StatefulPartitionedCall^bn22/StatefulPartitionedCall^bn25/StatefulPartitionedCall^bn28/StatefulPartitionedCall^bn31/StatefulPartitionedCall^bn34/StatefulPartitionedCall^bn37/StatefulPartitionedCall^bn4/StatefulPartitionedCall^bn40/StatefulPartitionedCall^bn43/StatefulPartitionedCall^bn46/StatefulPartitionedCall^bn7/StatefulPartitionedCall^conv1/StatefulPartitionedCall^conv12/StatefulPartitionedCall^conv15/StatefulPartitionedCall^conv18/StatefulPartitionedCall^conv21/StatefulPartitionedCall^conv24/StatefulPartitionedCall^conv27/StatefulPartitionedCall^conv3/StatefulPartitionedCall^conv30/StatefulPartitionedCall^conv33/StatefulPartitionedCall^conv36/StatefulPartitionedCall^conv39/StatefulPartitionedCall^conv42/StatefulPartitionedCall^conv45/StatefulPartitionedCall^conv48/StatefulPartitionedCall^conv6/StatefulPartitionedCall^conv9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*▐
_input_shapes╠
╔:+                           : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2<
bn10/StatefulPartitionedCallbn10/StatefulPartitionedCall2<
bn13/StatefulPartitionedCallbn13/StatefulPartitionedCall2<
bn16/StatefulPartitionedCallbn16/StatefulPartitionedCall2<
bn19/StatefulPartitionedCallbn19/StatefulPartitionedCall2<
bn22/StatefulPartitionedCallbn22/StatefulPartitionedCall2<
bn25/StatefulPartitionedCallbn25/StatefulPartitionedCall2<
bn28/StatefulPartitionedCallbn28/StatefulPartitionedCall2<
bn31/StatefulPartitionedCallbn31/StatefulPartitionedCall2<
bn34/StatefulPartitionedCallbn34/StatefulPartitionedCall2<
bn37/StatefulPartitionedCallbn37/StatefulPartitionedCall2:
bn4/StatefulPartitionedCallbn4/StatefulPartitionedCall2<
bn40/StatefulPartitionedCallbn40/StatefulPartitionedCall2<
bn43/StatefulPartitionedCallbn43/StatefulPartitionedCall2<
bn46/StatefulPartitionedCallbn46/StatefulPartitionedCall2:
bn7/StatefulPartitionedCallbn7/StatefulPartitionedCall2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall2@
conv12/StatefulPartitionedCallconv12/StatefulPartitionedCall2@
conv15/StatefulPartitionedCallconv15/StatefulPartitionedCall2@
conv18/StatefulPartitionedCallconv18/StatefulPartitionedCall2@
conv21/StatefulPartitionedCallconv21/StatefulPartitionedCall2@
conv24/StatefulPartitionedCallconv24/StatefulPartitionedCall2@
conv27/StatefulPartitionedCallconv27/StatefulPartitionedCall2>
conv3/StatefulPartitionedCallconv3/StatefulPartitionedCall2@
conv30/StatefulPartitionedCallconv30/StatefulPartitionedCall2@
conv33/StatefulPartitionedCallconv33/StatefulPartitionedCall2@
conv36/StatefulPartitionedCallconv36/StatefulPartitionedCall2@
conv39/StatefulPartitionedCallconv39/StatefulPartitionedCall2@
conv42/StatefulPartitionedCallconv42/StatefulPartitionedCall2@
conv45/StatefulPartitionedCallconv45/StatefulPartitionedCall2@
conv48/StatefulPartitionedCallconv48/StatefulPartitionedCall2>
conv6/StatefulPartitionedCallconv6/StatefulPartitionedCall2>
conv9/StatefulPartitionedCallconv9/StatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinput0
л
[
?__inference_relu8_layer_call_and_return_conditional_losses_2392

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ь
╜
"__inference_bn7_layer_call_fn_5472

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *F
fAR?
=__inference_bn7_layer_call_and_return_conditional_losses_1436Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Д
А
$__inference_conv9_layer_call_fn_5538

inputs!
unknown:@@
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_conv9_layer_call_and_return_conditional_losses_2401Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
с
░
?__inference_conv3_layer_call_and_return_conditional_losses_2347

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Д
А
$__inference_conv3_layer_call_fn_5366

inputs!
unknown:@@
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_conv3_layer_call_and_return_conditional_losses_2347Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
з
Й
>__inference_bn13_layer_call_and_return_conditional_losses_5675

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
м
\
@__inference_relu20_layer_call_and_return_conditional_losses_2500

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
з
Й
>__inference_bn19_layer_call_and_return_conditional_losses_5847

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ю
╛
#__inference_bn13_layer_call_fn_5644

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn13_layer_call_and_return_conditional_losses_1564Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
У
м
=__inference_bn7_layer_call_and_return_conditional_losses_1467

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
с
░
?__inference_conv6_layer_call_and_return_conditional_losses_5459

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ж
Б
%__inference_conv30_layer_call_fn_6140

inputs!
unknown:@@
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv30_layer_call_and_return_conditional_losses_2590Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
з
Й
>__inference_bn46_layer_call_and_return_conditional_losses_6621

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
с
░
?__inference_conv9_layer_call_and_return_conditional_losses_5545

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
м
\
@__inference_relu26_layer_call_and_return_conditional_losses_2554

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ю
╛
#__inference_bn43_layer_call_fn_6504

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn43_layer_call_and_return_conditional_losses_2204Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ж
Б
%__inference_conv18_layer_call_fn_5796

inputs!
unknown:@@
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv18_layer_call_and_return_conditional_losses_2482Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ф▌
Ф;
?__inference_model_layer_call_and_return_conditional_losses_5167

inputs>
$conv1_conv2d_readvariableop_resource:@3
%conv1_biasadd_readvariableop_resource:@>
$conv3_conv2d_readvariableop_resource:@@)
bn4_readvariableop_resource:@+
bn4_readvariableop_1_resource:@:
,bn4_fusedbatchnormv3_readvariableop_resource:@<
.bn4_fusedbatchnormv3_readvariableop_1_resource:@>
$conv6_conv2d_readvariableop_resource:@@)
bn7_readvariableop_resource:@+
bn7_readvariableop_1_resource:@:
,bn7_fusedbatchnormv3_readvariableop_resource:@<
.bn7_fusedbatchnormv3_readvariableop_1_resource:@>
$conv9_conv2d_readvariableop_resource:@@*
bn10_readvariableop_resource:@,
bn10_readvariableop_1_resource:@;
-bn10_fusedbatchnormv3_readvariableop_resource:@=
/bn10_fusedbatchnormv3_readvariableop_1_resource:@?
%conv12_conv2d_readvariableop_resource:@@*
bn13_readvariableop_resource:@,
bn13_readvariableop_1_resource:@;
-bn13_fusedbatchnormv3_readvariableop_resource:@=
/bn13_fusedbatchnormv3_readvariableop_1_resource:@?
%conv15_conv2d_readvariableop_resource:@@*
bn16_readvariableop_resource:@,
bn16_readvariableop_1_resource:@;
-bn16_fusedbatchnormv3_readvariableop_resource:@=
/bn16_fusedbatchnormv3_readvariableop_1_resource:@?
%conv18_conv2d_readvariableop_resource:@@*
bn19_readvariableop_resource:@,
bn19_readvariableop_1_resource:@;
-bn19_fusedbatchnormv3_readvariableop_resource:@=
/bn19_fusedbatchnormv3_readvariableop_1_resource:@?
%conv21_conv2d_readvariableop_resource:@@*
bn22_readvariableop_resource:@,
bn22_readvariableop_1_resource:@;
-bn22_fusedbatchnormv3_readvariableop_resource:@=
/bn22_fusedbatchnormv3_readvariableop_1_resource:@?
%conv24_conv2d_readvariableop_resource:@@*
bn25_readvariableop_resource:@,
bn25_readvariableop_1_resource:@;
-bn25_fusedbatchnormv3_readvariableop_resource:@=
/bn25_fusedbatchnormv3_readvariableop_1_resource:@?
%conv27_conv2d_readvariableop_resource:@@*
bn28_readvariableop_resource:@,
bn28_readvariableop_1_resource:@;
-bn28_fusedbatchnormv3_readvariableop_resource:@=
/bn28_fusedbatchnormv3_readvariableop_1_resource:@?
%conv30_conv2d_readvariableop_resource:@@*
bn31_readvariableop_resource:@,
bn31_readvariableop_1_resource:@;
-bn31_fusedbatchnormv3_readvariableop_resource:@=
/bn31_fusedbatchnormv3_readvariableop_1_resource:@?
%conv33_conv2d_readvariableop_resource:@@*
bn34_readvariableop_resource:@,
bn34_readvariableop_1_resource:@;
-bn34_fusedbatchnormv3_readvariableop_resource:@=
/bn34_fusedbatchnormv3_readvariableop_1_resource:@?
%conv36_conv2d_readvariableop_resource:@@*
bn37_readvariableop_resource:@,
bn37_readvariableop_1_resource:@;
-bn37_fusedbatchnormv3_readvariableop_resource:@=
/bn37_fusedbatchnormv3_readvariableop_1_resource:@?
%conv39_conv2d_readvariableop_resource:@@*
bn40_readvariableop_resource:@,
bn40_readvariableop_1_resource:@;
-bn40_fusedbatchnormv3_readvariableop_resource:@=
/bn40_fusedbatchnormv3_readvariableop_1_resource:@?
%conv42_conv2d_readvariableop_resource:@@*
bn43_readvariableop_resource:@,
bn43_readvariableop_1_resource:@;
-bn43_fusedbatchnormv3_readvariableop_resource:@=
/bn43_fusedbatchnormv3_readvariableop_1_resource:@?
%conv45_conv2d_readvariableop_resource:@@*
bn46_readvariableop_resource:@,
bn46_readvariableop_1_resource:@;
-bn46_fusedbatchnormv3_readvariableop_resource:@=
/bn46_fusedbatchnormv3_readvariableop_1_resource:@?
%conv48_conv2d_readvariableop_resource:@
identityИвbn10/AssignNewValueвbn10/AssignNewValue_1в$bn10/FusedBatchNormV3/ReadVariableOpв&bn10/FusedBatchNormV3/ReadVariableOp_1вbn10/ReadVariableOpвbn10/ReadVariableOp_1вbn13/AssignNewValueвbn13/AssignNewValue_1в$bn13/FusedBatchNormV3/ReadVariableOpв&bn13/FusedBatchNormV3/ReadVariableOp_1вbn13/ReadVariableOpвbn13/ReadVariableOp_1вbn16/AssignNewValueвbn16/AssignNewValue_1в$bn16/FusedBatchNormV3/ReadVariableOpв&bn16/FusedBatchNormV3/ReadVariableOp_1вbn16/ReadVariableOpвbn16/ReadVariableOp_1вbn19/AssignNewValueвbn19/AssignNewValue_1в$bn19/FusedBatchNormV3/ReadVariableOpв&bn19/FusedBatchNormV3/ReadVariableOp_1вbn19/ReadVariableOpвbn19/ReadVariableOp_1вbn22/AssignNewValueвbn22/AssignNewValue_1в$bn22/FusedBatchNormV3/ReadVariableOpв&bn22/FusedBatchNormV3/ReadVariableOp_1вbn22/ReadVariableOpвbn22/ReadVariableOp_1вbn25/AssignNewValueвbn25/AssignNewValue_1в$bn25/FusedBatchNormV3/ReadVariableOpв&bn25/FusedBatchNormV3/ReadVariableOp_1вbn25/ReadVariableOpвbn25/ReadVariableOp_1вbn28/AssignNewValueвbn28/AssignNewValue_1в$bn28/FusedBatchNormV3/ReadVariableOpв&bn28/FusedBatchNormV3/ReadVariableOp_1вbn28/ReadVariableOpвbn28/ReadVariableOp_1вbn31/AssignNewValueвbn31/AssignNewValue_1в$bn31/FusedBatchNormV3/ReadVariableOpв&bn31/FusedBatchNormV3/ReadVariableOp_1вbn31/ReadVariableOpвbn31/ReadVariableOp_1вbn34/AssignNewValueвbn34/AssignNewValue_1в$bn34/FusedBatchNormV3/ReadVariableOpв&bn34/FusedBatchNormV3/ReadVariableOp_1вbn34/ReadVariableOpвbn34/ReadVariableOp_1вbn37/AssignNewValueвbn37/AssignNewValue_1в$bn37/FusedBatchNormV3/ReadVariableOpв&bn37/FusedBatchNormV3/ReadVariableOp_1вbn37/ReadVariableOpвbn37/ReadVariableOp_1вbn4/AssignNewValueвbn4/AssignNewValue_1в#bn4/FusedBatchNormV3/ReadVariableOpв%bn4/FusedBatchNormV3/ReadVariableOp_1вbn4/ReadVariableOpвbn4/ReadVariableOp_1вbn40/AssignNewValueвbn40/AssignNewValue_1в$bn40/FusedBatchNormV3/ReadVariableOpв&bn40/FusedBatchNormV3/ReadVariableOp_1вbn40/ReadVariableOpвbn40/ReadVariableOp_1вbn43/AssignNewValueвbn43/AssignNewValue_1в$bn43/FusedBatchNormV3/ReadVariableOpв&bn43/FusedBatchNormV3/ReadVariableOp_1вbn43/ReadVariableOpвbn43/ReadVariableOp_1вbn46/AssignNewValueвbn46/AssignNewValue_1в$bn46/FusedBatchNormV3/ReadVariableOpв&bn46/FusedBatchNormV3/ReadVariableOp_1вbn46/ReadVariableOpвbn46/ReadVariableOp_1вbn7/AssignNewValueвbn7/AssignNewValue_1в#bn7/FusedBatchNormV3/ReadVariableOpв%bn7/FusedBatchNormV3/ReadVariableOp_1вbn7/ReadVariableOpвbn7/ReadVariableOp_1вconv1/BiasAdd/ReadVariableOpвconv1/Conv2D/ReadVariableOpвconv12/Conv2D/ReadVariableOpвconv15/Conv2D/ReadVariableOpвconv18/Conv2D/ReadVariableOpвconv21/Conv2D/ReadVariableOpвconv24/Conv2D/ReadVariableOpвconv27/Conv2D/ReadVariableOpвconv3/Conv2D/ReadVariableOpвconv30/Conv2D/ReadVariableOpвconv33/Conv2D/ReadVariableOpвconv36/Conv2D/ReadVariableOpвconv39/Conv2D/ReadVariableOpвconv42/Conv2D/ReadVariableOpвconv45/Conv2D/ReadVariableOpвconv48/Conv2D/ReadVariableOpвconv6/Conv2D/ReadVariableOpвconv9/Conv2D/ReadVariableOpИ
conv1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0╖
conv1/Conv2DConv2Dinputs#conv1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
~
conv1/BiasAdd/ReadVariableOpReadVariableOp%conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0б
conv1/BiasAddBiasAddconv1/Conv2D:output:0$conv1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @v

relu2/ReluReluconv1/BiasAdd:output:0*
T0*A
_output_shapes/
-:+                           @И
conv3/Conv2D/ReadVariableOpReadVariableOp$conv3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╔
conv3/Conv2DConv2Drelu2/Relu:activations:0#conv3/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
j
bn4/ReadVariableOpReadVariableOpbn4_readvariableop_resource*
_output_shapes
:@*
dtype0n
bn4/ReadVariableOp_1ReadVariableOpbn4_readvariableop_1_resource*
_output_shapes
:@*
dtype0М
#bn4/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Р
%bn4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╞
bn4/FusedBatchNormV3FusedBatchNormV3conv3/Conv2D:output:0bn4/ReadVariableOp:value:0bn4/ReadVariableOp_1:value:0+bn4/FusedBatchNormV3/ReadVariableOp:value:0-bn4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:└
bn4/AssignNewValueAssignVariableOp,bn4_fusedbatchnormv3_readvariableop_resource!bn4/FusedBatchNormV3:batch_mean:0$^bn4/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0╩
bn4/AssignNewValue_1AssignVariableOp.bn4_fusedbatchnormv3_readvariableop_1_resource%bn4/FusedBatchNormV3:batch_variance:0&^bn4/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0x

relu5/ReluRelubn4/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @И
conv6/Conv2D/ReadVariableOpReadVariableOp$conv6_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╔
conv6/Conv2DConv2Drelu5/Relu:activations:0#conv6/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
j
bn7/ReadVariableOpReadVariableOpbn7_readvariableop_resource*
_output_shapes
:@*
dtype0n
bn7/ReadVariableOp_1ReadVariableOpbn7_readvariableop_1_resource*
_output_shapes
:@*
dtype0М
#bn7/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Р
%bn7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╞
bn7/FusedBatchNormV3FusedBatchNormV3conv6/Conv2D:output:0bn7/ReadVariableOp:value:0bn7/ReadVariableOp_1:value:0+bn7/FusedBatchNormV3/ReadVariableOp:value:0-bn7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:└
bn7/AssignNewValueAssignVariableOp,bn7_fusedbatchnormv3_readvariableop_resource!bn7/FusedBatchNormV3:batch_mean:0$^bn7/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0╩
bn7/AssignNewValue_1AssignVariableOp.bn7_fusedbatchnormv3_readvariableop_1_resource%bn7/FusedBatchNormV3:batch_variance:0&^bn7/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0x

relu8/ReluRelubn7/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @И
conv9/Conv2D/ReadVariableOpReadVariableOp$conv9_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╔
conv9/Conv2DConv2Drelu8/Relu:activations:0#conv9/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
l
bn10/ReadVariableOpReadVariableOpbn10_readvariableop_resource*
_output_shapes
:@*
dtype0p
bn10/ReadVariableOp_1ReadVariableOpbn10_readvariableop_1_resource*
_output_shapes
:@*
dtype0О
$bn10/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn10_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&bn10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╦
bn10/FusedBatchNormV3FusedBatchNormV3conv9/Conv2D:output:0bn10/ReadVariableOp:value:0bn10/ReadVariableOp_1:value:0,bn10/FusedBatchNormV3/ReadVariableOp:value:0.bn10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:─
bn10/AssignNewValueAssignVariableOp-bn10_fusedbatchnormv3_readvariableop_resource"bn10/FusedBatchNormV3:batch_mean:0%^bn10/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0╬
bn10/AssignNewValue_1AssignVariableOp/bn10_fusedbatchnormv3_readvariableop_1_resource&bn10/FusedBatchNormV3:batch_variance:0'^bn10/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0z
relu11/ReluRelubn10/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @К
conv12/Conv2D/ReadVariableOpReadVariableOp%conv12_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╠
conv12/Conv2DConv2Drelu11/Relu:activations:0$conv12/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
l
bn13/ReadVariableOpReadVariableOpbn13_readvariableop_resource*
_output_shapes
:@*
dtype0p
bn13/ReadVariableOp_1ReadVariableOpbn13_readvariableop_1_resource*
_output_shapes
:@*
dtype0О
$bn13/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn13_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&bn13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╠
bn13/FusedBatchNormV3FusedBatchNormV3conv12/Conv2D:output:0bn13/ReadVariableOp:value:0bn13/ReadVariableOp_1:value:0,bn13/FusedBatchNormV3/ReadVariableOp:value:0.bn13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:─
bn13/AssignNewValueAssignVariableOp-bn13_fusedbatchnormv3_readvariableop_resource"bn13/FusedBatchNormV3:batch_mean:0%^bn13/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0╬
bn13/AssignNewValue_1AssignVariableOp/bn13_fusedbatchnormv3_readvariableop_1_resource&bn13/FusedBatchNormV3:batch_variance:0'^bn13/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0z
relu14/ReluRelubn13/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @К
conv15/Conv2D/ReadVariableOpReadVariableOp%conv15_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╠
conv15/Conv2DConv2Drelu14/Relu:activations:0$conv15/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
l
bn16/ReadVariableOpReadVariableOpbn16_readvariableop_resource*
_output_shapes
:@*
dtype0p
bn16/ReadVariableOp_1ReadVariableOpbn16_readvariableop_1_resource*
_output_shapes
:@*
dtype0О
$bn16/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn16_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&bn16/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn16_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╠
bn16/FusedBatchNormV3FusedBatchNormV3conv15/Conv2D:output:0bn16/ReadVariableOp:value:0bn16/ReadVariableOp_1:value:0,bn16/FusedBatchNormV3/ReadVariableOp:value:0.bn16/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:─
bn16/AssignNewValueAssignVariableOp-bn16_fusedbatchnormv3_readvariableop_resource"bn16/FusedBatchNormV3:batch_mean:0%^bn16/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0╬
bn16/AssignNewValue_1AssignVariableOp/bn16_fusedbatchnormv3_readvariableop_1_resource&bn16/FusedBatchNormV3:batch_variance:0'^bn16/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0z
relu17/ReluRelubn16/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @К
conv18/Conv2D/ReadVariableOpReadVariableOp%conv18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╠
conv18/Conv2DConv2Drelu17/Relu:activations:0$conv18/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
l
bn19/ReadVariableOpReadVariableOpbn19_readvariableop_resource*
_output_shapes
:@*
dtype0p
bn19/ReadVariableOp_1ReadVariableOpbn19_readvariableop_1_resource*
_output_shapes
:@*
dtype0О
$bn19/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn19_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&bn19/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn19_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╠
bn19/FusedBatchNormV3FusedBatchNormV3conv18/Conv2D:output:0bn19/ReadVariableOp:value:0bn19/ReadVariableOp_1:value:0,bn19/FusedBatchNormV3/ReadVariableOp:value:0.bn19/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:─
bn19/AssignNewValueAssignVariableOp-bn19_fusedbatchnormv3_readvariableop_resource"bn19/FusedBatchNormV3:batch_mean:0%^bn19/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0╬
bn19/AssignNewValue_1AssignVariableOp/bn19_fusedbatchnormv3_readvariableop_1_resource&bn19/FusedBatchNormV3:batch_variance:0'^bn19/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0z
relu20/ReluRelubn19/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @К
conv21/Conv2D/ReadVariableOpReadVariableOp%conv21_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╠
conv21/Conv2DConv2Drelu20/Relu:activations:0$conv21/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
l
bn22/ReadVariableOpReadVariableOpbn22_readvariableop_resource*
_output_shapes
:@*
dtype0p
bn22/ReadVariableOp_1ReadVariableOpbn22_readvariableop_1_resource*
_output_shapes
:@*
dtype0О
$bn22/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn22_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&bn22/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn22_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╠
bn22/FusedBatchNormV3FusedBatchNormV3conv21/Conv2D:output:0bn22/ReadVariableOp:value:0bn22/ReadVariableOp_1:value:0,bn22/FusedBatchNormV3/ReadVariableOp:value:0.bn22/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:─
bn22/AssignNewValueAssignVariableOp-bn22_fusedbatchnormv3_readvariableop_resource"bn22/FusedBatchNormV3:batch_mean:0%^bn22/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0╬
bn22/AssignNewValue_1AssignVariableOp/bn22_fusedbatchnormv3_readvariableop_1_resource&bn22/FusedBatchNormV3:batch_variance:0'^bn22/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0z
relu23/ReluRelubn22/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @К
conv24/Conv2D/ReadVariableOpReadVariableOp%conv24_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╠
conv24/Conv2DConv2Drelu23/Relu:activations:0$conv24/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
l
bn25/ReadVariableOpReadVariableOpbn25_readvariableop_resource*
_output_shapes
:@*
dtype0p
bn25/ReadVariableOp_1ReadVariableOpbn25_readvariableop_1_resource*
_output_shapes
:@*
dtype0О
$bn25/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn25_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&bn25/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn25_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╠
bn25/FusedBatchNormV3FusedBatchNormV3conv24/Conv2D:output:0bn25/ReadVariableOp:value:0bn25/ReadVariableOp_1:value:0,bn25/FusedBatchNormV3/ReadVariableOp:value:0.bn25/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:─
bn25/AssignNewValueAssignVariableOp-bn25_fusedbatchnormv3_readvariableop_resource"bn25/FusedBatchNormV3:batch_mean:0%^bn25/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0╬
bn25/AssignNewValue_1AssignVariableOp/bn25_fusedbatchnormv3_readvariableop_1_resource&bn25/FusedBatchNormV3:batch_variance:0'^bn25/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0z
relu26/ReluRelubn25/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @К
conv27/Conv2D/ReadVariableOpReadVariableOp%conv27_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╠
conv27/Conv2DConv2Drelu26/Relu:activations:0$conv27/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
l
bn28/ReadVariableOpReadVariableOpbn28_readvariableop_resource*
_output_shapes
:@*
dtype0p
bn28/ReadVariableOp_1ReadVariableOpbn28_readvariableop_1_resource*
_output_shapes
:@*
dtype0О
$bn28/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn28_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&bn28/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn28_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╠
bn28/FusedBatchNormV3FusedBatchNormV3conv27/Conv2D:output:0bn28/ReadVariableOp:value:0bn28/ReadVariableOp_1:value:0,bn28/FusedBatchNormV3/ReadVariableOp:value:0.bn28/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:─
bn28/AssignNewValueAssignVariableOp-bn28_fusedbatchnormv3_readvariableop_resource"bn28/FusedBatchNormV3:batch_mean:0%^bn28/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0╬
bn28/AssignNewValue_1AssignVariableOp/bn28_fusedbatchnormv3_readvariableop_1_resource&bn28/FusedBatchNormV3:batch_variance:0'^bn28/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0z
relu29/ReluRelubn28/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @К
conv30/Conv2D/ReadVariableOpReadVariableOp%conv30_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╠
conv30/Conv2DConv2Drelu29/Relu:activations:0$conv30/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
l
bn31/ReadVariableOpReadVariableOpbn31_readvariableop_resource*
_output_shapes
:@*
dtype0p
bn31/ReadVariableOp_1ReadVariableOpbn31_readvariableop_1_resource*
_output_shapes
:@*
dtype0О
$bn31/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn31_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&bn31/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn31_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╠
bn31/FusedBatchNormV3FusedBatchNormV3conv30/Conv2D:output:0bn31/ReadVariableOp:value:0bn31/ReadVariableOp_1:value:0,bn31/FusedBatchNormV3/ReadVariableOp:value:0.bn31/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:─
bn31/AssignNewValueAssignVariableOp-bn31_fusedbatchnormv3_readvariableop_resource"bn31/FusedBatchNormV3:batch_mean:0%^bn31/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0╬
bn31/AssignNewValue_1AssignVariableOp/bn31_fusedbatchnormv3_readvariableop_1_resource&bn31/FusedBatchNormV3:batch_variance:0'^bn31/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0z
relu32/ReluRelubn31/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @К
conv33/Conv2D/ReadVariableOpReadVariableOp%conv33_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╠
conv33/Conv2DConv2Drelu32/Relu:activations:0$conv33/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
l
bn34/ReadVariableOpReadVariableOpbn34_readvariableop_resource*
_output_shapes
:@*
dtype0p
bn34/ReadVariableOp_1ReadVariableOpbn34_readvariableop_1_resource*
_output_shapes
:@*
dtype0О
$bn34/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn34_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&bn34/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn34_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╠
bn34/FusedBatchNormV3FusedBatchNormV3conv33/Conv2D:output:0bn34/ReadVariableOp:value:0bn34/ReadVariableOp_1:value:0,bn34/FusedBatchNormV3/ReadVariableOp:value:0.bn34/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:─
bn34/AssignNewValueAssignVariableOp-bn34_fusedbatchnormv3_readvariableop_resource"bn34/FusedBatchNormV3:batch_mean:0%^bn34/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0╬
bn34/AssignNewValue_1AssignVariableOp/bn34_fusedbatchnormv3_readvariableop_1_resource&bn34/FusedBatchNormV3:batch_variance:0'^bn34/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0z
relu35/ReluRelubn34/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @К
conv36/Conv2D/ReadVariableOpReadVariableOp%conv36_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╠
conv36/Conv2DConv2Drelu35/Relu:activations:0$conv36/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
l
bn37/ReadVariableOpReadVariableOpbn37_readvariableop_resource*
_output_shapes
:@*
dtype0p
bn37/ReadVariableOp_1ReadVariableOpbn37_readvariableop_1_resource*
_output_shapes
:@*
dtype0О
$bn37/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn37_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&bn37/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn37_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╠
bn37/FusedBatchNormV3FusedBatchNormV3conv36/Conv2D:output:0bn37/ReadVariableOp:value:0bn37/ReadVariableOp_1:value:0,bn37/FusedBatchNormV3/ReadVariableOp:value:0.bn37/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:─
bn37/AssignNewValueAssignVariableOp-bn37_fusedbatchnormv3_readvariableop_resource"bn37/FusedBatchNormV3:batch_mean:0%^bn37/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0╬
bn37/AssignNewValue_1AssignVariableOp/bn37_fusedbatchnormv3_readvariableop_1_resource&bn37/FusedBatchNormV3:batch_variance:0'^bn37/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0z
relu38/ReluRelubn37/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @К
conv39/Conv2D/ReadVariableOpReadVariableOp%conv39_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╠
conv39/Conv2DConv2Drelu38/Relu:activations:0$conv39/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
l
bn40/ReadVariableOpReadVariableOpbn40_readvariableop_resource*
_output_shapes
:@*
dtype0p
bn40/ReadVariableOp_1ReadVariableOpbn40_readvariableop_1_resource*
_output_shapes
:@*
dtype0О
$bn40/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn40_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&bn40/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn40_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╠
bn40/FusedBatchNormV3FusedBatchNormV3conv39/Conv2D:output:0bn40/ReadVariableOp:value:0bn40/ReadVariableOp_1:value:0,bn40/FusedBatchNormV3/ReadVariableOp:value:0.bn40/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:─
bn40/AssignNewValueAssignVariableOp-bn40_fusedbatchnormv3_readvariableop_resource"bn40/FusedBatchNormV3:batch_mean:0%^bn40/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0╬
bn40/AssignNewValue_1AssignVariableOp/bn40_fusedbatchnormv3_readvariableop_1_resource&bn40/FusedBatchNormV3:batch_variance:0'^bn40/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0z
relu41/ReluRelubn40/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @К
conv42/Conv2D/ReadVariableOpReadVariableOp%conv42_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╠
conv42/Conv2DConv2Drelu41/Relu:activations:0$conv42/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
l
bn43/ReadVariableOpReadVariableOpbn43_readvariableop_resource*
_output_shapes
:@*
dtype0p
bn43/ReadVariableOp_1ReadVariableOpbn43_readvariableop_1_resource*
_output_shapes
:@*
dtype0О
$bn43/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn43_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&bn43/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn43_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╠
bn43/FusedBatchNormV3FusedBatchNormV3conv42/Conv2D:output:0bn43/ReadVariableOp:value:0bn43/ReadVariableOp_1:value:0,bn43/FusedBatchNormV3/ReadVariableOp:value:0.bn43/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:─
bn43/AssignNewValueAssignVariableOp-bn43_fusedbatchnormv3_readvariableop_resource"bn43/FusedBatchNormV3:batch_mean:0%^bn43/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0╬
bn43/AssignNewValue_1AssignVariableOp/bn43_fusedbatchnormv3_readvariableop_1_resource&bn43/FusedBatchNormV3:batch_variance:0'^bn43/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0z
relu44/ReluRelubn43/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @К
conv45/Conv2D/ReadVariableOpReadVariableOp%conv45_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╠
conv45/Conv2DConv2Drelu44/Relu:activations:0$conv45/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
l
bn46/ReadVariableOpReadVariableOpbn46_readvariableop_resource*
_output_shapes
:@*
dtype0p
bn46/ReadVariableOp_1ReadVariableOpbn46_readvariableop_1_resource*
_output_shapes
:@*
dtype0О
$bn46/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn46_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&bn46/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn46_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╠
bn46/FusedBatchNormV3FusedBatchNormV3conv45/Conv2D:output:0bn46/ReadVariableOp:value:0bn46/ReadVariableOp_1:value:0,bn46/FusedBatchNormV3/ReadVariableOp:value:0.bn46/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:─
bn46/AssignNewValueAssignVariableOp-bn46_fusedbatchnormv3_readvariableop_resource"bn46/FusedBatchNormV3:batch_mean:0%^bn46/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0╬
bn46/AssignNewValue_1AssignVariableOp/bn46_fusedbatchnormv3_readvariableop_1_resource&bn46/FusedBatchNormV3:batch_variance:0'^bn46/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0z
relu47/ReluRelubn46/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @К
conv48/Conv2D/ReadVariableOpReadVariableOp%conv48_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0╠
conv48/Conv2DConv2Drelu47/Relu:activations:0$conv48/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
Б
subtract49/subSubinputsconv48/Conv2D:output:0*
T0*A
_output_shapes/
-:+                           {
IdentityIdentitysubtract49/sub:z:0^NoOp*
T0*A
_output_shapes/
-:+                           °
NoOpNoOp^bn10/AssignNewValue^bn10/AssignNewValue_1%^bn10/FusedBatchNormV3/ReadVariableOp'^bn10/FusedBatchNormV3/ReadVariableOp_1^bn10/ReadVariableOp^bn10/ReadVariableOp_1^bn13/AssignNewValue^bn13/AssignNewValue_1%^bn13/FusedBatchNormV3/ReadVariableOp'^bn13/FusedBatchNormV3/ReadVariableOp_1^bn13/ReadVariableOp^bn13/ReadVariableOp_1^bn16/AssignNewValue^bn16/AssignNewValue_1%^bn16/FusedBatchNormV3/ReadVariableOp'^bn16/FusedBatchNormV3/ReadVariableOp_1^bn16/ReadVariableOp^bn16/ReadVariableOp_1^bn19/AssignNewValue^bn19/AssignNewValue_1%^bn19/FusedBatchNormV3/ReadVariableOp'^bn19/FusedBatchNormV3/ReadVariableOp_1^bn19/ReadVariableOp^bn19/ReadVariableOp_1^bn22/AssignNewValue^bn22/AssignNewValue_1%^bn22/FusedBatchNormV3/ReadVariableOp'^bn22/FusedBatchNormV3/ReadVariableOp_1^bn22/ReadVariableOp^bn22/ReadVariableOp_1^bn25/AssignNewValue^bn25/AssignNewValue_1%^bn25/FusedBatchNormV3/ReadVariableOp'^bn25/FusedBatchNormV3/ReadVariableOp_1^bn25/ReadVariableOp^bn25/ReadVariableOp_1^bn28/AssignNewValue^bn28/AssignNewValue_1%^bn28/FusedBatchNormV3/ReadVariableOp'^bn28/FusedBatchNormV3/ReadVariableOp_1^bn28/ReadVariableOp^bn28/ReadVariableOp_1^bn31/AssignNewValue^bn31/AssignNewValue_1%^bn31/FusedBatchNormV3/ReadVariableOp'^bn31/FusedBatchNormV3/ReadVariableOp_1^bn31/ReadVariableOp^bn31/ReadVariableOp_1^bn34/AssignNewValue^bn34/AssignNewValue_1%^bn34/FusedBatchNormV3/ReadVariableOp'^bn34/FusedBatchNormV3/ReadVariableOp_1^bn34/ReadVariableOp^bn34/ReadVariableOp_1^bn37/AssignNewValue^bn37/AssignNewValue_1%^bn37/FusedBatchNormV3/ReadVariableOp'^bn37/FusedBatchNormV3/ReadVariableOp_1^bn37/ReadVariableOp^bn37/ReadVariableOp_1^bn4/AssignNewValue^bn4/AssignNewValue_1$^bn4/FusedBatchNormV3/ReadVariableOp&^bn4/FusedBatchNormV3/ReadVariableOp_1^bn4/ReadVariableOp^bn4/ReadVariableOp_1^bn40/AssignNewValue^bn40/AssignNewValue_1%^bn40/FusedBatchNormV3/ReadVariableOp'^bn40/FusedBatchNormV3/ReadVariableOp_1^bn40/ReadVariableOp^bn40/ReadVariableOp_1^bn43/AssignNewValue^bn43/AssignNewValue_1%^bn43/FusedBatchNormV3/ReadVariableOp'^bn43/FusedBatchNormV3/ReadVariableOp_1^bn43/ReadVariableOp^bn43/ReadVariableOp_1^bn46/AssignNewValue^bn46/AssignNewValue_1%^bn46/FusedBatchNormV3/ReadVariableOp'^bn46/FusedBatchNormV3/ReadVariableOp_1^bn46/ReadVariableOp^bn46/ReadVariableOp_1^bn7/AssignNewValue^bn7/AssignNewValue_1$^bn7/FusedBatchNormV3/ReadVariableOp&^bn7/FusedBatchNormV3/ReadVariableOp_1^bn7/ReadVariableOp^bn7/ReadVariableOp_1^conv1/BiasAdd/ReadVariableOp^conv1/Conv2D/ReadVariableOp^conv12/Conv2D/ReadVariableOp^conv15/Conv2D/ReadVariableOp^conv18/Conv2D/ReadVariableOp^conv21/Conv2D/ReadVariableOp^conv24/Conv2D/ReadVariableOp^conv27/Conv2D/ReadVariableOp^conv3/Conv2D/ReadVariableOp^conv30/Conv2D/ReadVariableOp^conv33/Conv2D/ReadVariableOp^conv36/Conv2D/ReadVariableOp^conv39/Conv2D/ReadVariableOp^conv42/Conv2D/ReadVariableOp^conv45/Conv2D/ReadVariableOp^conv48/Conv2D/ReadVariableOp^conv6/Conv2D/ReadVariableOp^conv9/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*▐
_input_shapes╠
╔:+                           : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
bn10/AssignNewValuebn10/AssignNewValue2.
bn10/AssignNewValue_1bn10/AssignNewValue_12L
$bn10/FusedBatchNormV3/ReadVariableOp$bn10/FusedBatchNormV3/ReadVariableOp2P
&bn10/FusedBatchNormV3/ReadVariableOp_1&bn10/FusedBatchNormV3/ReadVariableOp_12*
bn10/ReadVariableOpbn10/ReadVariableOp2.
bn10/ReadVariableOp_1bn10/ReadVariableOp_12*
bn13/AssignNewValuebn13/AssignNewValue2.
bn13/AssignNewValue_1bn13/AssignNewValue_12L
$bn13/FusedBatchNormV3/ReadVariableOp$bn13/FusedBatchNormV3/ReadVariableOp2P
&bn13/FusedBatchNormV3/ReadVariableOp_1&bn13/FusedBatchNormV3/ReadVariableOp_12*
bn13/ReadVariableOpbn13/ReadVariableOp2.
bn13/ReadVariableOp_1bn13/ReadVariableOp_12*
bn16/AssignNewValuebn16/AssignNewValue2.
bn16/AssignNewValue_1bn16/AssignNewValue_12L
$bn16/FusedBatchNormV3/ReadVariableOp$bn16/FusedBatchNormV3/ReadVariableOp2P
&bn16/FusedBatchNormV3/ReadVariableOp_1&bn16/FusedBatchNormV3/ReadVariableOp_12*
bn16/ReadVariableOpbn16/ReadVariableOp2.
bn16/ReadVariableOp_1bn16/ReadVariableOp_12*
bn19/AssignNewValuebn19/AssignNewValue2.
bn19/AssignNewValue_1bn19/AssignNewValue_12L
$bn19/FusedBatchNormV3/ReadVariableOp$bn19/FusedBatchNormV3/ReadVariableOp2P
&bn19/FusedBatchNormV3/ReadVariableOp_1&bn19/FusedBatchNormV3/ReadVariableOp_12*
bn19/ReadVariableOpbn19/ReadVariableOp2.
bn19/ReadVariableOp_1bn19/ReadVariableOp_12*
bn22/AssignNewValuebn22/AssignNewValue2.
bn22/AssignNewValue_1bn22/AssignNewValue_12L
$bn22/FusedBatchNormV3/ReadVariableOp$bn22/FusedBatchNormV3/ReadVariableOp2P
&bn22/FusedBatchNormV3/ReadVariableOp_1&bn22/FusedBatchNormV3/ReadVariableOp_12*
bn22/ReadVariableOpbn22/ReadVariableOp2.
bn22/ReadVariableOp_1bn22/ReadVariableOp_12*
bn25/AssignNewValuebn25/AssignNewValue2.
bn25/AssignNewValue_1bn25/AssignNewValue_12L
$bn25/FusedBatchNormV3/ReadVariableOp$bn25/FusedBatchNormV3/ReadVariableOp2P
&bn25/FusedBatchNormV3/ReadVariableOp_1&bn25/FusedBatchNormV3/ReadVariableOp_12*
bn25/ReadVariableOpbn25/ReadVariableOp2.
bn25/ReadVariableOp_1bn25/ReadVariableOp_12*
bn28/AssignNewValuebn28/AssignNewValue2.
bn28/AssignNewValue_1bn28/AssignNewValue_12L
$bn28/FusedBatchNormV3/ReadVariableOp$bn28/FusedBatchNormV3/ReadVariableOp2P
&bn28/FusedBatchNormV3/ReadVariableOp_1&bn28/FusedBatchNormV3/ReadVariableOp_12*
bn28/ReadVariableOpbn28/ReadVariableOp2.
bn28/ReadVariableOp_1bn28/ReadVariableOp_12*
bn31/AssignNewValuebn31/AssignNewValue2.
bn31/AssignNewValue_1bn31/AssignNewValue_12L
$bn31/FusedBatchNormV3/ReadVariableOp$bn31/FusedBatchNormV3/ReadVariableOp2P
&bn31/FusedBatchNormV3/ReadVariableOp_1&bn31/FusedBatchNormV3/ReadVariableOp_12*
bn31/ReadVariableOpbn31/ReadVariableOp2.
bn31/ReadVariableOp_1bn31/ReadVariableOp_12*
bn34/AssignNewValuebn34/AssignNewValue2.
bn34/AssignNewValue_1bn34/AssignNewValue_12L
$bn34/FusedBatchNormV3/ReadVariableOp$bn34/FusedBatchNormV3/ReadVariableOp2P
&bn34/FusedBatchNormV3/ReadVariableOp_1&bn34/FusedBatchNormV3/ReadVariableOp_12*
bn34/ReadVariableOpbn34/ReadVariableOp2.
bn34/ReadVariableOp_1bn34/ReadVariableOp_12*
bn37/AssignNewValuebn37/AssignNewValue2.
bn37/AssignNewValue_1bn37/AssignNewValue_12L
$bn37/FusedBatchNormV3/ReadVariableOp$bn37/FusedBatchNormV3/ReadVariableOp2P
&bn37/FusedBatchNormV3/ReadVariableOp_1&bn37/FusedBatchNormV3/ReadVariableOp_12*
bn37/ReadVariableOpbn37/ReadVariableOp2.
bn37/ReadVariableOp_1bn37/ReadVariableOp_12(
bn4/AssignNewValuebn4/AssignNewValue2,
bn4/AssignNewValue_1bn4/AssignNewValue_12J
#bn4/FusedBatchNormV3/ReadVariableOp#bn4/FusedBatchNormV3/ReadVariableOp2N
%bn4/FusedBatchNormV3/ReadVariableOp_1%bn4/FusedBatchNormV3/ReadVariableOp_12(
bn4/ReadVariableOpbn4/ReadVariableOp2,
bn4/ReadVariableOp_1bn4/ReadVariableOp_12*
bn40/AssignNewValuebn40/AssignNewValue2.
bn40/AssignNewValue_1bn40/AssignNewValue_12L
$bn40/FusedBatchNormV3/ReadVariableOp$bn40/FusedBatchNormV3/ReadVariableOp2P
&bn40/FusedBatchNormV3/ReadVariableOp_1&bn40/FusedBatchNormV3/ReadVariableOp_12*
bn40/ReadVariableOpbn40/ReadVariableOp2.
bn40/ReadVariableOp_1bn40/ReadVariableOp_12*
bn43/AssignNewValuebn43/AssignNewValue2.
bn43/AssignNewValue_1bn43/AssignNewValue_12L
$bn43/FusedBatchNormV3/ReadVariableOp$bn43/FusedBatchNormV3/ReadVariableOp2P
&bn43/FusedBatchNormV3/ReadVariableOp_1&bn43/FusedBatchNormV3/ReadVariableOp_12*
bn43/ReadVariableOpbn43/ReadVariableOp2.
bn43/ReadVariableOp_1bn43/ReadVariableOp_12*
bn46/AssignNewValuebn46/AssignNewValue2.
bn46/AssignNewValue_1bn46/AssignNewValue_12L
$bn46/FusedBatchNormV3/ReadVariableOp$bn46/FusedBatchNormV3/ReadVariableOp2P
&bn46/FusedBatchNormV3/ReadVariableOp_1&bn46/FusedBatchNormV3/ReadVariableOp_12*
bn46/ReadVariableOpbn46/ReadVariableOp2.
bn46/ReadVariableOp_1bn46/ReadVariableOp_12(
bn7/AssignNewValuebn7/AssignNewValue2,
bn7/AssignNewValue_1bn7/AssignNewValue_12J
#bn7/FusedBatchNormV3/ReadVariableOp#bn7/FusedBatchNormV3/ReadVariableOp2N
%bn7/FusedBatchNormV3/ReadVariableOp_1%bn7/FusedBatchNormV3/ReadVariableOp_12(
bn7/ReadVariableOpbn7/ReadVariableOp2,
bn7/ReadVariableOp_1bn7/ReadVariableOp_12<
conv1/BiasAdd/ReadVariableOpconv1/BiasAdd/ReadVariableOp2:
conv1/Conv2D/ReadVariableOpconv1/Conv2D/ReadVariableOp2<
conv12/Conv2D/ReadVariableOpconv12/Conv2D/ReadVariableOp2<
conv15/Conv2D/ReadVariableOpconv15/Conv2D/ReadVariableOp2<
conv18/Conv2D/ReadVariableOpconv18/Conv2D/ReadVariableOp2<
conv21/Conv2D/ReadVariableOpconv21/Conv2D/ReadVariableOp2<
conv24/Conv2D/ReadVariableOpconv24/Conv2D/ReadVariableOp2<
conv27/Conv2D/ReadVariableOpconv27/Conv2D/ReadVariableOp2:
conv3/Conv2D/ReadVariableOpconv3/Conv2D/ReadVariableOp2<
conv30/Conv2D/ReadVariableOpconv30/Conv2D/ReadVariableOp2<
conv33/Conv2D/ReadVariableOpconv33/Conv2D/ReadVariableOp2<
conv36/Conv2D/ReadVariableOpconv36/Conv2D/ReadVariableOp2<
conv39/Conv2D/ReadVariableOpconv39/Conv2D/ReadVariableOp2<
conv42/Conv2D/ReadVariableOpconv42/Conv2D/ReadVariableOp2<
conv45/Conv2D/ReadVariableOpconv45/Conv2D/ReadVariableOp2<
conv48/Conv2D/ReadVariableOpconv48/Conv2D/ReadVariableOp2:
conv6/Conv2D/ReadVariableOpconv6/Conv2D/ReadVariableOp2:
conv9/Conv2D/ReadVariableOpconv9/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
А
A
%__inference_relu29_layer_call_fn_6128

inputs
identity╚
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu29_layer_call_and_return_conditional_losses_2581z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
бЪ
ц5
?__inference_model_layer_call_and_return_conditional_losses_4882

inputs>
$conv1_conv2d_readvariableop_resource:@3
%conv1_biasadd_readvariableop_resource:@>
$conv3_conv2d_readvariableop_resource:@@)
bn4_readvariableop_resource:@+
bn4_readvariableop_1_resource:@:
,bn4_fusedbatchnormv3_readvariableop_resource:@<
.bn4_fusedbatchnormv3_readvariableop_1_resource:@>
$conv6_conv2d_readvariableop_resource:@@)
bn7_readvariableop_resource:@+
bn7_readvariableop_1_resource:@:
,bn7_fusedbatchnormv3_readvariableop_resource:@<
.bn7_fusedbatchnormv3_readvariableop_1_resource:@>
$conv9_conv2d_readvariableop_resource:@@*
bn10_readvariableop_resource:@,
bn10_readvariableop_1_resource:@;
-bn10_fusedbatchnormv3_readvariableop_resource:@=
/bn10_fusedbatchnormv3_readvariableop_1_resource:@?
%conv12_conv2d_readvariableop_resource:@@*
bn13_readvariableop_resource:@,
bn13_readvariableop_1_resource:@;
-bn13_fusedbatchnormv3_readvariableop_resource:@=
/bn13_fusedbatchnormv3_readvariableop_1_resource:@?
%conv15_conv2d_readvariableop_resource:@@*
bn16_readvariableop_resource:@,
bn16_readvariableop_1_resource:@;
-bn16_fusedbatchnormv3_readvariableop_resource:@=
/bn16_fusedbatchnormv3_readvariableop_1_resource:@?
%conv18_conv2d_readvariableop_resource:@@*
bn19_readvariableop_resource:@,
bn19_readvariableop_1_resource:@;
-bn19_fusedbatchnormv3_readvariableop_resource:@=
/bn19_fusedbatchnormv3_readvariableop_1_resource:@?
%conv21_conv2d_readvariableop_resource:@@*
bn22_readvariableop_resource:@,
bn22_readvariableop_1_resource:@;
-bn22_fusedbatchnormv3_readvariableop_resource:@=
/bn22_fusedbatchnormv3_readvariableop_1_resource:@?
%conv24_conv2d_readvariableop_resource:@@*
bn25_readvariableop_resource:@,
bn25_readvariableop_1_resource:@;
-bn25_fusedbatchnormv3_readvariableop_resource:@=
/bn25_fusedbatchnormv3_readvariableop_1_resource:@?
%conv27_conv2d_readvariableop_resource:@@*
bn28_readvariableop_resource:@,
bn28_readvariableop_1_resource:@;
-bn28_fusedbatchnormv3_readvariableop_resource:@=
/bn28_fusedbatchnormv3_readvariableop_1_resource:@?
%conv30_conv2d_readvariableop_resource:@@*
bn31_readvariableop_resource:@,
bn31_readvariableop_1_resource:@;
-bn31_fusedbatchnormv3_readvariableop_resource:@=
/bn31_fusedbatchnormv3_readvariableop_1_resource:@?
%conv33_conv2d_readvariableop_resource:@@*
bn34_readvariableop_resource:@,
bn34_readvariableop_1_resource:@;
-bn34_fusedbatchnormv3_readvariableop_resource:@=
/bn34_fusedbatchnormv3_readvariableop_1_resource:@?
%conv36_conv2d_readvariableop_resource:@@*
bn37_readvariableop_resource:@,
bn37_readvariableop_1_resource:@;
-bn37_fusedbatchnormv3_readvariableop_resource:@=
/bn37_fusedbatchnormv3_readvariableop_1_resource:@?
%conv39_conv2d_readvariableop_resource:@@*
bn40_readvariableop_resource:@,
bn40_readvariableop_1_resource:@;
-bn40_fusedbatchnormv3_readvariableop_resource:@=
/bn40_fusedbatchnormv3_readvariableop_1_resource:@?
%conv42_conv2d_readvariableop_resource:@@*
bn43_readvariableop_resource:@,
bn43_readvariableop_1_resource:@;
-bn43_fusedbatchnormv3_readvariableop_resource:@=
/bn43_fusedbatchnormv3_readvariableop_1_resource:@?
%conv45_conv2d_readvariableop_resource:@@*
bn46_readvariableop_resource:@,
bn46_readvariableop_1_resource:@;
-bn46_fusedbatchnormv3_readvariableop_resource:@=
/bn46_fusedbatchnormv3_readvariableop_1_resource:@?
%conv48_conv2d_readvariableop_resource:@
identityИв$bn10/FusedBatchNormV3/ReadVariableOpв&bn10/FusedBatchNormV3/ReadVariableOp_1вbn10/ReadVariableOpвbn10/ReadVariableOp_1в$bn13/FusedBatchNormV3/ReadVariableOpв&bn13/FusedBatchNormV3/ReadVariableOp_1вbn13/ReadVariableOpвbn13/ReadVariableOp_1в$bn16/FusedBatchNormV3/ReadVariableOpв&bn16/FusedBatchNormV3/ReadVariableOp_1вbn16/ReadVariableOpвbn16/ReadVariableOp_1в$bn19/FusedBatchNormV3/ReadVariableOpв&bn19/FusedBatchNormV3/ReadVariableOp_1вbn19/ReadVariableOpвbn19/ReadVariableOp_1в$bn22/FusedBatchNormV3/ReadVariableOpв&bn22/FusedBatchNormV3/ReadVariableOp_1вbn22/ReadVariableOpвbn22/ReadVariableOp_1в$bn25/FusedBatchNormV3/ReadVariableOpв&bn25/FusedBatchNormV3/ReadVariableOp_1вbn25/ReadVariableOpвbn25/ReadVariableOp_1в$bn28/FusedBatchNormV3/ReadVariableOpв&bn28/FusedBatchNormV3/ReadVariableOp_1вbn28/ReadVariableOpвbn28/ReadVariableOp_1в$bn31/FusedBatchNormV3/ReadVariableOpв&bn31/FusedBatchNormV3/ReadVariableOp_1вbn31/ReadVariableOpвbn31/ReadVariableOp_1в$bn34/FusedBatchNormV3/ReadVariableOpв&bn34/FusedBatchNormV3/ReadVariableOp_1вbn34/ReadVariableOpвbn34/ReadVariableOp_1в$bn37/FusedBatchNormV3/ReadVariableOpв&bn37/FusedBatchNormV3/ReadVariableOp_1вbn37/ReadVariableOpвbn37/ReadVariableOp_1в#bn4/FusedBatchNormV3/ReadVariableOpв%bn4/FusedBatchNormV3/ReadVariableOp_1вbn4/ReadVariableOpвbn4/ReadVariableOp_1в$bn40/FusedBatchNormV3/ReadVariableOpв&bn40/FusedBatchNormV3/ReadVariableOp_1вbn40/ReadVariableOpвbn40/ReadVariableOp_1в$bn43/FusedBatchNormV3/ReadVariableOpв&bn43/FusedBatchNormV3/ReadVariableOp_1вbn43/ReadVariableOpвbn43/ReadVariableOp_1в$bn46/FusedBatchNormV3/ReadVariableOpв&bn46/FusedBatchNormV3/ReadVariableOp_1вbn46/ReadVariableOpвbn46/ReadVariableOp_1в#bn7/FusedBatchNormV3/ReadVariableOpв%bn7/FusedBatchNormV3/ReadVariableOp_1вbn7/ReadVariableOpвbn7/ReadVariableOp_1вconv1/BiasAdd/ReadVariableOpвconv1/Conv2D/ReadVariableOpвconv12/Conv2D/ReadVariableOpвconv15/Conv2D/ReadVariableOpвconv18/Conv2D/ReadVariableOpвconv21/Conv2D/ReadVariableOpвconv24/Conv2D/ReadVariableOpвconv27/Conv2D/ReadVariableOpвconv3/Conv2D/ReadVariableOpвconv30/Conv2D/ReadVariableOpвconv33/Conv2D/ReadVariableOpвconv36/Conv2D/ReadVariableOpвconv39/Conv2D/ReadVariableOpвconv42/Conv2D/ReadVariableOpвconv45/Conv2D/ReadVariableOpвconv48/Conv2D/ReadVariableOpвconv6/Conv2D/ReadVariableOpвconv9/Conv2D/ReadVariableOpИ
conv1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0╖
conv1/Conv2DConv2Dinputs#conv1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
~
conv1/BiasAdd/ReadVariableOpReadVariableOp%conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0б
conv1/BiasAddBiasAddconv1/Conv2D:output:0$conv1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @v

relu2/ReluReluconv1/BiasAdd:output:0*
T0*A
_output_shapes/
-:+                           @И
conv3/Conv2D/ReadVariableOpReadVariableOp$conv3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╔
conv3/Conv2DConv2Drelu2/Relu:activations:0#conv3/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
j
bn4/ReadVariableOpReadVariableOpbn4_readvariableop_resource*
_output_shapes
:@*
dtype0n
bn4/ReadVariableOp_1ReadVariableOpbn4_readvariableop_1_resource*
_output_shapes
:@*
dtype0М
#bn4/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Р
%bn4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0┘
bn4/FusedBatchNormV3FusedBatchNormV3conv3/Conv2D:output:0bn4/ReadVariableOp:value:0bn4/ReadVariableOp_1:value:0+bn4/FusedBatchNormV3/ReadVariableOp:value:0-bn4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( x

relu5/ReluRelubn4/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @И
conv6/Conv2D/ReadVariableOpReadVariableOp$conv6_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╔
conv6/Conv2DConv2Drelu5/Relu:activations:0#conv6/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
j
bn7/ReadVariableOpReadVariableOpbn7_readvariableop_resource*
_output_shapes
:@*
dtype0n
bn7/ReadVariableOp_1ReadVariableOpbn7_readvariableop_1_resource*
_output_shapes
:@*
dtype0М
#bn7/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Р
%bn7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0┘
bn7/FusedBatchNormV3FusedBatchNormV3conv6/Conv2D:output:0bn7/ReadVariableOp:value:0bn7/ReadVariableOp_1:value:0+bn7/FusedBatchNormV3/ReadVariableOp:value:0-bn7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( x

relu8/ReluRelubn7/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @И
conv9/Conv2D/ReadVariableOpReadVariableOp$conv9_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╔
conv9/Conv2DConv2Drelu8/Relu:activations:0#conv9/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
l
bn10/ReadVariableOpReadVariableOpbn10_readvariableop_resource*
_output_shapes
:@*
dtype0p
bn10/ReadVariableOp_1ReadVariableOpbn10_readvariableop_1_resource*
_output_shapes
:@*
dtype0О
$bn10/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn10_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&bn10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0▐
bn10/FusedBatchNormV3FusedBatchNormV3conv9/Conv2D:output:0bn10/ReadVariableOp:value:0bn10/ReadVariableOp_1:value:0,bn10/FusedBatchNormV3/ReadVariableOp:value:0.bn10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( z
relu11/ReluRelubn10/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @К
conv12/Conv2D/ReadVariableOpReadVariableOp%conv12_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╠
conv12/Conv2DConv2Drelu11/Relu:activations:0$conv12/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
l
bn13/ReadVariableOpReadVariableOpbn13_readvariableop_resource*
_output_shapes
:@*
dtype0p
bn13/ReadVariableOp_1ReadVariableOpbn13_readvariableop_1_resource*
_output_shapes
:@*
dtype0О
$bn13/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn13_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&bn13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0▀
bn13/FusedBatchNormV3FusedBatchNormV3conv12/Conv2D:output:0bn13/ReadVariableOp:value:0bn13/ReadVariableOp_1:value:0,bn13/FusedBatchNormV3/ReadVariableOp:value:0.bn13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( z
relu14/ReluRelubn13/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @К
conv15/Conv2D/ReadVariableOpReadVariableOp%conv15_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╠
conv15/Conv2DConv2Drelu14/Relu:activations:0$conv15/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
l
bn16/ReadVariableOpReadVariableOpbn16_readvariableop_resource*
_output_shapes
:@*
dtype0p
bn16/ReadVariableOp_1ReadVariableOpbn16_readvariableop_1_resource*
_output_shapes
:@*
dtype0О
$bn16/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn16_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&bn16/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn16_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0▀
bn16/FusedBatchNormV3FusedBatchNormV3conv15/Conv2D:output:0bn16/ReadVariableOp:value:0bn16/ReadVariableOp_1:value:0,bn16/FusedBatchNormV3/ReadVariableOp:value:0.bn16/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( z
relu17/ReluRelubn16/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @К
conv18/Conv2D/ReadVariableOpReadVariableOp%conv18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╠
conv18/Conv2DConv2Drelu17/Relu:activations:0$conv18/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
l
bn19/ReadVariableOpReadVariableOpbn19_readvariableop_resource*
_output_shapes
:@*
dtype0p
bn19/ReadVariableOp_1ReadVariableOpbn19_readvariableop_1_resource*
_output_shapes
:@*
dtype0О
$bn19/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn19_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&bn19/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn19_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0▀
bn19/FusedBatchNormV3FusedBatchNormV3conv18/Conv2D:output:0bn19/ReadVariableOp:value:0bn19/ReadVariableOp_1:value:0,bn19/FusedBatchNormV3/ReadVariableOp:value:0.bn19/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( z
relu20/ReluRelubn19/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @К
conv21/Conv2D/ReadVariableOpReadVariableOp%conv21_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╠
conv21/Conv2DConv2Drelu20/Relu:activations:0$conv21/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
l
bn22/ReadVariableOpReadVariableOpbn22_readvariableop_resource*
_output_shapes
:@*
dtype0p
bn22/ReadVariableOp_1ReadVariableOpbn22_readvariableop_1_resource*
_output_shapes
:@*
dtype0О
$bn22/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn22_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&bn22/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn22_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0▀
bn22/FusedBatchNormV3FusedBatchNormV3conv21/Conv2D:output:0bn22/ReadVariableOp:value:0bn22/ReadVariableOp_1:value:0,bn22/FusedBatchNormV3/ReadVariableOp:value:0.bn22/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( z
relu23/ReluRelubn22/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @К
conv24/Conv2D/ReadVariableOpReadVariableOp%conv24_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╠
conv24/Conv2DConv2Drelu23/Relu:activations:0$conv24/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
l
bn25/ReadVariableOpReadVariableOpbn25_readvariableop_resource*
_output_shapes
:@*
dtype0p
bn25/ReadVariableOp_1ReadVariableOpbn25_readvariableop_1_resource*
_output_shapes
:@*
dtype0О
$bn25/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn25_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&bn25/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn25_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0▀
bn25/FusedBatchNormV3FusedBatchNormV3conv24/Conv2D:output:0bn25/ReadVariableOp:value:0bn25/ReadVariableOp_1:value:0,bn25/FusedBatchNormV3/ReadVariableOp:value:0.bn25/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( z
relu26/ReluRelubn25/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @К
conv27/Conv2D/ReadVariableOpReadVariableOp%conv27_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╠
conv27/Conv2DConv2Drelu26/Relu:activations:0$conv27/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
l
bn28/ReadVariableOpReadVariableOpbn28_readvariableop_resource*
_output_shapes
:@*
dtype0p
bn28/ReadVariableOp_1ReadVariableOpbn28_readvariableop_1_resource*
_output_shapes
:@*
dtype0О
$bn28/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn28_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&bn28/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn28_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0▀
bn28/FusedBatchNormV3FusedBatchNormV3conv27/Conv2D:output:0bn28/ReadVariableOp:value:0bn28/ReadVariableOp_1:value:0,bn28/FusedBatchNormV3/ReadVariableOp:value:0.bn28/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( z
relu29/ReluRelubn28/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @К
conv30/Conv2D/ReadVariableOpReadVariableOp%conv30_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╠
conv30/Conv2DConv2Drelu29/Relu:activations:0$conv30/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
l
bn31/ReadVariableOpReadVariableOpbn31_readvariableop_resource*
_output_shapes
:@*
dtype0p
bn31/ReadVariableOp_1ReadVariableOpbn31_readvariableop_1_resource*
_output_shapes
:@*
dtype0О
$bn31/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn31_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&bn31/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn31_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0▀
bn31/FusedBatchNormV3FusedBatchNormV3conv30/Conv2D:output:0bn31/ReadVariableOp:value:0bn31/ReadVariableOp_1:value:0,bn31/FusedBatchNormV3/ReadVariableOp:value:0.bn31/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( z
relu32/ReluRelubn31/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @К
conv33/Conv2D/ReadVariableOpReadVariableOp%conv33_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╠
conv33/Conv2DConv2Drelu32/Relu:activations:0$conv33/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
l
bn34/ReadVariableOpReadVariableOpbn34_readvariableop_resource*
_output_shapes
:@*
dtype0p
bn34/ReadVariableOp_1ReadVariableOpbn34_readvariableop_1_resource*
_output_shapes
:@*
dtype0О
$bn34/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn34_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&bn34/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn34_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0▀
bn34/FusedBatchNormV3FusedBatchNormV3conv33/Conv2D:output:0bn34/ReadVariableOp:value:0bn34/ReadVariableOp_1:value:0,bn34/FusedBatchNormV3/ReadVariableOp:value:0.bn34/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( z
relu35/ReluRelubn34/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @К
conv36/Conv2D/ReadVariableOpReadVariableOp%conv36_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╠
conv36/Conv2DConv2Drelu35/Relu:activations:0$conv36/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
l
bn37/ReadVariableOpReadVariableOpbn37_readvariableop_resource*
_output_shapes
:@*
dtype0p
bn37/ReadVariableOp_1ReadVariableOpbn37_readvariableop_1_resource*
_output_shapes
:@*
dtype0О
$bn37/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn37_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&bn37/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn37_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0▀
bn37/FusedBatchNormV3FusedBatchNormV3conv36/Conv2D:output:0bn37/ReadVariableOp:value:0bn37/ReadVariableOp_1:value:0,bn37/FusedBatchNormV3/ReadVariableOp:value:0.bn37/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( z
relu38/ReluRelubn37/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @К
conv39/Conv2D/ReadVariableOpReadVariableOp%conv39_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╠
conv39/Conv2DConv2Drelu38/Relu:activations:0$conv39/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
l
bn40/ReadVariableOpReadVariableOpbn40_readvariableop_resource*
_output_shapes
:@*
dtype0p
bn40/ReadVariableOp_1ReadVariableOpbn40_readvariableop_1_resource*
_output_shapes
:@*
dtype0О
$bn40/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn40_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&bn40/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn40_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0▀
bn40/FusedBatchNormV3FusedBatchNormV3conv39/Conv2D:output:0bn40/ReadVariableOp:value:0bn40/ReadVariableOp_1:value:0,bn40/FusedBatchNormV3/ReadVariableOp:value:0.bn40/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( z
relu41/ReluRelubn40/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @К
conv42/Conv2D/ReadVariableOpReadVariableOp%conv42_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╠
conv42/Conv2DConv2Drelu41/Relu:activations:0$conv42/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
l
bn43/ReadVariableOpReadVariableOpbn43_readvariableop_resource*
_output_shapes
:@*
dtype0p
bn43/ReadVariableOp_1ReadVariableOpbn43_readvariableop_1_resource*
_output_shapes
:@*
dtype0О
$bn43/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn43_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&bn43/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn43_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0▀
bn43/FusedBatchNormV3FusedBatchNormV3conv42/Conv2D:output:0bn43/ReadVariableOp:value:0bn43/ReadVariableOp_1:value:0,bn43/FusedBatchNormV3/ReadVariableOp:value:0.bn43/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( z
relu44/ReluRelubn43/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @К
conv45/Conv2D/ReadVariableOpReadVariableOp%conv45_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╠
conv45/Conv2DConv2Drelu44/Relu:activations:0$conv45/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
l
bn46/ReadVariableOpReadVariableOpbn46_readvariableop_resource*
_output_shapes
:@*
dtype0p
bn46/ReadVariableOp_1ReadVariableOpbn46_readvariableop_1_resource*
_output_shapes
:@*
dtype0О
$bn46/FusedBatchNormV3/ReadVariableOpReadVariableOp-bn46_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Т
&bn46/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp/bn46_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0▀
bn46/FusedBatchNormV3FusedBatchNormV3conv45/Conv2D:output:0bn46/ReadVariableOp:value:0bn46/ReadVariableOp_1:value:0,bn46/FusedBatchNormV3/ReadVariableOp:value:0.bn46/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( z
relu47/ReluRelubn46/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                           @К
conv48/Conv2D/ReadVariableOpReadVariableOp%conv48_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0╠
conv48/Conv2DConv2Drelu47/Relu:activations:0$conv48/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
Б
subtract49/subSubinputsconv48/Conv2D:output:0*
T0*A
_output_shapes/
-:+                           {
IdentityIdentitysubtract49/sub:z:0^NoOp*
T0*A
_output_shapes/
-:+                           ╩
NoOpNoOp%^bn10/FusedBatchNormV3/ReadVariableOp'^bn10/FusedBatchNormV3/ReadVariableOp_1^bn10/ReadVariableOp^bn10/ReadVariableOp_1%^bn13/FusedBatchNormV3/ReadVariableOp'^bn13/FusedBatchNormV3/ReadVariableOp_1^bn13/ReadVariableOp^bn13/ReadVariableOp_1%^bn16/FusedBatchNormV3/ReadVariableOp'^bn16/FusedBatchNormV3/ReadVariableOp_1^bn16/ReadVariableOp^bn16/ReadVariableOp_1%^bn19/FusedBatchNormV3/ReadVariableOp'^bn19/FusedBatchNormV3/ReadVariableOp_1^bn19/ReadVariableOp^bn19/ReadVariableOp_1%^bn22/FusedBatchNormV3/ReadVariableOp'^bn22/FusedBatchNormV3/ReadVariableOp_1^bn22/ReadVariableOp^bn22/ReadVariableOp_1%^bn25/FusedBatchNormV3/ReadVariableOp'^bn25/FusedBatchNormV3/ReadVariableOp_1^bn25/ReadVariableOp^bn25/ReadVariableOp_1%^bn28/FusedBatchNormV3/ReadVariableOp'^bn28/FusedBatchNormV3/ReadVariableOp_1^bn28/ReadVariableOp^bn28/ReadVariableOp_1%^bn31/FusedBatchNormV3/ReadVariableOp'^bn31/FusedBatchNormV3/ReadVariableOp_1^bn31/ReadVariableOp^bn31/ReadVariableOp_1%^bn34/FusedBatchNormV3/ReadVariableOp'^bn34/FusedBatchNormV3/ReadVariableOp_1^bn34/ReadVariableOp^bn34/ReadVariableOp_1%^bn37/FusedBatchNormV3/ReadVariableOp'^bn37/FusedBatchNormV3/ReadVariableOp_1^bn37/ReadVariableOp^bn37/ReadVariableOp_1$^bn4/FusedBatchNormV3/ReadVariableOp&^bn4/FusedBatchNormV3/ReadVariableOp_1^bn4/ReadVariableOp^bn4/ReadVariableOp_1%^bn40/FusedBatchNormV3/ReadVariableOp'^bn40/FusedBatchNormV3/ReadVariableOp_1^bn40/ReadVariableOp^bn40/ReadVariableOp_1%^bn43/FusedBatchNormV3/ReadVariableOp'^bn43/FusedBatchNormV3/ReadVariableOp_1^bn43/ReadVariableOp^bn43/ReadVariableOp_1%^bn46/FusedBatchNormV3/ReadVariableOp'^bn46/FusedBatchNormV3/ReadVariableOp_1^bn46/ReadVariableOp^bn46/ReadVariableOp_1$^bn7/FusedBatchNormV3/ReadVariableOp&^bn7/FusedBatchNormV3/ReadVariableOp_1^bn7/ReadVariableOp^bn7/ReadVariableOp_1^conv1/BiasAdd/ReadVariableOp^conv1/Conv2D/ReadVariableOp^conv12/Conv2D/ReadVariableOp^conv15/Conv2D/ReadVariableOp^conv18/Conv2D/ReadVariableOp^conv21/Conv2D/ReadVariableOp^conv24/Conv2D/ReadVariableOp^conv27/Conv2D/ReadVariableOp^conv3/Conv2D/ReadVariableOp^conv30/Conv2D/ReadVariableOp^conv33/Conv2D/ReadVariableOp^conv36/Conv2D/ReadVariableOp^conv39/Conv2D/ReadVariableOp^conv42/Conv2D/ReadVariableOp^conv45/Conv2D/ReadVariableOp^conv48/Conv2D/ReadVariableOp^conv6/Conv2D/ReadVariableOp^conv9/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*▐
_input_shapes╠
╔:+                           : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$bn10/FusedBatchNormV3/ReadVariableOp$bn10/FusedBatchNormV3/ReadVariableOp2P
&bn10/FusedBatchNormV3/ReadVariableOp_1&bn10/FusedBatchNormV3/ReadVariableOp_12*
bn10/ReadVariableOpbn10/ReadVariableOp2.
bn10/ReadVariableOp_1bn10/ReadVariableOp_12L
$bn13/FusedBatchNormV3/ReadVariableOp$bn13/FusedBatchNormV3/ReadVariableOp2P
&bn13/FusedBatchNormV3/ReadVariableOp_1&bn13/FusedBatchNormV3/ReadVariableOp_12*
bn13/ReadVariableOpbn13/ReadVariableOp2.
bn13/ReadVariableOp_1bn13/ReadVariableOp_12L
$bn16/FusedBatchNormV3/ReadVariableOp$bn16/FusedBatchNormV3/ReadVariableOp2P
&bn16/FusedBatchNormV3/ReadVariableOp_1&bn16/FusedBatchNormV3/ReadVariableOp_12*
bn16/ReadVariableOpbn16/ReadVariableOp2.
bn16/ReadVariableOp_1bn16/ReadVariableOp_12L
$bn19/FusedBatchNormV3/ReadVariableOp$bn19/FusedBatchNormV3/ReadVariableOp2P
&bn19/FusedBatchNormV3/ReadVariableOp_1&bn19/FusedBatchNormV3/ReadVariableOp_12*
bn19/ReadVariableOpbn19/ReadVariableOp2.
bn19/ReadVariableOp_1bn19/ReadVariableOp_12L
$bn22/FusedBatchNormV3/ReadVariableOp$bn22/FusedBatchNormV3/ReadVariableOp2P
&bn22/FusedBatchNormV3/ReadVariableOp_1&bn22/FusedBatchNormV3/ReadVariableOp_12*
bn22/ReadVariableOpbn22/ReadVariableOp2.
bn22/ReadVariableOp_1bn22/ReadVariableOp_12L
$bn25/FusedBatchNormV3/ReadVariableOp$bn25/FusedBatchNormV3/ReadVariableOp2P
&bn25/FusedBatchNormV3/ReadVariableOp_1&bn25/FusedBatchNormV3/ReadVariableOp_12*
bn25/ReadVariableOpbn25/ReadVariableOp2.
bn25/ReadVariableOp_1bn25/ReadVariableOp_12L
$bn28/FusedBatchNormV3/ReadVariableOp$bn28/FusedBatchNormV3/ReadVariableOp2P
&bn28/FusedBatchNormV3/ReadVariableOp_1&bn28/FusedBatchNormV3/ReadVariableOp_12*
bn28/ReadVariableOpbn28/ReadVariableOp2.
bn28/ReadVariableOp_1bn28/ReadVariableOp_12L
$bn31/FusedBatchNormV3/ReadVariableOp$bn31/FusedBatchNormV3/ReadVariableOp2P
&bn31/FusedBatchNormV3/ReadVariableOp_1&bn31/FusedBatchNormV3/ReadVariableOp_12*
bn31/ReadVariableOpbn31/ReadVariableOp2.
bn31/ReadVariableOp_1bn31/ReadVariableOp_12L
$bn34/FusedBatchNormV3/ReadVariableOp$bn34/FusedBatchNormV3/ReadVariableOp2P
&bn34/FusedBatchNormV3/ReadVariableOp_1&bn34/FusedBatchNormV3/ReadVariableOp_12*
bn34/ReadVariableOpbn34/ReadVariableOp2.
bn34/ReadVariableOp_1bn34/ReadVariableOp_12L
$bn37/FusedBatchNormV3/ReadVariableOp$bn37/FusedBatchNormV3/ReadVariableOp2P
&bn37/FusedBatchNormV3/ReadVariableOp_1&bn37/FusedBatchNormV3/ReadVariableOp_12*
bn37/ReadVariableOpbn37/ReadVariableOp2.
bn37/ReadVariableOp_1bn37/ReadVariableOp_12J
#bn4/FusedBatchNormV3/ReadVariableOp#bn4/FusedBatchNormV3/ReadVariableOp2N
%bn4/FusedBatchNormV3/ReadVariableOp_1%bn4/FusedBatchNormV3/ReadVariableOp_12(
bn4/ReadVariableOpbn4/ReadVariableOp2,
bn4/ReadVariableOp_1bn4/ReadVariableOp_12L
$bn40/FusedBatchNormV3/ReadVariableOp$bn40/FusedBatchNormV3/ReadVariableOp2P
&bn40/FusedBatchNormV3/ReadVariableOp_1&bn40/FusedBatchNormV3/ReadVariableOp_12*
bn40/ReadVariableOpbn40/ReadVariableOp2.
bn40/ReadVariableOp_1bn40/ReadVariableOp_12L
$bn43/FusedBatchNormV3/ReadVariableOp$bn43/FusedBatchNormV3/ReadVariableOp2P
&bn43/FusedBatchNormV3/ReadVariableOp_1&bn43/FusedBatchNormV3/ReadVariableOp_12*
bn43/ReadVariableOpbn43/ReadVariableOp2.
bn43/ReadVariableOp_1bn43/ReadVariableOp_12L
$bn46/FusedBatchNormV3/ReadVariableOp$bn46/FusedBatchNormV3/ReadVariableOp2P
&bn46/FusedBatchNormV3/ReadVariableOp_1&bn46/FusedBatchNormV3/ReadVariableOp_12*
bn46/ReadVariableOpbn46/ReadVariableOp2.
bn46/ReadVariableOp_1bn46/ReadVariableOp_12J
#bn7/FusedBatchNormV3/ReadVariableOp#bn7/FusedBatchNormV3/ReadVariableOp2N
%bn7/FusedBatchNormV3/ReadVariableOp_1%bn7/FusedBatchNormV3/ReadVariableOp_12(
bn7/ReadVariableOpbn7/ReadVariableOp2,
bn7/ReadVariableOp_1bn7/ReadVariableOp_12<
conv1/BiasAdd/ReadVariableOpconv1/BiasAdd/ReadVariableOp2:
conv1/Conv2D/ReadVariableOpconv1/Conv2D/ReadVariableOp2<
conv12/Conv2D/ReadVariableOpconv12/Conv2D/ReadVariableOp2<
conv15/Conv2D/ReadVariableOpconv15/Conv2D/ReadVariableOp2<
conv18/Conv2D/ReadVariableOpconv18/Conv2D/ReadVariableOp2<
conv21/Conv2D/ReadVariableOpconv21/Conv2D/ReadVariableOp2<
conv24/Conv2D/ReadVariableOpconv24/Conv2D/ReadVariableOp2<
conv27/Conv2D/ReadVariableOpconv27/Conv2D/ReadVariableOp2:
conv3/Conv2D/ReadVariableOpconv3/Conv2D/ReadVariableOp2<
conv30/Conv2D/ReadVariableOpconv30/Conv2D/ReadVariableOp2<
conv33/Conv2D/ReadVariableOpconv33/Conv2D/ReadVariableOp2<
conv36/Conv2D/ReadVariableOpconv36/Conv2D/ReadVariableOp2<
conv39/Conv2D/ReadVariableOpconv39/Conv2D/ReadVariableOp2<
conv42/Conv2D/ReadVariableOpconv42/Conv2D/ReadVariableOp2<
conv45/Conv2D/ReadVariableOpconv45/Conv2D/ReadVariableOp2<
conv48/Conv2D/ReadVariableOpconv48/Conv2D/ReadVariableOp2:
conv6/Conv2D/ReadVariableOpconv6/Conv2D/ReadVariableOp2:
conv9/Conv2D/ReadVariableOpconv9/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
ю
╛
#__inference_bn37_layer_call_fn_6332

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn37_layer_call_and_return_conditional_losses_2076Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
т
▒
@__inference_conv48_layer_call_and_return_conditional_losses_6663

inputs8
conv2d_readvariableop_resource:@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           ^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
А
A
%__inference_relu44_layer_call_fn_6558

inputs
identity╚
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu44_layer_call_and_return_conditional_losses_2716z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
м
\
@__inference_relu26_layer_call_and_return_conditional_losses_6047

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
м
\
@__inference_relu35_layer_call_and_return_conditional_losses_6305

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
з
Й
>__inference_bn25_layer_call_and_return_conditional_losses_1820

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ж
И
=__inference_bn4_layer_call_and_return_conditional_losses_1372

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
т
▒
@__inference_conv24_layer_call_and_return_conditional_losses_2536

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ъ
╜
"__inference_bn4_layer_call_fn_5399

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *F
fAR?
=__inference_bn4_layer_call_and_return_conditional_losses_1403Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
л
[
?__inference_relu2_layer_call_and_return_conditional_losses_2338

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
█
p
D__inference_subtract49_layer_call_and_return_conditional_losses_6675
inputs_0
inputs_1
identityj
subSubinputs_0inputs_1*
T0*A
_output_shapes/
-:+                           i
IdentityIdentitysub:z:0*
T0*A
_output_shapes/
-:+                           "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:+                           :+                           :k g
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/0:kg
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/1
А
A
%__inference_relu38_layer_call_fn_6386

inputs
identity╚
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu38_layer_call_and_return_conditional_losses_2662z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
з
Й
>__inference_bn34_layer_call_and_return_conditional_losses_2012

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ф
н
>__inference_bn34_layer_call_and_return_conditional_losses_6295

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
А
A
%__inference_relu41_layer_call_fn_6472

inputs
identity╚
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu41_layer_call_and_return_conditional_losses_2689z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ь
╛
#__inference_bn25_layer_call_fn_6001

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn25_layer_call_and_return_conditional_losses_1851Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
А
A
%__inference_relu23_layer_call_fn_5956

inputs
identity╚
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu23_layer_call_and_return_conditional_losses_2527z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ж
Б
%__inference_conv39_layer_call_fn_6398

inputs!
unknown:@@
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv39_layer_call_and_return_conditional_losses_2671Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ь
╛
#__inference_bn16_layer_call_fn_5743

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn16_layer_call_and_return_conditional_losses_1659Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
м
\
@__inference_relu41_layer_call_and_return_conditional_losses_2689

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╖"
И
$__inference_model_layer_call_fn_4597

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@#
	unknown_6:@@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@$

unknown_16:@@

unknown_17:@

unknown_18:@

unknown_19:@

unknown_20:@$

unknown_21:@@

unknown_22:@

unknown_23:@

unknown_24:@

unknown_25:@$

unknown_26:@@

unknown_27:@

unknown_28:@

unknown_29:@

unknown_30:@$

unknown_31:@@

unknown_32:@

unknown_33:@

unknown_34:@

unknown_35:@$

unknown_36:@@

unknown_37:@

unknown_38:@

unknown_39:@

unknown_40:@$

unknown_41:@@

unknown_42:@

unknown_43:@

unknown_44:@

unknown_45:@$

unknown_46:@@

unknown_47:@

unknown_48:@

unknown_49:@

unknown_50:@$

unknown_51:@@

unknown_52:@

unknown_53:@

unknown_54:@

unknown_55:@$

unknown_56:@@

unknown_57:@

unknown_58:@

unknown_59:@

unknown_60:@$

unknown_61:@@

unknown_62:@

unknown_63:@

unknown_64:@

unknown_65:@$

unknown_66:@@

unknown_67:@

unknown_68:@

unknown_69:@

unknown_70:@$

unknown_71:@@

unknown_72:@

unknown_73:@

unknown_74:@

unknown_75:@$

unknown_76:@
identityИвStatefulPartitionedCallЄ

StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70
unknown_71
unknown_72
unknown_73
unknown_74
unknown_75
unknown_76*Z
TinS
Q2O*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *R
_read_only_resource_inputs4
20	
!"#&'(+,-012567:;<?@ADEFIJKN*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_3537Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*▐
_input_shapes╠
╔:+                           : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
ю
╛
#__inference_bn10_layer_call_fn_5558

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn10_layer_call_and_return_conditional_losses_1500Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ж
Б
%__inference_conv15_layer_call_fn_5710

inputs!
unknown:@@
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv15_layer_call_and_return_conditional_losses_2455Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
м
\
@__inference_relu23_layer_call_and_return_conditional_losses_5961

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
м
\
@__inference_relu38_layer_call_and_return_conditional_losses_6391

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
м
\
@__inference_relu35_layer_call_and_return_conditional_losses_2635

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
■
@
$__inference_relu2_layer_call_fn_5354

inputs
identity╟
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_relu2_layer_call_and_return_conditional_losses_2338z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
т
▒
@__inference_conv39_layer_call_and_return_conditional_losses_2671

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ь
╜
"__inference_bn4_layer_call_fn_5386

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *F
fAR?
=__inference_bn4_layer_call_and_return_conditional_losses_1372Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
т
▒
@__inference_conv30_layer_call_and_return_conditional_losses_2590

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ь
╛
#__inference_bn40_layer_call_fn_6431

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn40_layer_call_and_return_conditional_losses_2171Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
м
\
@__inference_relu32_layer_call_and_return_conditional_losses_2608

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ж
Б
%__inference_conv24_layer_call_fn_5968

inputs!
unknown:@@
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_conv24_layer_call_and_return_conditional_losses_2536Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
■
@
$__inference_relu8_layer_call_fn_5526

inputs
identity╟
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_relu8_layer_call_and_return_conditional_losses_2392z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
з
Й
>__inference_bn31_layer_call_and_return_conditional_losses_6191

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ф
н
>__inference_bn34_layer_call_and_return_conditional_losses_2043

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0г
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ю
╛
#__inference_bn28_layer_call_fn_6074

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn28_layer_call_and_return_conditional_losses_1884Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
А
A
%__inference_relu26_layer_call_fn_6042

inputs
identity╚
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu26_layer_call_and_return_conditional_losses_2554z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ъ
╜
"__inference_bn7_layer_call_fn_5485

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *F
fAR?
=__inference_bn7_layer_call_and_return_conditional_losses_1467Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
т
▒
@__inference_conv21_layer_call_and_return_conditional_losses_5889

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
т
▒
@__inference_conv21_layer_call_and_return_conditional_losses_2509

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
з
Й
>__inference_bn19_layer_call_and_return_conditional_losses_1692

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
т
▒
@__inference_conv33_layer_call_and_return_conditional_losses_6233

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ь
╛
#__inference_bn43_layer_call_fn_6517

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_bn43_layer_call_and_return_conditional_losses_2235Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
А
A
%__inference_relu32_layer_call_fn_6214

inputs
identity╚
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_relu32_layer_call_and_return_conditional_losses_2608z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
з
Й
>__inference_bn40_layer_call_and_return_conditional_losses_6449

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╢
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
│"
Ж
"__inference_signature_wrapper_5330

input0!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@#
	unknown_6:@@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@$

unknown_16:@@

unknown_17:@

unknown_18:@

unknown_19:@

unknown_20:@$

unknown_21:@@

unknown_22:@

unknown_23:@

unknown_24:@

unknown_25:@$

unknown_26:@@

unknown_27:@

unknown_28:@

unknown_29:@

unknown_30:@$

unknown_31:@@

unknown_32:@

unknown_33:@

unknown_34:@

unknown_35:@$

unknown_36:@@

unknown_37:@

unknown_38:@

unknown_39:@

unknown_40:@$

unknown_41:@@

unknown_42:@

unknown_43:@

unknown_44:@

unknown_45:@$

unknown_46:@@

unknown_47:@

unknown_48:@

unknown_49:@

unknown_50:@$

unknown_51:@@

unknown_52:@

unknown_53:@

unknown_54:@

unknown_55:@$

unknown_56:@@

unknown_57:@

unknown_58:@

unknown_59:@

unknown_60:@$

unknown_61:@@

unknown_62:@

unknown_63:@

unknown_64:@

unknown_65:@$

unknown_66:@@

unknown_67:@

unknown_68:@

unknown_69:@

unknown_70:@$

unknown_71:@@

unknown_72:@

unknown_73:@

unknown_74:@

unknown_75:@$

unknown_76:@
identityИвStatefulPartitionedCallЁ

StatefulPartitionedCallStatefulPartitionedCallinput0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70
unknown_71
unknown_72
unknown_73
unknown_74
unknown_75
unknown_76*Z
TinS
Q2O*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *p
_read_only_resource_inputsR
PN	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMN*0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference__wrapped_model_1350Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*▐
_input_shapes╠
╔:+                           : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinput0
м
\
@__inference_relu41_layer_call_and_return_conditional_losses_6477

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
т
▒
@__inference_conv15_layer_call_and_return_conditional_losses_5717

inputs8
conv2d_readvariableop_resource:@@
identityИвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+                           @: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
м
\
@__inference_relu47_layer_call_and_return_conditional_losses_6649

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           @t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs"█L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*▀
serving_default╦
S
input0I
serving_default_input0:0+                           X

subtract49J
StatefulPartitionedCall:0+                           tensorflow/serving/predict:┼Х
▄
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer-8

layer_with_weights-5

layer-9
layer_with_weights-6
layer-10
layer-11
layer_with_weights-7
layer-12
layer_with_weights-8
layer-13
layer-14
layer_with_weights-9
layer-15
layer_with_weights-10
layer-16
layer-17
layer_with_weights-11
layer-18
layer_with_weights-12
layer-19
layer-20
layer_with_weights-13
layer-21
layer_with_weights-14
layer-22
layer-23
layer_with_weights-15
layer-24
layer_with_weights-16
layer-25
layer-26
layer_with_weights-17
layer-27
layer_with_weights-18
layer-28
layer-29
layer_with_weights-19
layer-30
 layer_with_weights-20
 layer-31
!layer-32
"layer_with_weights-21
"layer-33
#layer_with_weights-22
#layer-34
$layer-35
%layer_with_weights-23
%layer-36
&layer_with_weights-24
&layer-37
'layer-38
(layer_with_weights-25
(layer-39
)layer_with_weights-26
)layer-40
*layer-41
+layer_with_weights-27
+layer-42
,layer_with_weights-28
,layer-43
-layer-44
.layer_with_weights-29
.layer-45
/layer_with_weights-30
/layer-46
0layer-47
1layer_with_weights-31
1layer-48
2layer-49
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses
9_default_save_signature
:
signatures"
_tf_keras_network
"
_tf_keras_input_layer
╗

;kernel
<bias
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses"
_tf_keras_layer
е
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses"
_tf_keras_layer
▒

Ikernel
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses"
_tf_keras_layer
ъ
Paxis
	Qgamma
Rbeta
Smoving_mean
Tmoving_variance
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_layer
е
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses"
_tf_keras_layer
▒

akernel
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses"
_tf_keras_layer
ъ
haxis
	igamma
jbeta
kmoving_mean
lmoving_variance
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses"
_tf_keras_layer
е
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses"
_tf_keras_layer
▒

ykernel
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
ї
	Аaxis

Бgamma
	Вbeta
Гmoving_mean
Дmoving_variance
Е	variables
Жtrainable_variables
Зregularization_losses
И	keras_api
Й__call__
+К&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Л	variables
Мtrainable_variables
Нregularization_losses
О	keras_api
П__call__
+Р&call_and_return_all_conditional_losses"
_tf_keras_layer
╕
Сkernel
Т	variables
Уtrainable_variables
Фregularization_losses
Х	keras_api
Ц__call__
+Ч&call_and_return_all_conditional_losses"
_tf_keras_layer
ї
	Шaxis

Щgamma
	Ъbeta
Ыmoving_mean
Ьmoving_variance
Э	variables
Юtrainable_variables
Яregularization_losses
а	keras_api
б__call__
+в&call_and_return_all_conditional_losses"
_tf_keras_layer
л
г	variables
дtrainable_variables
еregularization_losses
ж	keras_api
з__call__
+и&call_and_return_all_conditional_losses"
_tf_keras_layer
╕
йkernel
к	variables
лtrainable_variables
мregularization_losses
н	keras_api
о__call__
+п&call_and_return_all_conditional_losses"
_tf_keras_layer
ї
	░axis

▒gamma
	▓beta
│moving_mean
┤moving_variance
╡	variables
╢trainable_variables
╖regularization_losses
╕	keras_api
╣__call__
+║&call_and_return_all_conditional_losses"
_tf_keras_layer
л
╗	variables
╝trainable_variables
╜regularization_losses
╛	keras_api
┐__call__
+└&call_and_return_all_conditional_losses"
_tf_keras_layer
╕
┴kernel
┬	variables
├trainable_variables
─regularization_losses
┼	keras_api
╞__call__
+╟&call_and_return_all_conditional_losses"
_tf_keras_layer
ї
	╚axis

╔gamma
	╩beta
╦moving_mean
╠moving_variance
═	variables
╬trainable_variables
╧regularization_losses
╨	keras_api
╤__call__
+╥&call_and_return_all_conditional_losses"
_tf_keras_layer
л
╙	variables
╘trainable_variables
╒regularization_losses
╓	keras_api
╫__call__
+╪&call_and_return_all_conditional_losses"
_tf_keras_layer
╕
┘kernel
┌	variables
█trainable_variables
▄regularization_losses
▌	keras_api
▐__call__
+▀&call_and_return_all_conditional_losses"
_tf_keras_layer
ї
	рaxis

сgamma
	тbeta
уmoving_mean
фmoving_variance
х	variables
цtrainable_variables
чregularization_losses
ш	keras_api
щ__call__
+ъ&call_and_return_all_conditional_losses"
_tf_keras_layer
л
ы	variables
ьtrainable_variables
эregularization_losses
ю	keras_api
я__call__
+Ё&call_and_return_all_conditional_losses"
_tf_keras_layer
╕
ёkernel
Є	variables
єtrainable_variables
Їregularization_losses
ї	keras_api
Ў__call__
+ў&call_and_return_all_conditional_losses"
_tf_keras_layer
ї
	°axis

∙gamma
	·beta
√moving_mean
№moving_variance
¤	variables
■trainable_variables
 regularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses"
_tf_keras_layer
╕
Йkernel
К	variables
Лtrainable_variables
Мregularization_losses
Н	keras_api
О__call__
+П&call_and_return_all_conditional_losses"
_tf_keras_layer
ї
	Рaxis

Сgamma
	Тbeta
Уmoving_mean
Фmoving_variance
Х	variables
Цtrainable_variables
Чregularization_losses
Ш	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Ы	variables
Ьtrainable_variables
Эregularization_losses
Ю	keras_api
Я__call__
+а&call_and_return_all_conditional_losses"
_tf_keras_layer
╕
бkernel
в	variables
гtrainable_variables
дregularization_losses
е	keras_api
ж__call__
+з&call_and_return_all_conditional_losses"
_tf_keras_layer
ї
	иaxis

йgamma
	кbeta
лmoving_mean
мmoving_variance
н	variables
оtrainable_variables
пregularization_losses
░	keras_api
▒__call__
+▓&call_and_return_all_conditional_losses"
_tf_keras_layer
л
│	variables
┤trainable_variables
╡regularization_losses
╢	keras_api
╖__call__
+╕&call_and_return_all_conditional_losses"
_tf_keras_layer
╕
╣kernel
║	variables
╗trainable_variables
╝regularization_losses
╜	keras_api
╛__call__
+┐&call_and_return_all_conditional_losses"
_tf_keras_layer
ї
	└axis

┴gamma
	┬beta
├moving_mean
─moving_variance
┼	variables
╞trainable_variables
╟regularization_losses
╚	keras_api
╔__call__
+╩&call_and_return_all_conditional_losses"
_tf_keras_layer
л
╦	variables
╠trainable_variables
═regularization_losses
╬	keras_api
╧__call__
+╨&call_and_return_all_conditional_losses"
_tf_keras_layer
╕
╤kernel
╥	variables
╙trainable_variables
╘regularization_losses
╒	keras_api
╓__call__
+╫&call_and_return_all_conditional_losses"
_tf_keras_layer
ї
	╪axis

┘gamma
	┌beta
█moving_mean
▄moving_variance
▌	variables
▐trainable_variables
▀regularization_losses
р	keras_api
с__call__
+т&call_and_return_all_conditional_losses"
_tf_keras_layer
л
у	variables
фtrainable_variables
хregularization_losses
ц	keras_api
ч__call__
+ш&call_and_return_all_conditional_losses"
_tf_keras_layer
╕
щkernel
ъ	variables
ыtrainable_variables
ьregularization_losses
э	keras_api
ю__call__
+я&call_and_return_all_conditional_losses"
_tf_keras_layer
ї
	Ёaxis

ёgamma
	Єbeta
єmoving_mean
Їmoving_variance
ї	variables
Ўtrainable_variables
ўregularization_losses
°	keras_api
∙__call__
+·&call_and_return_all_conditional_losses"
_tf_keras_layer
л
√	variables
№trainable_variables
¤regularization_losses
■	keras_api
 __call__
+А&call_and_return_all_conditional_losses"
_tf_keras_layer
╕
Бkernel
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses"
_tf_keras_layer
ї
	Иaxis

Йgamma
	Кbeta
Лmoving_mean
Мmoving_variance
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses"
_tf_keras_layer
л
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses"
_tf_keras_layer
╕
Щkernel
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses"
_tf_keras_layer
ї
	аaxis

бgamma
	вbeta
гmoving_mean
дmoving_variance
е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses"
_tf_keras_layer
л
л	variables
мtrainable_variables
нregularization_losses
о	keras_api
п__call__
+░&call_and_return_all_conditional_losses"
_tf_keras_layer
╕
▒kernel
▓	variables
│trainable_variables
┤regularization_losses
╡	keras_api
╢__call__
+╖&call_and_return_all_conditional_losses"
_tf_keras_layer
л
╕	variables
╣trainable_variables
║regularization_losses
╗	keras_api
╝__call__
+╜&call_and_return_all_conditional_losses"
_tf_keras_layer
╟
;0
<1
I2
Q3
R4
S5
T6
a7
i8
j9
k10
l11
y12
Б13
В14
Г15
Д16
С17
Щ18
Ъ19
Ы20
Ь21
й22
▒23
▓24
│25
┤26
┴27
╔28
╩29
╦30
╠31
┘32
с33
т34
у35
ф36
ё37
∙38
·39
√40
№41
Й42
С43
Т44
У45
Ф46
б47
й48
к49
л50
м51
╣52
┴53
┬54
├55
─56
╤57
┘58
┌59
█60
▄61
щ62
ё63
Є64
є65
Ї66
Б67
Й68
К69
Л70
М71
Щ72
б73
в74
г75
д76
▒77"
trackable_list_wrapper
╜
;0
<1
I2
Q3
R4
a5
i6
j7
y8
Б9
В10
С11
Щ12
Ъ13
й14
▒15
▓16
┴17
╔18
╩19
┘20
с21
т22
ё23
∙24
·25
Й26
С27
Т28
б29
й30
к31
╣32
┴33
┬34
╤35
┘36
┌37
щ38
ё39
Є40
Б41
Й42
К43
Щ44
б45
в46
▒47"
trackable_list_wrapper
 "
trackable_list_wrapper
╧
╛non_trainable_variables
┐layers
└metrics
 ┴layer_regularization_losses
┬layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
9_default_save_signature
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
▐2█
$__inference_model_layer_call_fn_2924
$__inference_model_layer_call_fn_4436
$__inference_model_layer_call_fn_4597
$__inference_model_layer_call_fn_3857└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╩2╟
?__inference_model_layer_call_and_return_conditional_losses_4882
?__inference_model_layer_call_and_return_conditional_losses_5167
?__inference_model_layer_call_and_return_conditional_losses_4066
?__inference_model_layer_call_and_return_conditional_losses_4275└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╔B╞
__inference__wrapped_model_1350input0"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
-
├serving_default"
signature_map
&:$@2conv1/kernel
:@2
conv1/bias
.
;0
<1"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
─non_trainable_variables
┼layers
╞metrics
 ╟layer_regularization_losses
╚layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
╬2╦
$__inference_conv1_layer_call_fn_5339в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
щ2ц
?__inference_conv1_layer_call_and_return_conditional_losses_5349в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╔non_trainable_variables
╩layers
╦metrics
 ╠layer_regularization_losses
═layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
╬2╦
$__inference_relu2_layer_call_fn_5354в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
щ2ц
?__inference_relu2_layer_call_and_return_conditional_losses_5359в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
&:$@@2conv3/kernel
'
I0"
trackable_list_wrapper
'
I0"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╬non_trainable_variables
╧layers
╨metrics
 ╤layer_regularization_losses
╥layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
╬2╦
$__inference_conv3_layer_call_fn_5366в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
щ2ц
?__inference_conv3_layer_call_and_return_conditional_losses_5373в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
:@2	bn4/gamma
:@2bn4/beta
:@ (2bn4/moving_mean
#:!@ (2bn4/moving_variance
<
Q0
R1
S2
T3"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╙non_trainable_variables
╘layers
╒metrics
 ╓layer_regularization_losses
╫layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
В2 
"__inference_bn4_layer_call_fn_5386
"__inference_bn4_layer_call_fn_5399┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╕2╡
=__inference_bn4_layer_call_and_return_conditional_losses_5417
=__inference_bn4_layer_call_and_return_conditional_losses_5435┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╪non_trainable_variables
┘layers
┌metrics
 █layer_regularization_losses
▄layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
╬2╦
$__inference_relu5_layer_call_fn_5440в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
щ2ц
?__inference_relu5_layer_call_and_return_conditional_losses_5445в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
&:$@@2conv6/kernel
'
a0"
trackable_list_wrapper
'
a0"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
▌non_trainable_variables
▐layers
▀metrics
 рlayer_regularization_losses
сlayer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
╬2╦
$__inference_conv6_layer_call_fn_5452в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
щ2ц
?__inference_conv6_layer_call_and_return_conditional_losses_5459в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
:@2	bn7/gamma
:@2bn7/beta
:@ (2bn7/moving_mean
#:!@ (2bn7/moving_variance
<
i0
j1
k2
l3"
trackable_list_wrapper
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
тnon_trainable_variables
уlayers
фmetrics
 хlayer_regularization_losses
цlayer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
В2 
"__inference_bn7_layer_call_fn_5472
"__inference_bn7_layer_call_fn_5485┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╕2╡
=__inference_bn7_layer_call_and_return_conditional_losses_5503
=__inference_bn7_layer_call_and_return_conditional_losses_5521┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
╬2╦
$__inference_relu8_layer_call_fn_5526в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
щ2ц
?__inference_relu8_layer_call_and_return_conditional_losses_5531в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
&:$@@2conv9/kernel
'
y0"
trackable_list_wrapper
'
y0"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ьnon_trainable_variables
эlayers
юmetrics
 яlayer_regularization_losses
Ёlayer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╬2╦
$__inference_conv9_layer_call_fn_5538в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
щ2ц
?__inference_conv9_layer_call_and_return_conditional_losses_5545в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
:@2
bn10/gamma
:@2	bn10/beta
 :@ (2bn10/moving_mean
$:"@ (2bn10/moving_variance
@
Б0
В1
Г2
Д3"
trackable_list_wrapper
0
Б0
В1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
ёnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
Е	variables
Жtrainable_variables
Зregularization_losses
Й__call__
+К&call_and_return_all_conditional_losses
'К"call_and_return_conditional_losses"
_generic_user_object
Д2Б
#__inference_bn10_layer_call_fn_5558
#__inference_bn10_layer_call_fn_5571┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
║2╖
>__inference_bn10_layer_call_and_return_conditional_losses_5589
>__inference_bn10_layer_call_and_return_conditional_losses_5607┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Ўnon_trainable_variables
ўlayers
°metrics
 ∙layer_regularization_losses
·layer_metrics
Л	variables
Мtrainable_variables
Нregularization_losses
П__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses"
_generic_user_object
╧2╠
%__inference_relu11_layer_call_fn_5612в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_relu11_layer_call_and_return_conditional_losses_5617в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
':%@@2conv12/kernel
(
С0"
trackable_list_wrapper
(
С0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
√non_trainable_variables
№layers
¤metrics
 ■layer_regularization_losses
 layer_metrics
Т	variables
Уtrainable_variables
Фregularization_losses
Ц__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses"
_generic_user_object
╧2╠
%__inference_conv12_layer_call_fn_5624в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_conv12_layer_call_and_return_conditional_losses_5631в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
:@2
bn13/gamma
:@2	bn13/beta
 :@ (2bn13/moving_mean
$:"@ (2bn13/moving_variance
@
Щ0
Ъ1
Ы2
Ь3"
trackable_list_wrapper
0
Щ0
Ъ1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
Э	variables
Юtrainable_variables
Яregularization_losses
б__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses"
_generic_user_object
Д2Б
#__inference_bn13_layer_call_fn_5644
#__inference_bn13_layer_call_fn_5657┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
║2╖
>__inference_bn13_layer_call_and_return_conditional_losses_5675
>__inference_bn13_layer_call_and_return_conditional_losses_5693┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
г	variables
дtrainable_variables
еregularization_losses
з__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses"
_generic_user_object
╧2╠
%__inference_relu14_layer_call_fn_5698в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_relu14_layer_call_and_return_conditional_losses_5703в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
':%@@2conv15/kernel
(
й0"
trackable_list_wrapper
(
й0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
к	variables
лtrainable_variables
мregularization_losses
о__call__
+п&call_and_return_all_conditional_losses
'п"call_and_return_conditional_losses"
_generic_user_object
╧2╠
%__inference_conv15_layer_call_fn_5710в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_conv15_layer_call_and_return_conditional_losses_5717в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
:@2
bn16/gamma
:@2	bn16/beta
 :@ (2bn16/moving_mean
$:"@ (2bn16/moving_variance
@
▒0
▓1
│2
┤3"
trackable_list_wrapper
0
▒0
▓1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
╡	variables
╢trainable_variables
╖regularization_losses
╣__call__
+║&call_and_return_all_conditional_losses
'║"call_and_return_conditional_losses"
_generic_user_object
Д2Б
#__inference_bn16_layer_call_fn_5730
#__inference_bn16_layer_call_fn_5743┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
║2╖
>__inference_bn16_layer_call_and_return_conditional_losses_5761
>__inference_bn16_layer_call_and_return_conditional_losses_5779┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
╗	variables
╝trainable_variables
╜regularization_losses
┐__call__
+└&call_and_return_all_conditional_losses
'└"call_and_return_conditional_losses"
_generic_user_object
╧2╠
%__inference_relu17_layer_call_fn_5784в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_relu17_layer_call_and_return_conditional_losses_5789в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
':%@@2conv18/kernel
(
┴0"
trackable_list_wrapper
(
┴0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
┬	variables
├trainable_variables
─regularization_losses
╞__call__
+╟&call_and_return_all_conditional_losses
'╟"call_and_return_conditional_losses"
_generic_user_object
╧2╠
%__inference_conv18_layer_call_fn_5796в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_conv18_layer_call_and_return_conditional_losses_5803в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
:@2
bn19/gamma
:@2	bn19/beta
 :@ (2bn19/moving_mean
$:"@ (2bn19/moving_variance
@
╔0
╩1
╦2
╠3"
trackable_list_wrapper
0
╔0
╩1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Юnon_trainable_variables
Яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
═	variables
╬trainable_variables
╧regularization_losses
╤__call__
+╥&call_and_return_all_conditional_losses
'╥"call_and_return_conditional_losses"
_generic_user_object
Д2Б
#__inference_bn19_layer_call_fn_5816
#__inference_bn19_layer_call_fn_5829┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
║2╖
>__inference_bn19_layer_call_and_return_conditional_losses_5847
>__inference_bn19_layer_call_and_return_conditional_losses_5865┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
╙	variables
╘trainable_variables
╒regularization_losses
╫__call__
+╪&call_and_return_all_conditional_losses
'╪"call_and_return_conditional_losses"
_generic_user_object
╧2╠
%__inference_relu20_layer_call_fn_5870в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_relu20_layer_call_and_return_conditional_losses_5875в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
':%@@2conv21/kernel
(
┘0"
trackable_list_wrapper
(
┘0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
┌	variables
█trainable_variables
▄regularization_losses
▐__call__
+▀&call_and_return_all_conditional_losses
'▀"call_and_return_conditional_losses"
_generic_user_object
╧2╠
%__inference_conv21_layer_call_fn_5882в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_conv21_layer_call_and_return_conditional_losses_5889в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
:@2
bn22/gamma
:@2	bn22/beta
 :@ (2bn22/moving_mean
$:"@ (2bn22/moving_variance
@
с0
т1
у2
ф3"
trackable_list_wrapper
0
с0
т1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
нnon_trainable_variables
оlayers
пmetrics
 ░layer_regularization_losses
▒layer_metrics
х	variables
цtrainable_variables
чregularization_losses
щ__call__
+ъ&call_and_return_all_conditional_losses
'ъ"call_and_return_conditional_losses"
_generic_user_object
Д2Б
#__inference_bn22_layer_call_fn_5902
#__inference_bn22_layer_call_fn_5915┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
║2╖
>__inference_bn22_layer_call_and_return_conditional_losses_5933
>__inference_bn22_layer_call_and_return_conditional_losses_5951┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
▓non_trainable_variables
│layers
┤metrics
 ╡layer_regularization_losses
╢layer_metrics
ы	variables
ьtrainable_variables
эregularization_losses
я__call__
+Ё&call_and_return_all_conditional_losses
'Ё"call_and_return_conditional_losses"
_generic_user_object
╧2╠
%__inference_relu23_layer_call_fn_5956в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_relu23_layer_call_and_return_conditional_losses_5961в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
':%@@2conv24/kernel
(
ё0"
trackable_list_wrapper
(
ё0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╖non_trainable_variables
╕layers
╣metrics
 ║layer_regularization_losses
╗layer_metrics
Є	variables
єtrainable_variables
Їregularization_losses
Ў__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses"
_generic_user_object
╧2╠
%__inference_conv24_layer_call_fn_5968в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_conv24_layer_call_and_return_conditional_losses_5975в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
:@2
bn25/gamma
:@2	bn25/beta
 :@ (2bn25/moving_mean
$:"@ (2bn25/moving_variance
@
∙0
·1
√2
№3"
trackable_list_wrapper
0
∙0
·1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╝non_trainable_variables
╜layers
╛metrics
 ┐layer_regularization_losses
└layer_metrics
¤	variables
■trainable_variables
 regularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
Д2Б
#__inference_bn25_layer_call_fn_5988
#__inference_bn25_layer_call_fn_6001┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
║2╖
>__inference_bn25_layer_call_and_return_conditional_losses_6019
>__inference_bn25_layer_call_and_return_conditional_losses_6037┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
┴non_trainable_variables
┬layers
├metrics
 ─layer_regularization_losses
┼layer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses"
_generic_user_object
╧2╠
%__inference_relu26_layer_call_fn_6042в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_relu26_layer_call_and_return_conditional_losses_6047в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
':%@@2conv27/kernel
(
Й0"
trackable_list_wrapper
(
Й0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╞non_trainable_variables
╟layers
╚metrics
 ╔layer_regularization_losses
╩layer_metrics
К	variables
Лtrainable_variables
Мregularization_losses
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses"
_generic_user_object
╧2╠
%__inference_conv27_layer_call_fn_6054в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_conv27_layer_call_and_return_conditional_losses_6061в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
:@2
bn28/gamma
:@2	bn28/beta
 :@ (2bn28/moving_mean
$:"@ (2bn28/moving_variance
@
С0
Т1
У2
Ф3"
trackable_list_wrapper
0
С0
Т1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╦non_trainable_variables
╠layers
═metrics
 ╬layer_regularization_losses
╧layer_metrics
Х	variables
Цtrainable_variables
Чregularization_losses
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
Д2Б
#__inference_bn28_layer_call_fn_6074
#__inference_bn28_layer_call_fn_6087┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
║2╖
>__inference_bn28_layer_call_and_return_conditional_losses_6105
>__inference_bn28_layer_call_and_return_conditional_losses_6123┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╨non_trainable_variables
╤layers
╥metrics
 ╙layer_regularization_losses
╘layer_metrics
Ы	variables
Ьtrainable_variables
Эregularization_losses
Я__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
╧2╠
%__inference_relu29_layer_call_fn_6128в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_relu29_layer_call_and_return_conditional_losses_6133в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
':%@@2conv30/kernel
(
б0"
trackable_list_wrapper
(
б0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╒non_trainable_variables
╓layers
╫metrics
 ╪layer_regularization_losses
┘layer_metrics
в	variables
гtrainable_variables
дregularization_losses
ж__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses"
_generic_user_object
╧2╠
%__inference_conv30_layer_call_fn_6140в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_conv30_layer_call_and_return_conditional_losses_6147в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
:@2
bn31/gamma
:@2	bn31/beta
 :@ (2bn31/moving_mean
$:"@ (2bn31/moving_variance
@
й0
к1
л2
м3"
trackable_list_wrapper
0
й0
к1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
┌non_trainable_variables
█layers
▄metrics
 ▌layer_regularization_losses
▐layer_metrics
н	variables
оtrainable_variables
пregularization_losses
▒__call__
+▓&call_and_return_all_conditional_losses
'▓"call_and_return_conditional_losses"
_generic_user_object
Д2Б
#__inference_bn31_layer_call_fn_6160
#__inference_bn31_layer_call_fn_6173┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
║2╖
>__inference_bn31_layer_call_and_return_conditional_losses_6191
>__inference_bn31_layer_call_and_return_conditional_losses_6209┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
▀non_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
│	variables
┤trainable_variables
╡regularization_losses
╖__call__
+╕&call_and_return_all_conditional_losses
'╕"call_and_return_conditional_losses"
_generic_user_object
╧2╠
%__inference_relu32_layer_call_fn_6214в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_relu32_layer_call_and_return_conditional_losses_6219в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
':%@@2conv33/kernel
(
╣0"
trackable_list_wrapper
(
╣0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
║	variables
╗trainable_variables
╝regularization_losses
╛__call__
+┐&call_and_return_all_conditional_losses
'┐"call_and_return_conditional_losses"
_generic_user_object
╧2╠
%__inference_conv33_layer_call_fn_6226в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_conv33_layer_call_and_return_conditional_losses_6233в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
:@2
bn34/gamma
:@2	bn34/beta
 :@ (2bn34/moving_mean
$:"@ (2bn34/moving_variance
@
┴0
┬1
├2
─3"
trackable_list_wrapper
0
┴0
┬1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
щnon_trainable_variables
ъlayers
ыmetrics
 ьlayer_regularization_losses
эlayer_metrics
┼	variables
╞trainable_variables
╟regularization_losses
╔__call__
+╩&call_and_return_all_conditional_losses
'╩"call_and_return_conditional_losses"
_generic_user_object
Д2Б
#__inference_bn34_layer_call_fn_6246
#__inference_bn34_layer_call_fn_6259┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
║2╖
>__inference_bn34_layer_call_and_return_conditional_losses_6277
>__inference_bn34_layer_call_and_return_conditional_losses_6295┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
юnon_trainable_variables
яlayers
Ёmetrics
 ёlayer_regularization_losses
Єlayer_metrics
╦	variables
╠trainable_variables
═regularization_losses
╧__call__
+╨&call_and_return_all_conditional_losses
'╨"call_and_return_conditional_losses"
_generic_user_object
╧2╠
%__inference_relu35_layer_call_fn_6300в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_relu35_layer_call_and_return_conditional_losses_6305в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
':%@@2conv36/kernel
(
╤0"
trackable_list_wrapper
(
╤0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
єnon_trainable_variables
Їlayers
їmetrics
 Ўlayer_regularization_losses
ўlayer_metrics
╥	variables
╙trainable_variables
╘regularization_losses
╓__call__
+╫&call_and_return_all_conditional_losses
'╫"call_and_return_conditional_losses"
_generic_user_object
╧2╠
%__inference_conv36_layer_call_fn_6312в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_conv36_layer_call_and_return_conditional_losses_6319в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
:@2
bn37/gamma
:@2	bn37/beta
 :@ (2bn37/moving_mean
$:"@ (2bn37/moving_variance
@
┘0
┌1
█2
▄3"
trackable_list_wrapper
0
┘0
┌1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
°non_trainable_variables
∙layers
·metrics
 √layer_regularization_losses
№layer_metrics
▌	variables
▐trainable_variables
▀regularization_losses
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses"
_generic_user_object
Д2Б
#__inference_bn37_layer_call_fn_6332
#__inference_bn37_layer_call_fn_6345┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
║2╖
>__inference_bn37_layer_call_and_return_conditional_losses_6363
>__inference_bn37_layer_call_and_return_conditional_losses_6381┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
¤non_trainable_variables
■layers
 metrics
 Аlayer_regularization_losses
Бlayer_metrics
у	variables
фtrainable_variables
хregularization_losses
ч__call__
+ш&call_and_return_all_conditional_losses
'ш"call_and_return_conditional_losses"
_generic_user_object
╧2╠
%__inference_relu38_layer_call_fn_6386в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_relu38_layer_call_and_return_conditional_losses_6391в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
':%@@2conv39/kernel
(
щ0"
trackable_list_wrapper
(
щ0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
ъ	variables
ыtrainable_variables
ьregularization_losses
ю__call__
+я&call_and_return_all_conditional_losses
'я"call_and_return_conditional_losses"
_generic_user_object
╧2╠
%__inference_conv39_layer_call_fn_6398в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_conv39_layer_call_and_return_conditional_losses_6405в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
:@2
bn40/gamma
:@2	bn40/beta
 :@ (2bn40/moving_mean
$:"@ (2bn40/moving_variance
@
ё0
Є1
є2
Ї3"
trackable_list_wrapper
0
ё0
Є1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
ї	variables
Ўtrainable_variables
ўregularization_losses
∙__call__
+·&call_and_return_all_conditional_losses
'·"call_and_return_conditional_losses"
_generic_user_object
Д2Б
#__inference_bn40_layer_call_fn_6418
#__inference_bn40_layer_call_fn_6431┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
║2╖
>__inference_bn40_layer_call_and_return_conditional_losses_6449
>__inference_bn40_layer_call_and_return_conditional_losses_6467┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
√	variables
№trainable_variables
¤regularization_losses
 __call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
╧2╠
%__inference_relu41_layer_call_fn_6472в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_relu41_layer_call_and_return_conditional_losses_6477в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
':%@@2conv42/kernel
(
Б0"
trackable_list_wrapper
(
Б0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
╧2╠
%__inference_conv42_layer_call_fn_6484в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_conv42_layer_call_and_return_conditional_losses_6491в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
:@2
bn43/gamma
:@2	bn43/beta
 :@ (2bn43/moving_mean
$:"@ (2bn43/moving_variance
@
Й0
К1
Л2
М3"
trackable_list_wrapper
0
Й0
К1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
Д2Б
#__inference_bn43_layer_call_fn_6504
#__inference_bn43_layer_call_fn_6517┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
║2╖
>__inference_bn43_layer_call_and_return_conditional_losses_6535
>__inference_bn43_layer_call_and_return_conditional_losses_6553┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
╧2╠
%__inference_relu44_layer_call_fn_6558в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_relu44_layer_call_and_return_conditional_losses_6563в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
':%@@2conv45/kernel
(
Щ0"
trackable_list_wrapper
(
Щ0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
╧2╠
%__inference_conv45_layer_call_fn_6570в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_conv45_layer_call_and_return_conditional_losses_6577в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
:@2
bn46/gamma
:@2	bn46/beta
 :@ (2bn46/moving_mean
$:"@ (2bn46/moving_variance
@
б0
в1
г2
д3"
trackable_list_wrapper
0
б0
в1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
Д2Б
#__inference_bn46_layer_call_fn_6590
#__inference_bn46_layer_call_fn_6603┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
║2╖
>__inference_bn46_layer_call_and_return_conditional_losses_6621
>__inference_bn46_layer_call_and_return_conditional_losses_6639┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
л	variables
мtrainable_variables
нregularization_losses
п__call__
+░&call_and_return_all_conditional_losses
'░"call_and_return_conditional_losses"
_generic_user_object
╧2╠
%__inference_relu47_layer_call_fn_6644в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_relu47_layer_call_and_return_conditional_losses_6649в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
':%@2conv48/kernel
(
▒0"
trackable_list_wrapper
(
▒0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
пnon_trainable_variables
░layers
▒metrics
 ▓layer_regularization_losses
│layer_metrics
▓	variables
│trainable_variables
┤regularization_losses
╢__call__
+╖&call_and_return_all_conditional_losses
'╖"call_and_return_conditional_losses"
_generic_user_object
╧2╠
%__inference_conv48_layer_call_fn_6656в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_conv48_layer_call_and_return_conditional_losses_6663в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
┤non_trainable_variables
╡layers
╢metrics
 ╖layer_regularization_losses
╕layer_metrics
╕	variables
╣trainable_variables
║regularization_losses
╝__call__
+╜&call_and_return_all_conditional_losses
'╜"call_and_return_conditional_losses"
_generic_user_object
╙2╨
)__inference_subtract49_layer_call_fn_6669в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ю2ы
D__inference_subtract49_layer_call_and_return_conditional_losses_6675в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
а
S0
T1
k2
l3
Г4
Д5
Ы6
Ь7
│8
┤9
╦10
╠11
у12
ф13
√14
№15
У16
Ф17
л18
м19
├20
─21
█22
▄23
є24
Ї25
Л26
М27
г28
д29"
trackable_list_wrapper
ж
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38
(39
)40
*41
+42
,43
-44
.45
/46
047
148
249"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╚B┼
"__inference_signature_wrapper_5330input0"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
.
S0
T1"
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
.
k0
l1"
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
0
Г0
Д1"
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
0
Ы0
Ь1"
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
0
│0
┤1"
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
0
╦0
╠1"
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
0
у0
ф1"
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
0
√0
№1"
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
0
У0
Ф1"
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
0
л0
м1"
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
0
├0
─1"
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
0
█0
▄1"
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
0
є0
Ї1"
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
0
Л0
М1"
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
0
г0
д1"
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
trackable_dict_wrapper╘
__inference__wrapped_model_1350░П;<IQRSTaijklyБВГДСЩЪЫЬй▒▓│┤┴╔╩╦╠┘стуфё∙·√№ЙСТУФбйклм╣┴┬├─╤┘┌█▄щёЄєЇБЙКЛМЩбвгд▒IвF
?в<
:К7
input0+                           
к "QкN
L

subtract49>К;

subtract49+                           ▌
>__inference_bn10_layer_call_and_return_conditional_losses_5589ЪБВГДMвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ ▌
>__inference_bn10_layer_call_and_return_conditional_losses_5607ЪБВГДMвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ╡
#__inference_bn10_layer_call_fn_5558НБВГДMвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @╡
#__inference_bn10_layer_call_fn_5571НБВГДMвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @▌
>__inference_bn13_layer_call_and_return_conditional_losses_5675ЪЩЪЫЬMвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ ▌
>__inference_bn13_layer_call_and_return_conditional_losses_5693ЪЩЪЫЬMвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ╡
#__inference_bn13_layer_call_fn_5644НЩЪЫЬMвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @╡
#__inference_bn13_layer_call_fn_5657НЩЪЫЬMвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @▌
>__inference_bn16_layer_call_and_return_conditional_losses_5761Ъ▒▓│┤MвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ ▌
>__inference_bn16_layer_call_and_return_conditional_losses_5779Ъ▒▓│┤MвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ╡
#__inference_bn16_layer_call_fn_5730Н▒▓│┤MвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @╡
#__inference_bn16_layer_call_fn_5743Н▒▓│┤MвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @▌
>__inference_bn19_layer_call_and_return_conditional_losses_5847Ъ╔╩╦╠MвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ ▌
>__inference_bn19_layer_call_and_return_conditional_losses_5865Ъ╔╩╦╠MвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ╡
#__inference_bn19_layer_call_fn_5816Н╔╩╦╠MвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @╡
#__inference_bn19_layer_call_fn_5829Н╔╩╦╠MвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @▌
>__inference_bn22_layer_call_and_return_conditional_losses_5933ЪстуфMвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ ▌
>__inference_bn22_layer_call_and_return_conditional_losses_5951ЪстуфMвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ╡
#__inference_bn22_layer_call_fn_5902НстуфMвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @╡
#__inference_bn22_layer_call_fn_5915НстуфMвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @▌
>__inference_bn25_layer_call_and_return_conditional_losses_6019Ъ∙·√№MвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ ▌
>__inference_bn25_layer_call_and_return_conditional_losses_6037Ъ∙·√№MвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ╡
#__inference_bn25_layer_call_fn_5988Н∙·√№MвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @╡
#__inference_bn25_layer_call_fn_6001Н∙·√№MвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @▌
>__inference_bn28_layer_call_and_return_conditional_losses_6105ЪСТУФMвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ ▌
>__inference_bn28_layer_call_and_return_conditional_losses_6123ЪСТУФMвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ╡
#__inference_bn28_layer_call_fn_6074НСТУФMвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @╡
#__inference_bn28_layer_call_fn_6087НСТУФMвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @▌
>__inference_bn31_layer_call_and_return_conditional_losses_6191ЪйклмMвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ ▌
>__inference_bn31_layer_call_and_return_conditional_losses_6209ЪйклмMвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ╡
#__inference_bn31_layer_call_fn_6160НйклмMвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @╡
#__inference_bn31_layer_call_fn_6173НйклмMвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @▌
>__inference_bn34_layer_call_and_return_conditional_losses_6277Ъ┴┬├─MвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ ▌
>__inference_bn34_layer_call_and_return_conditional_losses_6295Ъ┴┬├─MвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ╡
#__inference_bn34_layer_call_fn_6246Н┴┬├─MвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @╡
#__inference_bn34_layer_call_fn_6259Н┴┬├─MвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @▌
>__inference_bn37_layer_call_and_return_conditional_losses_6363Ъ┘┌█▄MвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ ▌
>__inference_bn37_layer_call_and_return_conditional_losses_6381Ъ┘┌█▄MвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ╡
#__inference_bn37_layer_call_fn_6332Н┘┌█▄MвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @╡
#__inference_bn37_layer_call_fn_6345Н┘┌█▄MвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @▌
>__inference_bn40_layer_call_and_return_conditional_losses_6449ЪёЄєЇMвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ ▌
>__inference_bn40_layer_call_and_return_conditional_losses_6467ЪёЄєЇMвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ╡
#__inference_bn40_layer_call_fn_6418НёЄєЇMвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @╡
#__inference_bn40_layer_call_fn_6431НёЄєЇMвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @▌
>__inference_bn43_layer_call_and_return_conditional_losses_6535ЪЙКЛМMвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ ▌
>__inference_bn43_layer_call_and_return_conditional_losses_6553ЪЙКЛМMвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ╡
#__inference_bn43_layer_call_fn_6504НЙКЛМMвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @╡
#__inference_bn43_layer_call_fn_6517НЙКЛМMвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @▌
>__inference_bn46_layer_call_and_return_conditional_losses_6621ЪбвгдMвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ ▌
>__inference_bn46_layer_call_and_return_conditional_losses_6639ЪбвгдMвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ╡
#__inference_bn46_layer_call_fn_6590НбвгдMвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @╡
#__inference_bn46_layer_call_fn_6603НбвгдMвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @╪
=__inference_bn4_layer_call_and_return_conditional_losses_5417ЦQRSTMвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ ╪
=__inference_bn4_layer_call_and_return_conditional_losses_5435ЦQRSTMвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ░
"__inference_bn4_layer_call_fn_5386ЙQRSTMвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @░
"__inference_bn4_layer_call_fn_5399ЙQRSTMвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @╪
=__inference_bn7_layer_call_and_return_conditional_losses_5503ЦijklMвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ ╪
=__inference_bn7_layer_call_and_return_conditional_losses_5521ЦijklMвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ░
"__inference_bn7_layer_call_fn_5472ЙijklMвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @░
"__inference_bn7_layer_call_fn_5485ЙijklMвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @╒
@__inference_conv12_layer_call_and_return_conditional_losses_5631РСIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ н
%__inference_conv12_layer_call_fn_5624ГСIвF
?в<
:К7
inputs+                           @
к "2К/+                           @╒
@__inference_conv15_layer_call_and_return_conditional_losses_5717РйIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ н
%__inference_conv15_layer_call_fn_5710ГйIвF
?в<
:К7
inputs+                           @
к "2К/+                           @╒
@__inference_conv18_layer_call_and_return_conditional_losses_5803Р┴IвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ н
%__inference_conv18_layer_call_fn_5796Г┴IвF
?в<
:К7
inputs+                           @
к "2К/+                           @╘
?__inference_conv1_layer_call_and_return_conditional_losses_5349Р;<IвF
?в<
:К7
inputs+                           
к "?в<
5К2
0+                           @
Ъ м
$__inference_conv1_layer_call_fn_5339Г;<IвF
?в<
:К7
inputs+                           
к "2К/+                           @╒
@__inference_conv21_layer_call_and_return_conditional_losses_5889Р┘IвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ н
%__inference_conv21_layer_call_fn_5882Г┘IвF
?в<
:К7
inputs+                           @
к "2К/+                           @╒
@__inference_conv24_layer_call_and_return_conditional_losses_5975РёIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ н
%__inference_conv24_layer_call_fn_5968ГёIвF
?в<
:К7
inputs+                           @
к "2К/+                           @╒
@__inference_conv27_layer_call_and_return_conditional_losses_6061РЙIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ н
%__inference_conv27_layer_call_fn_6054ГЙIвF
?в<
:К7
inputs+                           @
к "2К/+                           @╒
@__inference_conv30_layer_call_and_return_conditional_losses_6147РбIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ н
%__inference_conv30_layer_call_fn_6140ГбIвF
?в<
:К7
inputs+                           @
к "2К/+                           @╒
@__inference_conv33_layer_call_and_return_conditional_losses_6233Р╣IвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ н
%__inference_conv33_layer_call_fn_6226Г╣IвF
?в<
:К7
inputs+                           @
к "2К/+                           @╒
@__inference_conv36_layer_call_and_return_conditional_losses_6319Р╤IвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ н
%__inference_conv36_layer_call_fn_6312Г╤IвF
?в<
:К7
inputs+                           @
к "2К/+                           @╒
@__inference_conv39_layer_call_and_return_conditional_losses_6405РщIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ н
%__inference_conv39_layer_call_fn_6398ГщIвF
?в<
:К7
inputs+                           @
к "2К/+                           @╙
?__inference_conv3_layer_call_and_return_conditional_losses_5373ПIIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ л
$__inference_conv3_layer_call_fn_5366ВIIвF
?в<
:К7
inputs+                           @
к "2К/+                           @╒
@__inference_conv42_layer_call_and_return_conditional_losses_6491РБIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ н
%__inference_conv42_layer_call_fn_6484ГБIвF
?в<
:К7
inputs+                           @
к "2К/+                           @╒
@__inference_conv45_layer_call_and_return_conditional_losses_6577РЩIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ н
%__inference_conv45_layer_call_fn_6570ГЩIвF
?в<
:К7
inputs+                           @
к "2К/+                           @╒
@__inference_conv48_layer_call_and_return_conditional_losses_6663Р▒IвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           
Ъ н
%__inference_conv48_layer_call_fn_6656Г▒IвF
?в<
:К7
inputs+                           @
к "2К/+                           ╙
?__inference_conv6_layer_call_and_return_conditional_losses_5459ПaIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ л
$__inference_conv6_layer_call_fn_5452ВaIвF
?в<
:К7
inputs+                           @
к "2К/+                           @╙
?__inference_conv9_layer_call_and_return_conditional_losses_5545ПyIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ л
$__inference_conv9_layer_call_fn_5538ВyIвF
?в<
:К7
inputs+                           @
к "2К/+                           @ъ
?__inference_model_layer_call_and_return_conditional_losses_4066жП;<IQRSTaijklyБВГДСЩЪЫЬй▒▓│┤┴╔╩╦╠┘стуфё∙·√№ЙСТУФбйклм╣┴┬├─╤┘┌█▄щёЄєЇБЙКЛМЩбвгд▒QвN
GвD
:К7
input0+                           
p 

 
к "?в<
5К2
0+                           
Ъ ъ
?__inference_model_layer_call_and_return_conditional_losses_4275жП;<IQRSTaijklyБВГДСЩЪЫЬй▒▓│┤┴╔╩╦╠┘стуфё∙·√№ЙСТУФбйклм╣┴┬├─╤┘┌█▄щёЄєЇБЙКЛМЩбвгд▒QвN
GвD
:К7
input0+                           
p

 
к "?в<
5К2
0+                           
Ъ ъ
?__inference_model_layer_call_and_return_conditional_losses_4882жП;<IQRSTaijklyБВГДСЩЪЫЬй▒▓│┤┴╔╩╦╠┘стуфё∙·√№ЙСТУФбйклм╣┴┬├─╤┘┌█▄щёЄєЇБЙКЛМЩбвгд▒QвN
GвD
:К7
inputs+                           
p 

 
к "?в<
5К2
0+                           
Ъ ъ
?__inference_model_layer_call_and_return_conditional_losses_5167жП;<IQRSTaijklyБВГДСЩЪЫЬй▒▓│┤┴╔╩╦╠┘стуфё∙·√№ЙСТУФбйклм╣┴┬├─╤┘┌█▄щёЄєЇБЙКЛМЩбвгд▒QвN
GвD
:К7
inputs+                           
p

 
к "?в<
5К2
0+                           
Ъ ┬
$__inference_model_layer_call_fn_2924ЩП;<IQRSTaijklyБВГДСЩЪЫЬй▒▓│┤┴╔╩╦╠┘стуфё∙·√№ЙСТУФбйклм╣┴┬├─╤┘┌█▄щёЄєЇБЙКЛМЩбвгд▒QвN
GвD
:К7
input0+                           
p 

 
к "2К/+                           ┬
$__inference_model_layer_call_fn_3857ЩП;<IQRSTaijklyБВГДСЩЪЫЬй▒▓│┤┴╔╩╦╠┘стуфё∙·√№ЙСТУФбйклм╣┴┬├─╤┘┌█▄щёЄєЇБЙКЛМЩбвгд▒QвN
GвD
:К7
input0+                           
p

 
к "2К/+                           ┬
$__inference_model_layer_call_fn_4436ЩП;<IQRSTaijklyБВГДСЩЪЫЬй▒▓│┤┴╔╩╦╠┘стуфё∙·√№ЙСТУФбйклм╣┴┬├─╤┘┌█▄щёЄєЇБЙКЛМЩбвгд▒QвN
GвD
:К7
inputs+                           
p 

 
к "2К/+                           ┬
$__inference_model_layer_call_fn_4597ЩП;<IQRSTaijklyБВГДСЩЪЫЬй▒▓│┤┴╔╩╦╠┘стуфё∙·√№ЙСТУФбйклм╣┴┬├─╤┘┌█▄щёЄєЇБЙКЛМЩбвгд▒QвN
GвD
:К7
inputs+                           
p

 
к "2К/+                           ╤
@__inference_relu11_layer_call_and_return_conditional_losses_5617МIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ и
%__inference_relu11_layer_call_fn_5612IвF
?в<
:К7
inputs+                           @
к "2К/+                           @╤
@__inference_relu14_layer_call_and_return_conditional_losses_5703МIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ и
%__inference_relu14_layer_call_fn_5698IвF
?в<
:К7
inputs+                           @
к "2К/+                           @╤
@__inference_relu17_layer_call_and_return_conditional_losses_5789МIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ и
%__inference_relu17_layer_call_fn_5784IвF
?в<
:К7
inputs+                           @
к "2К/+                           @╤
@__inference_relu20_layer_call_and_return_conditional_losses_5875МIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ и
%__inference_relu20_layer_call_fn_5870IвF
?в<
:К7
inputs+                           @
к "2К/+                           @╤
@__inference_relu23_layer_call_and_return_conditional_losses_5961МIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ и
%__inference_relu23_layer_call_fn_5956IвF
?в<
:К7
inputs+                           @
к "2К/+                           @╤
@__inference_relu26_layer_call_and_return_conditional_losses_6047МIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ и
%__inference_relu26_layer_call_fn_6042IвF
?в<
:К7
inputs+                           @
к "2К/+                           @╤
@__inference_relu29_layer_call_and_return_conditional_losses_6133МIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ и
%__inference_relu29_layer_call_fn_6128IвF
?в<
:К7
inputs+                           @
к "2К/+                           @╨
?__inference_relu2_layer_call_and_return_conditional_losses_5359МIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ з
$__inference_relu2_layer_call_fn_5354IвF
?в<
:К7
inputs+                           @
к "2К/+                           @╤
@__inference_relu32_layer_call_and_return_conditional_losses_6219МIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ и
%__inference_relu32_layer_call_fn_6214IвF
?в<
:К7
inputs+                           @
к "2К/+                           @╤
@__inference_relu35_layer_call_and_return_conditional_losses_6305МIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ и
%__inference_relu35_layer_call_fn_6300IвF
?в<
:К7
inputs+                           @
к "2К/+                           @╤
@__inference_relu38_layer_call_and_return_conditional_losses_6391МIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ и
%__inference_relu38_layer_call_fn_6386IвF
?в<
:К7
inputs+                           @
к "2К/+                           @╤
@__inference_relu41_layer_call_and_return_conditional_losses_6477МIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ и
%__inference_relu41_layer_call_fn_6472IвF
?в<
:К7
inputs+                           @
к "2К/+                           @╤
@__inference_relu44_layer_call_and_return_conditional_losses_6563МIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ и
%__inference_relu44_layer_call_fn_6558IвF
?в<
:К7
inputs+                           @
к "2К/+                           @╤
@__inference_relu47_layer_call_and_return_conditional_losses_6649МIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ и
%__inference_relu47_layer_call_fn_6644IвF
?в<
:К7
inputs+                           @
к "2К/+                           @╨
?__inference_relu5_layer_call_and_return_conditional_losses_5445МIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ з
$__inference_relu5_layer_call_fn_5440IвF
?в<
:К7
inputs+                           @
к "2К/+                           @╨
?__inference_relu8_layer_call_and_return_conditional_losses_5531МIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                           @
Ъ з
$__inference_relu8_layer_call_fn_5526IвF
?в<
:К7
inputs+                           @
к "2К/+                           @с
"__inference_signature_wrapper_5330║П;<IQRSTaijklyБВГДСЩЪЫЬй▒▓│┤┴╔╩╦╠┘стуфё∙·√№ЙСТУФбйклм╣┴┬├─╤┘┌█▄щёЄєЇБЙКЛМЩбвгд▒SвP
в 
IкF
D
input0:К7
input0+                           "QкN
L

subtract49>К;

subtract49+                           Ю
D__inference_subtract49_layer_call_and_return_conditional_losses_6675╒СвН
ЕвБ
Ъ|
<К9
inputs/0+                           
<К9
inputs/1+                           
к "?в<
5К2
0+                           
Ъ Ў
)__inference_subtract49_layer_call_fn_6669╚СвН
ЕвБ
Ъ|
<К9
inputs/0+                           
<К9
inputs/1+                           
к "2К/+                           