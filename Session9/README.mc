Importing Necessary Library
pybullet envs(the parts the create is made or is about to understand environment

https://vectr.com/tmp/eDJL2deYU/k3sIWgwZAU.png?width=640&height=640&select=k3sIWgwZAUpage0


Step1
add an updates,retake the pointer to origin and update weight again.
Sample batch of 100
defined storage
batch dones - whether episode is done or not
our memory is of 1e6 tuple
Appending is to expand old memory
return 100 samples or samples

Step2
Max_action to limit kind of degree(suppose 1degree or so)
tanh is going to apply on layer3 and take up max action
This is the step where we decide particular rotation value or action by what value x.



Step3
Here we defined the 2 critic
State dims is state parameter.
Both critic have different weight as they are defined as different layer.
Q1 is something is written to train our actor later on only forward prop.
we have decided to train Actor for the first critic.
It doesn't matter which critic to take on take first or second or average of both.
we took first critic model to train

Step4
How robot is standing,moving, what it's Exact state right now.
At the time of initialization actor target and actor model weight is same because we are going to load model weight into target then we are going to load
via dictionary
both the critic are defined in critic class so we use critic mostly and also x & u are same for both critic.

Also we define a function action where state is changed before providing it as parameter in actor to take any action over it,then forward step is been taken and send back to cpu and extract the data
and then i have to convert to numpy array and then i have to flattern it and this is what it is going to tell an action.

Step5
Train Function
Self is t3d class
replay buffer is object of replay buffer class.
discount -  discounting engine for bellman equation.
Tau is something which is used for polyak averaging
policy_noise is The noise we add to our action.
noise_clip is something which of action would be.
policy_freg -  how frequently we are going to update out actor.
Iterations
sample function is going to return batch_rewards and much more.

Step 6
next action is going into critic.

Step 7
batch action is converted into tensor data, tensor is not just data,int 32 will contain more space when associated with tensor
pytorch and cuda interact to provide this advantage like we can try sys function and all, we just need to extract data
normal_  -  it is gaussian distribution available in torch.0 is axis and policy noise is deviation from that axis.
clamp it
next_action is to clamp, max_action is something which environment is going to decide


Step8
next action and next state is going into critic, forward will going to call critic1 and critic 2, function forward and return x1 and x2(that we will get)
which we are unpacking it in target_q1 and target_q2

Step9
we are going to take min of(target_q1 and target_q2).

Step10
we need to first detach that branch to which tensors are part of.
If episode is done the result is 1(and we need to stop as nothing is to be done now(as episode is over or agent might have collapse or stop performing) else 0.
s -> s1 -> s1 if agent is moving done = 0(u can run or continue running your agent) else if agent stop moving or collapse done is going to be 1(stop running your agent) .


Step11
desc is their

Step12
desc is given their - critic loss = mse loss1 + mse loss2

Step13
weight update mainly

Step 14
policy_freq - train actor once every 2 step.
Actor model is delayed by two step.

Step 15
update target by polyak averaging, updating weights directly, zip(combining the elements)


Step 16
update critic target by polyak averaging.




 




