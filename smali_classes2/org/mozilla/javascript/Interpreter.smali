.class public final Lorg/mozilla/javascript/Interpreter;
.super Lorg/mozilla/javascript/Icode;
.source "Interpreter.java"

# interfaces
.implements Lorg/mozilla/javascript/Evaluator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/Interpreter$GeneratorState;,
        Lorg/mozilla/javascript/Interpreter$ContinuationJump;,
        Lorg/mozilla/javascript/Interpreter$CallFrame;
    }
.end annotation


# static fields
.field static final EXCEPTION_HANDLER_SLOT:I = 0x2

.field static final EXCEPTION_LOCAL_SLOT:I = 0x4

.field static final EXCEPTION_SCOPE_SLOT:I = 0x5

.field static final EXCEPTION_SLOT_SIZE:I = 0x6

.field static final EXCEPTION_TRY_END_SLOT:I = 0x1

.field static final EXCEPTION_TRY_START_SLOT:I = 0x0

.field static final EXCEPTION_TYPE_SLOT:I = 0x3


# instance fields
.field itsData:Lorg/mozilla/javascript/InterpreterData;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lorg/mozilla/javascript/Icode;-><init>()V

    return-void
.end method

.method private static addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V
    .locals 2

    .line 3177
    iget v0, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    iget v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    iget p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    sub-int/2addr v1, p1

    add-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    .line 3178
    iget p1, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    iget p2, p0, Lorg/mozilla/javascript/Context;->instructionThreshold:I

    if-le p1, p2, :cond_0

    .line 3179
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Context;->observeInstructionCount(I)V

    const/4 p1, 0x0

    .line 3180
    iput p1, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    :cond_0
    return-void
.end method

.method private static bytecodeSpan(I)I
    .locals 4

    const/16 v0, -0x36

    const/4 v1, 0x3

    if-eq p0, v0, :cond_4

    const/16 v0, -0x17

    if-eq p0, v0, :cond_4

    const/16 v0, -0x15

    const/4 v2, 0x5

    if-eq p0, v0, :cond_3

    const/16 v0, 0x32

    if-eq p0, v0, :cond_2

    const/16 v0, 0x39

    const/4 v3, 0x2

    if-eq p0, v0, :cond_1

    const/16 v0, 0x48

    if-eq p0, v0, :cond_2

    if-eq p0, v2, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_4

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    .line 570
    invoke-static {p0}, Lorg/mozilla/javascript/Icode;->validBytecode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    return v3

    :pswitch_1
    return v1

    :pswitch_2
    return v2

    :pswitch_3
    return v3

    :pswitch_4
    return v1

    :pswitch_5
    return v2

    :pswitch_6
    return v3

    :pswitch_7
    return v1

    :pswitch_8
    return v2

    :cond_1
    :pswitch_9
    return v3

    :cond_2
    :pswitch_a
    return v1

    :cond_3
    return v2

    :cond_4
    :pswitch_b
    return v1

    :pswitch_data_0
    .packed-switch -0x3f
        :pswitch_a
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x31
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x28
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x1c
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch -0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method public static captureContinuation(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/NativeContinuation;
    .locals 2

    .line 2973
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v1, :cond_0

    .line 2978
    check-cast v0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/mozilla/javascript/Interpreter;->captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;

    move-result-object p0

    return-object p0

    .line 2976
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Interpreter frames not found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;
    .locals 6

    .line 2984
    new-instance v0, Lorg/mozilla/javascript/NativeContinuation;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeContinuation;-><init>()V

    .line 2985
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    move-object p0, p1

    move-object v1, p0

    :goto_0
    if-eqz p0, :cond_3

    .line 2991
    iget-boolean v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez v2, :cond_3

    const/4 v1, 0x1

    .line 2992
    iput-boolean v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 2994
    iget v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    add-int/2addr v2, v1

    :goto_1
    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    array-length v3, v1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    .line 2996
    aput-object v4, v1, v2

    .line 2997
    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    const/4 v3, 0x0

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2999
    :cond_0
    iget v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    const/16 v3, 0x26

    if-ne v2, v3, :cond_1

    .line 3001
    iget v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    aput-object v4, v1, v2

    goto :goto_2

    :cond_1
    const/16 v1, 0x1e

    if-ne v2, v1, :cond_2

    .line 3009
    :goto_2
    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    goto :goto_0

    .line 3003
    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v4

    :cond_3
    if-eqz p2, :cond_6

    .line 3013
    :goto_3
    iget-object p0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz p0, :cond_4

    move-object v1, p0

    goto :goto_3

    .line 3016
    :cond_4
    iget-boolean p0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->isContinuationsTopFrame:Z

    if-eqz p0, :cond_5

    goto :goto_4

    .line 3017
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot capture continuation from JavaScript code not called directly by executeScriptWithContinuations or callFunctionWithContinuations"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3024
    :cond_6
    :goto_4
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/NativeContinuation;->initImplementation(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static captureFrameForGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .locals 2

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 163
    invoke-virtual {p0}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v0

    const/4 v1, 0x0

    .line 164
    iput-boolean v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    const/4 p0, 0x0

    .line 167
    iput-object p0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 168
    iput v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    return-object v0
.end method

.method private static doAdd([Ljava/lang/Object;[DILorg/mozilla/javascript/Context;)V
    .locals 7

    add-int/lit8 v0, p2, 0x1

    .line 3073
    aget-object v1, p0, v0

    .line 3074
    aget-object v2, p0, p2

    .line 3077
    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v3, :cond_1

    .line 3078
    aget-wide v0, p1, v0

    if-ne v2, v3, :cond_0

    .line 3080
    aget-wide v2, p1, p2

    add-double/2addr v2, v0

    aput-wide v2, p1, p2

    return-void

    :cond_0
    const/4 v3, 0x1

    move-wide v5, v0

    move-object v1, v2

    move-wide v2, v5

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v3, :cond_7

    .line 3086
    aget-wide v2, p1, p2

    const/4 v0, 0x0

    .line 3109
    :goto_0
    instance-of v4, v1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v4, :cond_3

    .line 3110
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    .line 3116
    :goto_1
    invoke-static {p1, v1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p0, p2

    goto :goto_3

    .line 3117
    :cond_3
    instance-of p3, v1, Ljava/lang/CharSequence;

    if-eqz p3, :cond_5

    .line 3118
    check-cast v1, Ljava/lang/CharSequence;

    .line 3119
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz v0, :cond_4

    .line 3121
    new-instance p3, Lorg/mozilla/javascript/ConsString;

    invoke-direct {p3, v1, p1}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aput-object p3, p0, p2

    goto :goto_3

    .line 3123
    :cond_4
    new-instance p3, Lorg/mozilla/javascript/ConsString;

    invoke-direct {p3, p1, v1}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aput-object p3, p0, p2

    goto :goto_3

    .line 3126
    :cond_5
    instance-of p3, v1, Ljava/lang/Number;

    if-eqz p3, :cond_6

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_2

    :cond_6
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    .line 3128
    :goto_2
    sget-object p3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    aput-object p3, p0, p2

    add-double/2addr v0, v2

    .line 3129
    aput-wide v0, p1, p2

    :goto_3
    return-void

    .line 3091
    :cond_7
    instance-of v0, v2, Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_d

    instance-of v0, v1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_8

    goto :goto_7

    .line 3093
    :cond_8
    instance-of p3, v2, Ljava/lang/CharSequence;

    if-nez p3, :cond_c

    instance-of p3, v1, Ljava/lang/CharSequence;

    if-eqz p3, :cond_9

    goto :goto_6

    .line 3098
    :cond_9
    instance-of p3, v2, Ljava/lang/Number;

    if-eqz p3, :cond_a

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    goto :goto_4

    :cond_a
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    .line 3100
    :goto_4
    instance-of p3, v1, Ljava/lang/Number;

    if-eqz p3, :cond_b

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_5

    :cond_b
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    .line 3102
    :goto_5
    sget-object p3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    aput-object p3, p0, p2

    add-double/2addr v2, v0

    .line 3103
    aput-wide v2, p1, p2

    goto :goto_8

    .line 3094
    :cond_c
    :goto_6
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 3095
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p3

    .line 3096
    new-instance v0, Lorg/mozilla/javascript/ConsString;

    invoke-direct {v0, p1, p3}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aput-object v0, p0, p2

    goto :goto_8

    .line 3092
    :cond_d
    :goto_7
    invoke-static {v2, v1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p0, p2

    :goto_8
    return-void
.end method

.method private static doArithmetic(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I
    .locals 4

    .line 3135
    invoke-static {p0, p4}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v0

    add-int/lit8 p4, p4, -0x1

    .line 3137
    invoke-static {p0, p4}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v2

    .line 3138
    sget-object p0, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    aput-object p0, p2, p4

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    rem-double/2addr v2, v0

    goto :goto_0

    :pswitch_1
    div-double/2addr v2, v0

    goto :goto_0

    :pswitch_2
    mul-double v2, v2, v0

    goto :goto_0

    :pswitch_3
    sub-double/2addr v2, v0

    .line 3153
    :goto_0
    aput-wide v2, p3, p4

    return p4

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static doBitOp(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I
    .locals 2

    add-int/lit8 v0, p4, -0x1

    .line 2168
    invoke-static {p0, v0}, Lorg/mozilla/javascript/Interpreter;->stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I

    move-result v0

    .line 2169
    invoke-static {p0, p4}, Lorg/mozilla/javascript/Interpreter;->stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I

    move-result p0

    add-int/lit8 p4, p4, -0x1

    .line 2170
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    aput-object v1, p2, p4

    const/16 p2, 0x12

    if-eq p1, p2, :cond_1

    const/16 p2, 0x13

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    and-int/2addr v0, p0

    goto :goto_0

    :pswitch_1
    xor-int/2addr v0, p0

    goto :goto_0

    :pswitch_2
    or-int/2addr v0, p0

    goto :goto_0

    :cond_0
    shr-int/2addr v0, p0

    goto :goto_0

    :cond_1
    shl-int/2addr v0, p0

    :goto_0
    int-to-double p0, v0

    .line 2188
    aput-wide p0, p3, p4

    return p4

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static doCallSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[BI)I
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move/from16 v4, p6

    .line 2263
    iget v5, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v6, v3, v5

    and-int/lit16 v13, v6, 0xff

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 2264
    aget-byte v5, v3, v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 2265
    :goto_0
    iget v5, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v5, v5, 0x2

    invoke-static {v3, v5}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v15

    if-eqz v6, :cond_2

    sub-int v3, p4, v4

    .line 2272
    aget-object v5, v1, v3

    .line 2273
    sget-object v6, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v5, v6, :cond_1

    .line 2274
    aget-wide v5, v2, v3

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v5

    :cond_1
    add-int/lit8 v6, v3, 0x1

    .line 2275
    invoke-static {v1, v2, v6, v4}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v2

    .line 2277
    iget-object v4, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v6, p0

    invoke-static {v6, v5, v2, v4, v13}, Lorg/mozilla/javascript/ScriptRuntime;->newSpecial(Lorg/mozilla/javascript/Context;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    goto :goto_1

    :cond_2
    move-object/from16 v6, p0

    add-int/lit8 v3, v4, 0x1

    sub-int v3, p4, v3

    add-int/lit8 v5, v3, 0x1

    .line 2285
    aget-object v5, v1, v5

    move-object v9, v5

    check-cast v9, Lorg/mozilla/javascript/Scriptable;

    .line 2286
    aget-object v5, v1, v3

    move-object v8, v5

    check-cast v8, Lorg/mozilla/javascript/Callable;

    add-int/lit8 v5, v3, 0x2

    .line 2287
    invoke-static {v1, v2, v5, v4}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v10

    .line 2289
    iget-object v11, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v12, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v14, v2, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    move-object/from16 v7, p0

    invoke-static/range {v7 .. v15}, Lorg/mozilla/javascript/ScriptRuntime;->callSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ILjava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    .line 2294
    :goto_1
    iget v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    return v3
.end method

.method private static doCompare(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I
    .locals 5

    add-int/lit8 p4, p4, -0x1

    add-int/lit8 v0, p4, 0x1

    .line 2111
    aget-object v1, p2, v0

    .line 2112
    aget-object v2, p2, p4

    .line 2119
    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    .line 2120
    aget-wide v0, p3, v0

    .line 2121
    invoke-static {p0, p4}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v2

    goto :goto_0

    :cond_0
    if-ne v2, v3, :cond_1

    .line 2123
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    .line 2124
    aget-wide v2, p3, p4

    :goto_0
    const/4 p0, 0x0

    const/4 p3, 0x1

    packed-switch p1, :pswitch_data_0

    .line 2142
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_2

    :pswitch_0
    cmpl-double p1, v2, v0

    if-ltz p1, :cond_2

    :goto_1
    const/4 p0, 0x1

    goto :goto_3

    :pswitch_1
    cmpl-double p1, v2, v0

    if-lez p1, :cond_2

    goto :goto_1

    :pswitch_2
    cmpg-double p1, v2, v0

    if-gtz p1, :cond_2

    goto :goto_1

    :pswitch_3
    cmpg-double p1, v2, v0

    if-gez p1, :cond_2

    goto :goto_1

    :goto_2
    throw v4

    :cond_1
    packed-switch p1, :pswitch_data_1

    .line 2159
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_4

    .line 2147
    :pswitch_4
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_3

    .line 2153
    :pswitch_5
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LT(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_3

    .line 2150
    :pswitch_6
    invoke-static {v2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_3

    .line 2156
    :pswitch_7
    invoke-static {v2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LT(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    .line 2162
    :cond_2
    :goto_3
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, p2, p4

    return p4

    .line 2159
    :goto_4
    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static doDelName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I
    .locals 3

    .line 2194
    aget-object v0, p3, p5

    .line 2195
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    aget-wide v0, p4, p5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_0
    add-int/lit8 p5, p5, -0x1

    .line 2197
    aget-object v1, p3, p5

    .line 2198
    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v2, :cond_1

    aget-wide v1, p4, p5

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    .line 2199
    :cond_1
    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-static {v1, v0, p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->delete(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p3, p5

    return p5
.end method

.method private static doElemIncDec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[B[Ljava/lang/Object;[DI)I
    .locals 3

    .line 2248
    aget-object v0, p3, p5

    .line 2249
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    aget-wide v0, p4, p5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_0
    add-int/lit8 p5, p5, -0x1

    .line 2251
    aget-object v1, p3, p5

    .line 2252
    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v2, :cond_1

    aget-wide v1, p4, p5

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    .line 2253
    :cond_1
    iget-object p4, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget v2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte p2, p2, v2

    invoke-static {v1, v0, p0, p4, p2}, Lorg/mozilla/javascript/ScriptRuntime;->elemIncrDecr(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p3, p5

    .line 2255
    iget p0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    return p5
.end method

.method private static doEquals([Ljava/lang/Object;[DI)Z
    .locals 3

    add-int/lit8 v0, p2, 0x1

    .line 2485
    aget-object v1, p0, v0

    .line 2486
    aget-object p0, p0, p2

    .line 2487
    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v2, :cond_2

    if-ne p0, v2, :cond_1

    .line 2489
    aget-wide v1, p1, p2

    aget-wide p0, p1, v0

    cmpl-double p2, v1, p0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 2491
    :cond_1
    aget-wide v0, p1, v0

    invoke-static {v0, v1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->eqNumber(DLjava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    if-ne p0, v2, :cond_3

    .line 2495
    aget-wide p0, p1, p2

    invoke-static {p0, p1, v1}, Lorg/mozilla/javascript/ScriptRuntime;->eqNumber(DLjava/lang/Object;)Z

    move-result p0

    return p0

    .line 2497
    :cond_3
    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static doGetElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I
    .locals 4

    add-int/lit8 p4, p4, -0x1

    .line 2207
    aget-object v0, p2, p4

    .line 2208
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    .line 2209
    aget-wide v0, p3, p4

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, p4, 0x1

    .line 2212
    aget-object v2, p2, v1

    .line 2213
    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-eq v2, v3, :cond_1

    .line 2214
    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, v2, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectElem(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 2216
    :cond_1
    aget-wide v1, p3, v1

    .line 2217
    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, v1, v2, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectIndex(Ljava/lang/Object;DLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    .line 2219
    :goto_0
    aput-object p0, p2, p4

    return p4
.end method

.method private static doGetVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[DI)I
    .locals 1

    add-int/lit8 p3, p3, 0x1

    .line 2350
    iget-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    if-nez v0, :cond_0

    .line 2351
    aget-object p0, p4, p6

    aput-object p0, p1, p3

    .line 2352
    aget-wide p0, p5, p6

    aput-wide p0, p2, p3

    goto :goto_0

    .line 2354
    :cond_0
    iget-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object p2, p2, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object p2, p2, p6

    .line 2355
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0, p2, p0}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p1, p3

    :goto_0
    return p3
.end method

.method private static doInOrInstanceof(Lorg/mozilla/javascript/Context;I[Ljava/lang/Object;[DI)I
    .locals 3

    .line 2093
    aget-object v0, p2, p4

    .line 2094
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    aget-wide v0, p3, p4

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_0
    add-int/lit8 p4, p4, -0x1

    .line 2096
    aget-object v1, p2, p4

    .line 2097
    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v2, :cond_1

    aget-wide v1, p3, p4

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_1
    const/16 p3, 0x34

    if-ne p1, p3, :cond_2

    .line 2100
    invoke-static {v1, v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->in(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z

    move-result p0

    goto :goto_0

    .line 2102
    :cond_2
    invoke-static {v1, v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->instanceOf(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z

    move-result p0

    .line 2104
    :goto_0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, p2, p4

    return p4
.end method

.method private static doRefMember(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DII)I
    .locals 3

    .line 2405
    aget-object v0, p1, p3

    .line 2406
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    aget-wide v0, p2, p3

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_0
    add-int/lit8 p3, p3, -0x1

    .line 2408
    aget-object v1, p1, p3

    .line 2409
    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v2, :cond_1

    aget-wide v1, p2, p3

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    .line 2410
    :cond_1
    invoke-static {v1, v0, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->memberRef(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;

    move-result-object p0

    aput-object p0, p1, p3

    return p3
.end method

.method private static doRefNsMember(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DII)I
    .locals 4

    .line 2416
    aget-object v0, p1, p3

    .line 2417
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    aget-wide v0, p2, p3

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_0
    add-int/lit8 p3, p3, -0x1

    .line 2419
    aget-object v1, p1, p3

    .line 2420
    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v2, :cond_1

    aget-wide v1, p2, p3

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_1
    add-int/lit8 p3, p3, -0x1

    .line 2422
    aget-object v2, p1, p3

    .line 2423
    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v2, v3, :cond_2

    aget-wide v2, p2, p3

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    .line 2424
    :cond_2
    invoke-static {v2, v1, v0, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->memberRef(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;

    move-result-object p0

    aput-object p0, p1, p3

    return p3
.end method

.method private static doRefNsName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DII)I
    .locals 3

    .line 2431
    aget-object v0, p2, p4

    .line 2432
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    aget-wide v0, p3, p4

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_0
    add-int/lit8 p4, p4, -0x1

    .line 2434
    aget-object v1, p2, p4

    .line 2435
    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v2, :cond_1

    aget-wide v1, p3, p4

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    .line 2436
    :cond_1
    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v0, p0, p1, p5}, Lorg/mozilla/javascript/ScriptRuntime;->nameRef(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;

    move-result-object p0

    aput-object p0, p2, p4

    return p4
.end method

.method private static doSetConstVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I
    .locals 1

    .line 2302
    iget-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    if-nez v0, :cond_1

    .line 2303
    aget v0, p6, p7

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2307
    aget p0, p6, p7

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_3

    .line 2310
    aget-object p0, p1, p3

    aput-object p0, p4, p7

    .line 2311
    aget p0, p6, p7

    and-int/lit8 p0, p0, -0x9

    aput p0, p6, p7

    .line 2312
    aget-wide p0, p2, p3

    aput-wide p0, p5, p7

    goto :goto_0

    .line 2304
    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object p0, p0, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object p0, p0, p7

    const-string p1, "msg.var.redecl"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    .line 2315
    :cond_1
    aget-object p1, p1, p3

    .line 2316
    sget-object p4, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne p1, p4, :cond_2

    aget-wide p1, p2, p3

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    .line 2317
    :cond_2
    iget-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object p2, p2, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object p2, p2, p7

    .line 2318
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    instance-of p4, p0, Lorg/mozilla/javascript/ConstProperties;

    if-eqz p4, :cond_4

    .line 2319
    move-object p4, p0

    check-cast p4, Lorg/mozilla/javascript/ConstProperties;

    .line 2320
    invoke-interface {p4, p2, p0, p1}, Lorg/mozilla/javascript/ConstProperties;->putConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return p3

    .line 2322
    :cond_4
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    throw p0
.end method

.method private static doSetElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I
    .locals 8

    add-int/lit8 p4, p4, -0x2

    add-int/lit8 v0, p4, 0x2

    .line 2226
    aget-object v1, p2, v0

    .line 2227
    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v2, :cond_0

    .line 2228
    aget-wide v0, p3, v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    .line 2230
    :cond_0
    aget-object v0, p2, p4

    .line 2231
    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v2, :cond_1

    .line 2232
    aget-wide v2, p3, p4

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_1
    move-object v2, v0

    add-int/lit8 v0, p4, 0x1

    .line 2235
    aget-object v3, p2, v0

    .line 2236
    sget-object v4, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-eq v3, v4, :cond_2

    .line 2237
    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2, v3, v1, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectElem(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    goto :goto_0

    .line 2239
    :cond_2
    aget-wide v3, p3, v0

    .line 2240
    iget-object v7, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v5, v1

    move-object v6, p0

    invoke-static/range {v2 .. v7}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectIndex(Ljava/lang/Object;DLjava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 2242
    :goto_0
    aput-object v1, p2, p4

    return p4
.end method

.method private static doSetVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I
    .locals 1

    .line 2331
    iget-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    if-nez v0, :cond_0

    .line 2332
    aget p0, p6, p7

    and-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_2

    .line 2333
    aget-object p0, p1, p3

    aput-object p0, p4, p7

    .line 2334
    aget-wide p0, p2, p3

    aput-wide p0, p5, p7

    goto :goto_0

    .line 2337
    :cond_0
    aget-object p1, p1, p3

    .line 2338
    sget-object p4, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne p1, p4, :cond_1

    aget-wide p1, p2, p3

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    .line 2339
    :cond_1
    iget-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object p2, p2, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object p2, p2, p7

    .line 2340
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0, p2, p0, p1}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return p3
.end method

.method private static doShallowEquals([Ljava/lang/Object;[DI)Z
    .locals 4

    add-int/lit8 v0, p2, 0x1

    .line 2505
    aget-object v1, p0, v0

    .line 2506
    aget-object p0, p0, p2

    .line 2507
    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 2510
    aget-wide v0, p1, v0

    if-ne p0, v2, :cond_0

    .line 2512
    aget-wide p0, p1, p2

    goto :goto_0

    .line 2513
    :cond_0
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1

    .line 2514
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    if-ne p0, v2, :cond_4

    .line 2519
    aget-wide p0, p1, p2

    .line 2520
    instance-of p2, v1, Ljava/lang/Number;

    if-eqz p2, :cond_3

    .line 2521
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :goto_0
    cmpl-double p2, p0, v0

    if-nez p2, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3

    .line 2526
    :cond_4
    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static doVarIncDec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I
    .locals 7

    const/4 v0, 0x1

    add-int/2addr p4, v0

    .line 2367
    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v2, v2, v3

    .line 2368
    iget-boolean v3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    if-nez v3, :cond_8

    .line 2369
    aget-object p0, p5, p8

    .line 2371
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne p0, v1, :cond_0

    .line 2372
    aget-wide v3, p6, p8

    goto :goto_0

    .line 2374
    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v3

    :goto_0
    and-int/lit8 v1, v2, 0x1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-nez v1, :cond_1

    add-double/2addr v5, v3

    goto :goto_1

    :cond_1
    sub-double v5, v3, v5

    :goto_1
    and-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 2379
    :goto_2
    aget p7, p7, p8

    and-int/2addr p7, v0

    if-nez p7, :cond_5

    .line 2380
    sget-object p7, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-eq p0, p7, :cond_3

    .line 2381
    aput-object p7, p5, p8

    .line 2383
    :cond_3
    aput-wide v5, p6, p8

    .line 2384
    sget-object p0, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    aput-object p0, p2, p4

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move-wide v3, v5

    .line 2385
    :goto_3
    aput-wide v3, p3, p4

    goto :goto_5

    :cond_5
    if-eqz v1, :cond_6

    .line 2387
    sget-object p5, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-eq p0, p5, :cond_6

    .line 2388
    aput-object p0, p2, p4

    goto :goto_5

    .line 2390
    :cond_6
    sget-object p0, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    aput-object p0, p2, p4

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    move-wide v3, v5

    .line 2391
    :goto_4
    aput-wide v3, p3, p4

    goto :goto_5

    .line 2395
    :cond_8
    iget-object p3, v1, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object p3, p3, p8

    .line 2396
    iget-object p5, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {p5, p3, p0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->nameIncrDecr(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p2, p4

    .line 2399
    :goto_5
    iget p0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr p0, v0

    iput p0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    return p4
.end method

.method static dumpICode(Lorg/mozilla/javascript/InterpreterData;)V
    .locals 0

    return-void
.end method

.method private static enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V
    .locals 4

    .line 2868
    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    .line 2869
    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_6

    .line 2871
    :cond_1
    iget-object v2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    if-eqz p3, :cond_4

    .line 2884
    :cond_2
    :goto_1
    instance-of p3, v2, Lorg/mozilla/javascript/NativeWith;

    if-eqz p3, :cond_4

    .line 2885
    invoke-interface {v2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2886
    iget-object p3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz p3, :cond_2

    iget-object p3, p3, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    if-eq p3, v2, :cond_3

    goto :goto_1

    .line 2892
    :cond_3
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v3

    :cond_4
    if-eqz v1, :cond_5

    .line 2903
    iget-object p3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p3, p0, v2, p1, p2}, Lorg/mozilla/javascript/debug/DebugFrame;->onEnter(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    :cond_5
    if-eqz v0, :cond_6

    .line 2909
    invoke-static {p0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->enterActivationFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    :cond_6
    return-void

    .line 2873
    :cond_7
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v3
.end method

.method private static exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V
    .locals 2

    .line 2917
    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz v0, :cond_0

    .line 2918
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->exitActivationFunction(Lorg/mozilla/javascript/Context;)V

    .line 2921
    :cond_0
    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v0, :cond_5

    .line 2923
    :try_start_0
    instance-of v1, p2, Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    .line 2924
    invoke-interface {v0, p0, p1, p2}, Lorg/mozilla/javascript/debug/DebugFrame;->onExit(Lorg/mozilla/javascript/Context;ZLjava/lang/Object;)V

    goto :goto_2

    .line 2927
    :cond_1
    check-cast p2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    if-nez p2, :cond_2

    .line 2929
    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    goto :goto_0

    .line 2931
    :cond_2
    iget-object v0, p2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    .line 2933
    :goto_0
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_4

    if-nez p2, :cond_3

    .line 2936
    iget-wide v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    goto :goto_1

    .line 2938
    :cond_3
    iget-wide v0, p2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D

    .line 2940
    :goto_1
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    .line 2942
    :cond_4
    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2, v0}, Lorg/mozilla/javascript/debug/DebugFrame;->onExit(Lorg/mozilla/javascript/Context;ZLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 2945
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "RHINO USAGE WARNING: onExit terminated with exception"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2947
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private static freezeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;)Ljava/lang/Object;
    .locals 3

    .line 2631
    iget p3, p3, Lorg/mozilla/javascript/Interpreter$GeneratorState;->operation:I

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 p3, 0x1

    .line 2636
    iput-boolean p3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 2637
    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v0, p2

    iput-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    .line 2638
    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aget-wide v1, v0, p2

    iput-wide v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    .line 2639
    iput p2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    .line 2640
    iget p2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    sub-int/2addr p2, p3

    iput p2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 2641
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->exitActivationFunction(Lorg/mozilla/javascript/Context;)V

    .line 2642
    iget-object p0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    sget-object p2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide p0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const-string p0, "msg.yield.closing"

    .line 2633
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;
    .locals 4

    if-nez p3, :cond_0

    .line 3161
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    return-object p0

    .line 3163
    :cond_0
    new-array v0, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-eq v1, p3, :cond_2

    .line 3165
    aget-object v2, p0, p2

    .line 3166
    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v2, v3, :cond_1

    .line 3167
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    .line 3169
    :cond_1
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static getEncodedSource(Lorg/mozilla/javascript/InterpreterData;)Ljava/lang/String;
    .locals 2

    .line 776
    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->encodedSource:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 779
    :cond_0
    iget v1, p0, Lorg/mozilla/javascript/InterpreterData;->encodedSourceStart:I

    iget p0, p0, Lorg/mozilla/javascript/InterpreterData;->encodedSourceEnd:I

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getExceptionHandler(Lorg/mozilla/javascript/Interpreter$CallFrame;Z)I
    .locals 9

    .line 240
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 249
    :cond_0
    iget p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v2, 0x1

    sub-int/2addr p0, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 253
    :goto_0
    array-length v6, v0

    if-eq v3, v6, :cond_8

    add-int/lit8 v6, v3, 0x0

    .line 254
    aget v6, v0, v6

    add-int/lit8 v7, v3, 0x1

    .line 255
    aget v7, v0, v7

    if-gt v6, p0, :cond_7

    if-lt p0, v7, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    add-int/lit8 v8, v3, 0x3

    .line 259
    aget v8, v0, v8

    if-eq v8, v2, :cond_2

    goto :goto_2

    :cond_2
    if-ltz v1, :cond_6

    if-ge v4, v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    if-gt v5, v6, :cond_5

    if-eq v4, v7, :cond_4

    goto :goto_1

    .line 271
    :cond_4
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v1

    .line 270
    :cond_5
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v1

    :cond_6
    :goto_1
    move v1, v3

    move v5, v6

    move v4, v7

    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x6

    goto :goto_0

    :cond_8
    return v1
.end method

.method private static getIndex([BI)I
    .locals 1

    .line 229
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private static getInt([BI)I
    .locals 2

    .line 233
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method static getLineNumbers(Lorg/mozilla/javascript/InterpreterData;)[I
    .locals 7

    .line 576
    new-instance v0, Lorg/mozilla/javascript/UintMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/UintMap;-><init>()V

    .line 578
    iget-object p0, p0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 579
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eq v3, v1, :cond_2

    .line 581
    aget-byte v4, p0, v3

    .line 582
    invoke-static {v4}, Lorg/mozilla/javascript/Interpreter;->bytecodeSpan(I)I

    move-result v5

    const/16 v6, -0x1a

    if-ne v4, v6, :cond_1

    const/4 v4, 0x3

    if-ne v5, v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 585
    invoke-static {p0, v4}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v4

    .line 586
    invoke-virtual {v0, v4, v2}, Lorg/mozilla/javascript/UintMap;->put(II)V

    goto :goto_1

    .line 584
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_1
    add-int/2addr v3, v5

    goto :goto_0

    .line 591
    :cond_2
    invoke-virtual {v0}, Lorg/mozilla/javascript/UintMap;->getKeys()[I

    move-result-object p0

    return-object p0
.end method

.method private static getShort([BI)I
    .locals 1

    .line 225
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private static initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/Interpreter$CallFrame;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    .line 2727
    iget-object v5, v2, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 2729
    iget-boolean v6, v5, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    .line 2731
    iget-object v7, v0, Lorg/mozilla/javascript/Context;->debugger:Lorg/mozilla/javascript/debug/Debugger;

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_0

    .line 2732
    invoke-interface {v7, v0, v5}, Lorg/mozilla/javascript/debug/Debugger;->getFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/debug/DebuggableScript;)Lorg/mozilla/javascript/debug/DebugFrame;

    move-result-object v7

    if-eqz v7, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move-object v7, v8

    :cond_1
    :goto_0
    if-eqz v6, :cond_3

    if-eqz p4, :cond_2

    .line 2742
    invoke-static/range {p3 .. p6}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v11

    goto :goto_1

    :cond_2
    move-object/from16 v11, p3

    :goto_1
    move-object v13, v8

    const/4 v12, 0x0

    goto :goto_2

    :cond_3
    move-object/from16 v11, p3

    move-object/from16 v13, p4

    move/from16 v12, p5

    .line 2749
    :goto_2
    iget v14, v5, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    if-eqz v14, :cond_4

    .line 2750
    invoke-virtual/range {p7 .. p7}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v14

    if-eqz v6, :cond_5

    .line 2753
    invoke-static {v2, v14, v11}, Lorg/mozilla/javascript/ScriptRuntime;->createFunctionActivation(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v14

    goto :goto_3

    .line 2758
    :cond_4
    iget-object v14, v2, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v14, v14, Lorg/mozilla/javascript/InterpreterData;->evalScriptFlag:Z

    move-object/from16 v15, p1

    invoke-static {v2, v1, v0, v15, v14}, Lorg/mozilla/javascript/ScriptRuntime;->initScript(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V

    move-object v14, v15

    .line 2762
    :cond_5
    :goto_3
    iget-object v15, v5, Lorg/mozilla/javascript/InterpreterData;->itsNestedFunctions:[Lorg/mozilla/javascript/InterpreterData;

    if-eqz v15, :cond_9

    .line 2763
    iget v15, v5, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    if-eqz v15, :cond_7

    iget-boolean v15, v5, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz v15, :cond_6

    goto :goto_4

    .line 2764
    :cond_6
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v8

    :cond_7
    :goto_4
    const/4 v15, 0x0

    .line 2765
    :goto_5
    iget-object v8, v5, Lorg/mozilla/javascript/InterpreterData;->itsNestedFunctions:[Lorg/mozilla/javascript/InterpreterData;

    array-length v10, v8

    if-ge v15, v10, :cond_9

    .line 2766
    aget-object v8, v8, v15

    .line 2767
    iget v8, v8, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    if-ne v8, v9, :cond_8

    .line 2768
    invoke-static {v0, v14, v2, v15}, Lorg/mozilla/javascript/Interpreter;->initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)V

    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 2775
    :cond_9
    iget v8, v5, Lorg/mozilla/javascript/InterpreterData;->itsMaxVars:I

    iget v10, v5, Lorg/mozilla/javascript/InterpreterData;->itsMaxLocals:I

    add-int/2addr v8, v10

    sub-int/2addr v8, v9

    .line 2776
    iget v10, v5, Lorg/mozilla/javascript/InterpreterData;->itsMaxFrameArray:I

    .line 2777
    iget v15, v5, Lorg/mozilla/javascript/InterpreterData;->itsMaxStack:I

    add-int/2addr v15, v8

    add-int/2addr v15, v9

    if-ne v10, v15, :cond_13

    .line 2784
    iget-object v15, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    if-eqz v15, :cond_a

    array-length v9, v15

    if-gt v10, v9, :cond_a

    .line 2788
    iget-object v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    .line 2789
    iget-object v10, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    const/16 v16, 0x1

    goto :goto_6

    .line 2792
    :cond_a
    new-array v15, v10, [Ljava/lang/Object;

    .line 2793
    new-array v9, v10, [I

    .line 2794
    new-array v10, v10, [D

    const/16 v16, 0x0

    .line 2797
    :goto_6
    invoke-virtual {v5}, Lorg/mozilla/javascript/InterpreterData;->getParamAndVarCount()I

    move-result v0

    move-object/from16 p3, v13

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v0, :cond_c

    .line 2799
    invoke-virtual {v5, v13}, Lorg/mozilla/javascript/InterpreterData;->getParamOrVarConst(I)Z

    move-result v17

    if-eqz v17, :cond_b

    const/16 v17, 0xd

    .line 2800
    aput v17, v9, v13

    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 2802
    :cond_c
    iget v0, v5, Lorg/mozilla/javascript/InterpreterData;->argCount:I

    move/from16 v13, p6

    if-le v0, v13, :cond_d

    goto :goto_8

    :cond_d
    move v13, v0

    .line 2807
    :goto_8
    iput-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-nez v3, :cond_e

    const/4 v0, 0x0

    goto :goto_9

    .line 2808
    :cond_e
    iget v0, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    :goto_9
    iput v0, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    .line 2810
    iget v0, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Context;->getMaximumInterpreterStackDepth()I

    move-result v3

    if-gt v0, v3, :cond_12

    const/4 v0, 0x0

    .line 2814
    iput-boolean v0, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 2816
    iput-object v2, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    .line 2817
    iput-object v5, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 2819
    iput-object v15, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    .line 2820
    iput-object v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    .line 2821
    iput-object v10, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    .line 2822
    iput-object v4, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 2823
    iget v0, v5, Lorg/mozilla/javascript/InterpreterData;->itsMaxVars:I

    iput v0, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    .line 2824
    iput v8, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->emptyStackTop:I

    .line 2826
    iput-object v7, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    .line 2827
    iput-boolean v6, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    .line 2829
    iput-object v1, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    .line 2833
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    iput-object v0, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2834
    iput v0, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 2835
    iput v0, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    .line 2836
    iget v1, v5, Lorg/mozilla/javascript/InterpreterData;->firstLinePC:I

    iput v1, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    .line 2837
    iput-object v14, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 2839
    iput v8, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    .line 2840
    iput v0, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    .line 2842
    invoke-static {v11, v12, v15, v0, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p3, :cond_f

    move-object/from16 v1, p3

    .line 2844
    invoke-static {v1, v12, v10, v0, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2846
    :cond_f
    :goto_a
    iget v0, v5, Lorg/mozilla/javascript/InterpreterData;->itsMaxVars:I

    if-eq v13, v0, :cond_10

    .line 2847
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aput-object v0, v15, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_10
    if-eqz v16, :cond_11

    const/4 v0, 0x1

    add-int/2addr v8, v0

    .line 2852
    :goto_b
    array-length v0, v15

    if-eq v8, v0, :cond_11

    const/4 v0, 0x0

    .line 2853
    aput-object v0, v15, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_11
    const/4 v1, 0x0

    move-object/from16 v0, p0

    .line 2857
    invoke-static {v0, v4, v11, v1}, Lorg/mozilla/javascript/Interpreter;->enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V

    return-void

    :cond_12
    const-string v0, "Exceeded maximum stack depth"

    .line 2812
    invoke-static {v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    .line 2778
    :cond_13
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    throw v0
.end method

.method private static initFrameForApplyOrCall(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DIILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/InterpretedFunction;)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    add-int/lit8 v6, v3, 0x2

    .line 2678
    aget-object v7, p3, v6

    .line 2679
    sget-object v8, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v7, v8, :cond_0

    .line 2680
    aget-wide v6, p4, v6

    invoke-static {v6, v7}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v7

    .line 2681
    :cond_0
    iget-object v6, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {p0, v7, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    goto :goto_0

    :cond_1
    move-object v6, v5

    :goto_0
    if-nez v6, :cond_2

    .line 2688
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    :cond_2
    const/16 v7, -0x37

    if-ne v4, v7, :cond_3

    .line 2691
    invoke-static {p0, p1, v5}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    .line 2692
    iget-object v1, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    goto :goto_1

    .line 2695
    :cond_3
    iput v3, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    .line 2696
    iput v4, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    :goto_1
    move-object v8, v1

    .line 2698
    new-instance v10, Lorg/mozilla/javascript/Interpreter$CallFrame;

    invoke-direct {v10, v5}, Lorg/mozilla/javascript/Interpreter$CallFrame;-><init>(Lorg/mozilla/javascript/Interpreter$1;)V

    .line 2699
    invoke-static/range {p8 .. p8}, Lorg/mozilla/javascript/BaseFunction;->isApply(Lorg/mozilla/javascript/IdFunctionObject;)Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_5

    if-ge v2, v4, :cond_4

    .line 2700
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v3, 0x3

    aget-object v1, p3, v1

    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getApplyArguments(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    :goto_2
    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2702
    array-length v7, v3

    move-object v0, p0

    move-object/from16 v1, p7

    move-object v2, v6

    move v6, v7

    move-object/from16 v7, p9

    move-object v9, v10

    invoke-static/range {v0 .. v9}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    goto :goto_5

    :cond_5
    const/4 v1, 0x1

    const/4 v5, 0x1

    :goto_3
    if-ge v5, v2, :cond_6

    add-int/lit8 v7, v3, 0x1

    add-int/2addr v7, v5

    add-int/lit8 v9, v3, 0x2

    add-int/2addr v9, v5

    .line 2708
    aget-object v11, p3, v9

    aput-object v11, p3, v7

    .line 2709
    aget-wide v11, p4, v9

    aput-wide v11, p4, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    if-ge v2, v4, :cond_7

    const/4 v1, 0x0

    const/4 v7, 0x0

    goto :goto_4

    :cond_7
    add-int/lit8 v1, v2, -0x1

    move v7, v1

    :goto_4
    add-int/lit8 v5, v3, 0x2

    move-object v0, p0

    move-object/from16 v1, p7

    move-object v2, v6

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v6, v7

    move-object/from16 v7, p9

    move-object v9, v10

    .line 2712
    invoke-static/range {v0 .. v9}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    :goto_5
    return-object v10
.end method

.method private static initFrameForNoSuchMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DIILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;Lorg/mozilla/javascript/InterpretedFunction;)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .locals 15

    move-object v0, p0

    move-object/from16 v10, p1

    move/from16 v1, p2

    move/from16 v11, p5

    move/from16 v12, p6

    add-int/lit8 v2, v11, 0x2

    .line 2453
    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    move v5, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 2455
    aget-object v6, p3, v5

    .line 2456
    sget-object v7, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v6, v7, :cond_0

    .line 2457
    aget-wide v6, p4, v5

    invoke-static {v6, v7}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v6

    .line 2459
    :cond_0
    aput-object v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 2461
    new-array v5, v1, [Ljava/lang/Object;

    move-object/from16 v1, p9

    .line 2462
    iget-object v1, v1, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;->methodName:Ljava/lang/String;

    aput-object v1, v5, v4

    move-object/from16 v1, p8

    .line 2463
    invoke-virtual {p0, v1, v3}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v5, v3

    .line 2467
    new-instance v13, Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/4 v2, 0x0

    invoke-direct {v13, v2}, Lorg/mozilla/javascript/Interpreter$CallFrame;-><init>(Lorg/mozilla/javascript/Interpreter$1;)V

    const/16 v14, -0x37

    if-ne v12, v14, :cond_2

    .line 2469
    iget-object v3, v10, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 2470
    invoke-static {p0, v10, v2}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    move-object v8, v3

    goto :goto_1

    :cond_2
    move-object v8, v10

    :goto_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p7

    move-object v3, v5

    move v5, v6

    move v6, v7

    move-object/from16 v7, p10

    move-object v9, v13

    .line 2474
    invoke-static/range {v0 .. v9}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    if-eq v12, v14, :cond_3

    .line 2477
    iput v11, v10, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    .line 2478
    iput v12, v10, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    :cond_3
    return-object v13
.end method

.method private static initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)V
    .locals 1

    .line 787
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/InterpretedFunction;->createFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)Lorg/mozilla/javascript/InterpretedFunction;

    move-result-object p3

    .line 788
    iget-object v0, p3, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    iget-object p2, p2, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean p2, p2, Lorg/mozilla/javascript/InterpreterData;->evalScriptFlag:Z

    invoke-static {p0, p1, p3, v0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeFunction;IZ)V

    return-void
.end method

.method static interpret(Lorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v0, p0

    move-object v11, p1

    .line 796
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->hasTopCall(Lorg/mozilla/javascript/Context;)Z

    move-result v1

    const/4 v12, 0x0

    if-eqz v1, :cond_1

    .line 798
    iget-object v8, v11, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    iget-object v2, v0, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    if-eq v8, v2, :cond_0

    .line 800
    iput-object v2, v11, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    .line 802
    :try_start_0
    iget-object v1, v0, Lorg/mozilla/javascript/InterpretedFunction;->securityController:Lorg/mozilla/javascript/SecurityController;

    move-object v3, p1

    move-object v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lorg/mozilla/javascript/SecurityController;->callWithDomain(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    iput-object v8, v11, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    return-object v0

    :catchall_0
    move-exception v0

    iput-object v8, v11, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    throw v0

    .line 809
    :cond_0
    new-instance v13, Lorg/mozilla/javascript/Interpreter$CallFrame;

    invoke-direct {v13, v12}, Lorg/mozilla/javascript/Interpreter$CallFrame;-><init>(Lorg/mozilla/javascript/Interpreter$1;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v4, p4

    .line 810
    array-length v7, v4

    const/4 v9, 0x0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v8, p0

    move-object v10, v13

    invoke-static/range {v1 .. v10}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    .line 812
    iget-boolean v0, v11, Lorg/mozilla/javascript/Context;->isContinuationsTopCall:Z

    iput-boolean v0, v13, Lorg/mozilla/javascript/Interpreter$CallFrame;->isContinuationsTopFrame:Z

    const/4 v0, 0x0

    .line 813
    iput-boolean v0, v11, Lorg/mozilla/javascript/Context;->isContinuationsTopCall:Z

    .line 815
    invoke-static {p1, v13, v12}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 796
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v12
.end method

.method private static interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 45

    move-object/from16 v12, p0

    move-object/from16 v1, p2

    .line 885
    sget-object v13, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 886
    sget-object v14, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 888
    iget v2, v12, Lorg/mozilla/javascript/Context;->instructionThreshold:I

    const/4 v11, 0x1

    if-eqz v2, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 898
    :goto_0
    iget-object v2, v12, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 901
    iget-object v2, v12, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    if-nez v2, :cond_1

    .line 902
    new-instance v2, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v2}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v2, v12, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    .line 904
    :cond_1
    iget-object v2, v12, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    iget-object v3, v12, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/ObjArray;->push(Ljava/lang/Object;)V

    :cond_2
    const/4 v9, 0x0

    if-eqz v1, :cond_5

    .line 916
    instance-of v2, v1, Lorg/mozilla/javascript/Interpreter$GeneratorState;

    if-eqz v2, :cond_3

    .line 917
    check-cast v1, Lorg/mozilla/javascript/Interpreter$GeneratorState;

    .line 920
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    move-object/from16 v3, p1

    invoke-static {v12, v3, v2, v11}, Lorg/mozilla/javascript/Interpreter;->enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V

    move-object v8, v1

    move-object v1, v9

    goto :goto_2

    :cond_3
    move-object/from16 v3, p1

    .line 922
    instance-of v2, v1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    if-eqz v2, :cond_4

    goto :goto_1

    .line 924
    :cond_4
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v9

    :cond_5
    move-object/from16 v3, p1

    :goto_1
    move-object v8, v9

    :goto_2
    const-wide/16 v16, 0x0

    const/16 v18, -0x1

    move-object v4, v9

    move-object/from16 v21, v4

    move-wide/from16 v19, v16

    const/4 v2, -0x1

    :goto_3
    if-eqz v1, :cond_6

    .line 938
    :try_start_0
    invoke-static {v12, v1, v3, v2, v10}, Lorg/mozilla/javascript/Interpreter;->processThrowable(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Interpreter$CallFrame;IZ)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v3

    .line 940
    iget-object v1, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->throwable:Ljava/lang/Object;

    .line 941
    iput-object v9, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->throwable:Ljava/lang/Object;

    goto :goto_5

    :catch_0
    move-exception v0

    move-object/from16 v30, v1

    move-object v5, v3

    move-object v11, v4

    move-object v1, v8

    move/from16 v42, v10

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v43, v14

    const/4 v13, 0x1

    const/16 v31, 0x0

    :goto_4
    move-object v4, v0

    goto/16 :goto_66

    :cond_6
    if-nez v8, :cond_8

    .line 943
    iget-boolean v5, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez v5, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    throw v9

    :cond_8
    :goto_5
    move-object/from16 v30, v1

    move-object v5, v3

    .line 948
    :try_start_1
    iget-object v3, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    .line 949
    iget-object v1, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    .line 950
    iget-object v6, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v6, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    .line 951
    iget-object v7, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v7, v7, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    .line 952
    iget-object v15, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v15, v15, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    .line 953
    iget-object v9, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v9, v9, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 954
    iget-object v11, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v11, v11, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    move-object/from16 v24, v1

    .line 960
    iget v1, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    .line 963
    iput-object v5, v12, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_25

    const/16 v33, 0x3

    const/16 v34, 0x4

    move-object/from16 v25, v4

    :goto_6
    move v4, v1

    .line 970
    :goto_7
    :try_start_2
    iget v1, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 v26, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v2, v9, v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_24

    const/16 v1, 0x9c

    if-eq v2, v1, :cond_50

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    .line 1890
    :try_start_3
    iget-object v1, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    invoke-static {v1}, Lorg/mozilla/javascript/Interpreter;->dumpICode(Lorg/mozilla/javascript/InterpreterData;)V

    .line 1891
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown icode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " @ pc : "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v1, v8

    move/from16 v42, v10

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v43, v14

    move-object/from16 v11, v25

    goto/16 :goto_44

    :pswitch_0
    move-object/from16 v35, v11

    move-object/from16 v2, v24

    move-object/from16 v11, v25

    move-object/from16 v1, p0

    move-object/from16 v36, v2

    move-object v2, v5

    move-object/from16 v37, v3

    move/from16 v38, v4

    move-object/from16 v4, v36

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    const/4 v15, 0x2

    move-object v14, v5

    move/from16 v5, v38

    move-object/from16 v38, v6

    const/16 v15, 0x64

    move/from16 v6, v26

    .line 1702
    :try_start_4
    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/Interpreter;->doRefNsName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DII)I

    move-result v4

    move-object/from16 v15, p1

    move-object/from16 v25, v11

    move-object v5, v14

    move/from16 v2, v26

    move-object/from16 v11, v35

    move-object/from16 v24, v36

    move-object/from16 v3, v37

    :goto_8
    move-object/from16 v6, v38

    move-object/from16 v14, v39

    goto/16 :goto_7

    :pswitch_1
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v36, v24

    move-object/from16 v11, v25

    const/16 v15, 0x64

    move-object v6, v3

    move-object v14, v5

    move v5, v4

    .line 1694
    aget-object v1, v6, v5

    if-ne v1, v13, :cond_9

    move-object/from16 v4, v36

    .line 1695
    aget-wide v1, v4, v5

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    goto :goto_9

    :cond_9
    move-object/from16 v4, v36

    .line 1696
    :goto_9
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move/from16 v3, v26

    invoke-static {v1, v12, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->nameRef(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;

    move-result-object v1

    aput-object v1, v6, v5

    goto/16 :goto_a

    :pswitch_2
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    const/16 v15, 0x64

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    .line 1689
    invoke-static {v12, v6, v4, v5, v3}, Lorg/mozilla/javascript/Interpreter;->doRefNsMember(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DII)I

    move-result v1

    goto/16 :goto_17

    :pswitch_3
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    const/16 v15, 0x64

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    .line 1684
    invoke-static {v12, v6, v4, v5, v3}, Lorg/mozilla/javascript/Interpreter;->doRefMember(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DII)I

    move-result v1

    goto/16 :goto_17

    :pswitch_4
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    const/16 v15, 0x64

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    .line 1816
    aget-object v1, v6, v5

    if-eq v1, v13, :cond_a

    .line 1818
    invoke-static {v1, v12}, Lorg/mozilla/javascript/ScriptRuntime;->escapeTextValue(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v5

    goto :goto_a

    :pswitch_5
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    const/16 v15, 0x64

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    .line 1809
    aget-object v1, v6, v5

    if-eq v1, v13, :cond_a

    .line 1811
    invoke-static {v1, v12}, Lorg/mozilla/javascript/ScriptRuntime;->escapeAttributeValue(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v5

    :cond_a
    :goto_a
    move-object v15, v6

    move-object/from16 v37, v7

    move-object v1, v8

    move/from16 v42, v10

    move-object v7, v11

    move-object v2, v12

    move-object/from16 v43, v39

    const/16 v31, 0x0

    move v12, v3

    move v6, v5

    move-object v10, v9

    move-object v3, v13

    const/4 v13, 0x1

    move-object v5, v4

    goto/16 :goto_64

    :pswitch_6
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    const/16 v15, 0x64

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    .line 1803
    aget-object v1, v6, v5

    if-ne v1, v13, :cond_b

    .line 1804
    aget-wide v1, v4, v5

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    .line 1805
    :cond_b
    invoke-static {v1, v12}, Lorg/mozilla/javascript/ScriptRuntime;->setDefaultNamespace(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v5

    goto :goto_a

    :pswitch_7
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    const/16 v15, 0x64

    move-object v14, v5

    move v5, v4

    move v11, v2

    move-object v15, v3

    move v6, v5

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v5, v24

    move-object/from16 v7, v25

    move/from16 v12, v26

    move-object/from16 v43, v39

    const/4 v13, 0x1

    const/16 v31, 0x0

    move-object v10, v9

    goto/16 :goto_5e

    :pswitch_8
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    const/16 v15, 0x64

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    .line 1676
    aget-object v1, v6, v5

    if-ne v1, v13, :cond_c

    .line 1677
    aget-wide v1, v4, v5

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    .line 1678
    :cond_c
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v11, v12, v2}, Lorg/mozilla/javascript/ScriptRuntime;->specialRef(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Ref;

    move-result-object v1

    aput-object v1, v6, v5

    goto/16 :goto_a

    :pswitch_9
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    const/16 v15, 0x64

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    .line 1289
    aget-object v1, v6, v5

    check-cast v1, Lorg/mozilla/javascript/Ref;

    .line 1290
    invoke-static {v1, v12}, Lorg/mozilla/javascript/ScriptRuntime;->refDel(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v5

    goto/16 :goto_a

    :pswitch_a
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    const/16 v15, 0x64

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    .line 1281
    aget-object v1, v6, v5

    if-ne v1, v13, :cond_d

    .line 1282
    aget-wide v1, v4, v5

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_d
    add-int/lit8 v2, v5, -0x1

    .line 1284
    aget-object v5, v6, v2

    check-cast v5, Lorg/mozilla/javascript/Ref;

    .line 1285
    iget-object v15, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v5, v1, v12, v15}, Lorg/mozilla/javascript/ScriptRuntime;->refSet(Lorg/mozilla/javascript/Ref;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v2

    goto/16 :goto_14

    :pswitch_b
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    .line 1276
    aget-object v1, v6, v5

    check-cast v1, Lorg/mozilla/javascript/Ref;

    .line 1277
    invoke-static {v1, v12}, Lorg/mozilla/javascript/ScriptRuntime;->refGet(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v5

    goto/16 :goto_a

    :pswitch_c
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object v14, v5

    move v5, v4

    move v11, v2

    move-object v15, v3

    move v6, v5

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v40, v24

    move-object/from16 v8, v39

    move-object v10, v9

    move-object/from16 v39, v25

    :goto_b
    move/from16 v9, v26

    goto/16 :goto_37

    :pswitch_d
    move-object/from16 v39, v14

    move-object v14, v5

    move-object v1, v8

    move/from16 v42, v10

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v7, v25

    move/from16 v12, v26

    move-object/from16 v43, v39

    const/4 v4, 0x0

    const/4 v13, 0x1

    const/16 v31, 0x0

    goto/16 :goto_61

    :pswitch_e
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    add-int/lit8 v1, v5, 0x1

    .line 1607
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    aput-object v2, v6, v1

    goto/16 :goto_17

    :pswitch_f
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    .line 1666
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v1, v3

    .line 1667
    aget-object v3, v6, v1

    add-int/lit8 v5, v5, 0x1

    const/16 v15, 0x3d

    if-ne v2, v15, :cond_e

    .line 1669
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->enumNext(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_c

    :cond_e
    invoke-static {v3, v12}, Lorg/mozilla/javascript/ScriptRuntime;->enumId(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v2

    :goto_c
    aput-object v2, v6, v5

    move-object/from16 v15, p1

    move v2, v1

    :goto_d
    move-object/from16 v24, v4

    move v4, v5

    move-object v3, v6

    move-object/from16 v25, v11

    move-object v5, v14

    move-object/from16 v11, v35

    goto/16 :goto_8

    :pswitch_10
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    .line 1652
    aget-object v1, v6, v5

    if-ne v1, v13, :cond_f

    .line 1653
    aget-wide v24, v4, v5

    invoke-static/range {v24 .. v25}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_f
    add-int/lit8 v5, v5, -0x1

    .line 1655
    iget v15, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v3, v15

    const/16 v15, 0x3a

    if-ne v2, v15, :cond_10

    const/4 v2, 0x0

    goto :goto_e

    :cond_10
    const/16 v15, 0x3b

    if-ne v2, v15, :cond_11

    const/4 v2, 0x1

    goto :goto_e

    :cond_11
    const/4 v2, 0x2

    .line 1661
    :goto_e
    iget-object v15, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v12, v15, v2}, Lorg/mozilla/javascript/ScriptRuntime;->enumInit(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v3

    move-object/from16 v15, p1

    move v2, v3

    goto :goto_d

    :pswitch_11
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    add-int/lit8 v1, v5, -0x1

    .line 1633
    iget v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v2, v3

    .line 1635
    iget-object v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v3, v3, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v5, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v3, v3, v5

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    goto :goto_f

    :cond_12
    const/4 v3, 0x0

    :goto_f
    add-int/lit8 v5, v1, 0x1

    .line 1636
    aget-object v5, v6, v5

    check-cast v5, Ljava/lang/Throwable;

    if-nez v3, :cond_13

    const/4 v3, 0x0

    goto :goto_10

    .line 1641
    :cond_13
    aget-object v3, v6, v2

    check-cast v3, Lorg/mozilla/javascript/Scriptable;

    .line 1643
    :goto_10
    iget-object v15, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v5, v3, v11, v12, v15}, Lorg/mozilla/javascript/ScriptRuntime;->newCatchScope(Ljava/lang/Throwable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1646
    iget v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v5, 0x1

    add-int/2addr v3, v5

    iput v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_11

    :pswitch_12
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move v2, v3

    move-object v15, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v40, v24

    move-object/from16 v8, v39

    const/16 v32, 0x1

    move v6, v5

    move-object v10, v9

    move-object/from16 v39, v25

    goto/16 :goto_45

    :pswitch_13
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move v2, v3

    move-object v15, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v40, v24

    move-object/from16 v8, v39

    const/16 v32, 0x1

    move v6, v5

    move-object v10, v9

    move-object/from16 v39, v25

    goto/16 :goto_3e

    :pswitch_14
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    add-int/lit8 v1, v5, 0x1

    .line 1302
    iget v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v2, v3

    .line 1303
    aget-object v3, v6, v2

    aput-object v3, v6, v1

    .line 1304
    aget-wide v24, v4, v2

    aput-wide v24, v4, v1

    :goto_11
    move-object/from16 v15, p1

    goto/16 :goto_18

    :pswitch_15
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    .line 1037
    invoke-static {v12, v2, v6, v4, v5}, Lorg/mozilla/javascript/Interpreter;->doInOrInstanceof(Lorg/mozilla/javascript/Context;I[Ljava/lang/Object;[DI)I

    move-result v1

    goto/16 :goto_17

    :pswitch_16
    move-object v6, v3

    move-object/from16 v39, v14

    move-object/from16 v11, v25

    move/from16 v3, v26

    move-object v14, v5

    .line 1024
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int v2, v3, v1

    .line 1025
    aget-object v1, v6, v2

    move-object v4, v1

    :goto_12
    move-object v1, v8

    move/from16 v42, v10

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v43, v39

    :goto_13
    const/4 v13, 0x1

    const/16 v31, 0x0

    goto/16 :goto_67

    :pswitch_17
    move-object v6, v3

    move-object/from16 v39, v14

    move-object/from16 v11, v25

    move-object v14, v5

    move v5, v4

    move-object/from16 v4, v24

    .line 1013
    aget-object v1, v6, v5

    if-ne v1, v13, :cond_14

    .line 1014
    aget-wide v1, v4, v5

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    .line 1017
    :cond_14
    iget v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v9, v2}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v2

    .line 1018
    new-instance v3, Lorg/mozilla/javascript/JavaScriptException;

    iget-object v4, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-direct {v3, v1, v4, v2}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    move-object v4, v3

    goto :goto_12

    :pswitch_18
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    add-int/lit8 v1, v5, 0x1

    .line 1202
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v12, v2, v11}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    aput-object v2, v6, v1

    goto/16 :goto_17

    :pswitch_19
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    .line 1722
    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsRegExpLiterals:[Ljava/lang/Object;

    aget-object v1, v1, v3

    add-int/lit8 v2, v5, 0x1

    .line 1723
    iget-object v5, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v12, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    aput-object v1, v6, v2

    :goto_14
    move-object/from16 v15, p1

    move-object/from16 v24, v4

    move-object/from16 v25, v11

    move-object v5, v14

    move-object/from16 v11, v35

    move-object/from16 v14, v39

    move v4, v2

    move v2, v3

    move-object v3, v6

    move-object/from16 v6, v38

    goto/16 :goto_7

    :pswitch_1a
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    add-int/lit8 v1, v5, -0x1

    .line 1051
    invoke-static {v6, v4, v1}, Lorg/mozilla/javascript/Interpreter;->doShallowEquals([Ljava/lang/Object;[DI)Z

    move-result v5

    const/16 v15, 0x2f

    if-ne v2, v15, :cond_15

    const/4 v2, 0x1

    goto :goto_15

    :cond_15
    const/4 v2, 0x0

    :goto_15
    xor-int/2addr v2, v5

    .line 1053
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v1

    goto/16 :goto_17

    :pswitch_1b
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    add-int/lit8 v1, v5, 0x1

    .line 1613
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v6, v1

    goto/16 :goto_17

    :pswitch_1c
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    add-int/lit8 v1, v5, 0x1

    .line 1610
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v6, v1

    goto/16 :goto_17

    :pswitch_1d
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    add-int/lit8 v1, v5, 0x1

    .line 1604
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    aput-object v2, v6, v1

    goto/16 :goto_17

    :pswitch_1e
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    add-int/lit8 v1, v5, 0x1

    const/4 v2, 0x0

    .line 1601
    aput-object v2, v6, v1

    goto/16 :goto_17

    :pswitch_1f
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    add-int/lit8 v1, v5, 0x1

    .line 1538
    aput-object v11, v6, v1

    goto/16 :goto_17

    :pswitch_20
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    add-int/lit8 v1, v5, 0x1

    .line 1554
    aput-object v13, v6, v1

    .line 1555
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v2, v2, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    aget-wide v24, v2, v3

    aput-wide v24, v4, v1

    goto/16 :goto_17

    :pswitch_21
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    add-int/lit8 v1, v5, 0x1

    .line 1558
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v12, v2, v11}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v6, v1

    goto/16 :goto_17

    :pswitch_22
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object v14, v5

    move v5, v4

    move v11, v2

    move-object v15, v3

    move v6, v5

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v40, v24

    move-object/from16 v8, v39

    const/16 v32, 0x1

    move-object v10, v9

    move-object/from16 v39, v25

    :goto_16
    move/from16 v9, v26

    goto/16 :goto_4a

    :pswitch_23
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    .line 1268
    invoke-static {v12, v14, v6, v4, v5}, Lorg/mozilla/javascript/Interpreter;->doSetElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I

    move-result v1

    goto :goto_17

    :pswitch_24
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    .line 1264
    invoke-static {v12, v14, v6, v4, v5}, Lorg/mozilla/javascript/Interpreter;->doGetElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I

    move-result v1

    :goto_17
    move-object/from16 v15, p1

    move v2, v3

    :goto_18
    move-object/from16 v24, v4

    move-object v3, v6

    move-object/from16 v25, v11

    move-object v5, v14

    move-object/from16 v11, v35

    move-object/from16 v6, v38

    move-object/from16 v14, v39

    goto/16 :goto_6

    :pswitch_25
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    .line 1245
    aget-object v1, v6, v5

    if-ne v1, v13, :cond_16

    .line 1246
    aget-wide v1, v4, v5

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_16
    add-int/lit8 v2, v5, -0x1

    .line 1248
    aget-object v5, v6, v2

    if-ne v5, v13, :cond_17

    .line 1249
    aget-wide v24, v4, v2

    invoke-static/range {v24 .. v25}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v5

    .line 1250
    :cond_17
    iget-object v15, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v5, v11, v1, v12, v15}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    aput-object v1, v6, v2

    goto/16 :goto_14

    :pswitch_26
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    .line 1231
    aget-object v1, v6, v5

    if-ne v1, v13, :cond_18

    .line 1232
    aget-wide v1, v4, v5

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    .line 1233
    :cond_18
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v11, v12, v2}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectPropNoWarn(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v5

    goto/16 :goto_a

    :pswitch_27
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    .line 1238
    aget-object v1, v6, v5

    if-ne v1, v13, :cond_19

    .line 1239
    aget-wide v1, v4, v5

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    .line 1240
    :cond_19
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v11, v12, v2}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v5

    goto/16 :goto_a

    :pswitch_28
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    .line 1529
    aget-object v1, v6, v5

    if-ne v1, v13, :cond_1a

    .line 1530
    aget-wide v1, v4, v5

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    .line 1531
    :cond_1a
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v5

    goto/16 :goto_a

    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v1, v8

    move/from16 v42, v10

    :goto_19
    move-object v2, v12

    :goto_1a
    move-object v3, v13

    move-object v5, v14

    move-object/from16 v43, v39

    goto/16 :goto_44

    :pswitch_29
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object v14, v5

    move v5, v4

    move v11, v2

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v10, v24

    move-object/from16 v4, v25

    move/from16 v6, v26

    const/16 v15, 0xd

    move-object v8, v3

    goto/16 :goto_24

    :pswitch_2a
    move-object/from16 v38, v6

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v11, v25

    move-object v6, v3

    move-object v14, v5

    move/from16 v3, v26

    move v5, v4

    move-object/from16 v4, v24

    if-eqz v10, :cond_1b

    .line 1486
    iget v1, v12, Lorg/mozilla/javascript/Context;->instructionCount:I

    const/16 v15, 0x64

    add-int/2addr v1, v15

    iput v1, v12, Lorg/mozilla/javascript/Context;->instructionCount:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1b
    sub-int v15, v5, v3

    .line 1492
    :try_start_5
    aget-object v1, v6, v15

    .line 1493
    instance-of v5, v1, Lorg/mozilla/javascript/InterpretedFunction;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    if-eqz v5, :cond_1c

    .line 1494
    :try_start_6
    move-object v5, v1

    check-cast v5, Lorg/mozilla/javascript/InterpretedFunction;

    move/from16 v24, v2

    .line 1495
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v2, v2, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    move/from16 v26, v3

    iget-object v3, v5, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    if-ne v2, v3, :cond_1d

    .line 1496
    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {v5, v12, v1}, Lorg/mozilla/javascript/BaseFunction;->createObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v25

    .line 1497
    new-instance v9, Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/4 v7, 0x0

    invoke-direct {v9, v7}, Lorg/mozilla/javascript/Interpreter$CallFrame;-><init>(Lorg/mozilla/javascript/Interpreter$1;)V

    .line 1498
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    add-int/lit8 v23, v15, 0x1

    move-object/from16 v1, p0

    move/from16 v3, v24

    move-object/from16 v37, v11

    move v11, v3

    move-object/from16 v3, v25

    move-object/from16 v40, v4

    move-object v4, v6

    move-object/from16 v24, v5

    move-object/from16 v5, v40

    move-object v12, v6

    move/from16 v6, v23

    move-object/from16 v22, v7

    move/from16 v7, v26

    move-object/from16 v41, v8

    move-object/from16 v8, v24

    move-object/from16 v22, v9

    move-object v9, v14

    move/from16 v42, v10

    move-object/from16 v10, v22

    :try_start_7
    invoke-static/range {v1 .. v10}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    .line 1502
    aput-object v25, v12, v15

    .line 1503
    iput v15, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    .line 1504
    iput v11, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    move-object/from16 v12, p0

    move-object/from16 v3, v22

    move/from16 v2, v26

    move-object/from16 v1, v30

    move-object/from16 v4, v37

    move-object/from16 v14, v39

    move-object/from16 v8, v41

    move/from16 v10, v42

    goto/16 :goto_75

    :catch_3
    move-exception v0

    move/from16 v42, v10

    move-object/from16 v37, v11

    move-object/from16 v2, p0

    move-object v4, v0

    move-object v1, v8

    goto/16 :goto_1a

    :cond_1c
    move/from16 v26, v3

    :cond_1d
    move-object/from16 v40, v4

    move-object v12, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v37, v11

    .line 1509
    instance-of v2, v1, Lorg/mozilla/javascript/Function;

    if-nez v2, :cond_1f

    if-ne v1, v13, :cond_1e

    move-object/from16 v10, v40

    .line 1510
    aget-wide v1, v10, v15

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    .line 1511
    :cond_1e
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1f
    move-object/from16 v10, v40

    .line 1513
    check-cast v1, Lorg/mozilla/javascript/Function;

    .line 1515
    instance-of v2, v1, Lorg/mozilla/javascript/IdFunctionObject;

    if-eqz v2, :cond_20

    .line 1516
    move-object v2, v1

    check-cast v2, Lorg/mozilla/javascript/IdFunctionObject;

    .line 1517
    invoke-static {v2}, Lorg/mozilla/javascript/NativeContinuation;->isContinuationConstructor(Lorg/mozilla/javascript/IdFunctionObject;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1518
    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    const/4 v3, 0x0

    move-object v8, v12

    move-object/from16 v12, p0

    :try_start_8
    invoke-static {v12, v2, v3}, Lorg/mozilla/javascript/Interpreter;->captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;

    move-result-object v2

    aput-object v2, v1, v15

    move/from16 v6, v26

    goto :goto_1b

    :cond_20
    move-object v8, v12

    move-object/from16 v12, p0

    add-int/lit8 v2, v15, 0x1

    move/from16 v6, v26

    .line 1524
    invoke-static {v8, v10, v2, v6}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v2

    .line 1525
    iget-object v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v1, v12, v3, v2}, Lorg/mozilla/javascript/Function;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    aput-object v1, v8, v15

    :goto_1b
    move v2, v6

    move-object v3, v8

    move-object/from16 v24, v10

    move-object v5, v14

    move v4, v15

    move-object/from16 v11, v35

    move-object/from16 v25, v37

    move-object/from16 v6, v38

    move-object/from16 v14, v39

    goto/16 :goto_2b

    :catch_4
    move-exception v0

    move-object/from16 v2, p0

    move-object v4, v0

    goto/16 :goto_20

    :catch_5
    move-exception v0

    move/from16 v42, v10

    move-object/from16 v37, v11

    move-object v4, v0

    move-object v1, v8

    goto/16 :goto_19

    :pswitch_2b
    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v10, v24

    move-object/from16 v37, v25

    move/from16 v6, v26

    move v11, v2

    move-object v8, v3

    move-object v14, v5

    move v5, v4

    .line 1178
    invoke-static {v14, v5}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v1

    .line 1179
    aput-object v13, v8, v5

    const/16 v3, 0x1d

    if-ne v11, v3, :cond_21

    neg-double v1, v1

    .line 1183
    :cond_21
    aput-wide v1, v10, v5

    goto :goto_1c

    :pswitch_2c
    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v10, v24

    move-object/from16 v37, v25

    move/from16 v6, v26

    move-object v8, v3

    move-object v14, v5

    move v5, v4

    .line 1156
    invoke-static {v14, v5}, Lorg/mozilla/javascript/Interpreter;->stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I

    move-result v1

    .line 1157
    aput-object v13, v8, v5

    not-int v1, v1

    int-to-double v1, v1

    .line 1158
    aput-wide v1, v10, v5

    :goto_1c
    move-object v15, v8

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v43, v39

    move-object/from16 v1, v41

    const/4 v13, 0x1

    const/16 v31, 0x0

    move v12, v6

    move v6, v5

    move-object v5, v10

    move-object v10, v9

    move-object/from16 v44, v37

    move-object/from16 v37, v7

    move-object/from16 v7, v44

    goto/16 :goto_64

    :pswitch_2d
    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v10, v24

    move-object/from16 v37, v25

    move/from16 v6, v26

    move-object v8, v3

    move-object v14, v5

    move v5, v4

    .line 1198
    invoke-static {v14, v5}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v1

    if-nez v1, :cond_22

    const/4 v1, 0x1

    goto :goto_1d

    :cond_22
    const/4 v1, 0x0

    :goto_1d
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v5

    goto :goto_1c

    :pswitch_2e
    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v10, v24

    move-object/from16 v37, v25

    move/from16 v6, v26

    move v11, v2

    move-object v8, v3

    move-object v14, v5

    move v5, v4

    .line 1194
    invoke-static {v14, v11, v8, v10, v5}, Lorg/mozilla/javascript/Interpreter;->doArithmetic(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I

    move-result v4

    goto/16 :goto_1f

    :pswitch_2f
    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v10, v24

    move-object/from16 v37, v25

    move/from16 v6, v26

    move-object v8, v3

    move-object v14, v5

    move v5, v4

    add-int/lit8 v4, v5, -0x1

    .line 1188
    invoke-static {v8, v10, v4, v12}, Lorg/mozilla/javascript/Interpreter;->doAdd([Ljava/lang/Object;[DILorg/mozilla/javascript/Context;)V

    goto/16 :goto_1f

    :pswitch_30
    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v10, v24

    move-object/from16 v37, v25

    move/from16 v6, v26

    move-object v8, v3

    move-object v14, v5

    move v5, v4

    add-int/lit8 v4, v5, -0x1

    .line 1170
    invoke-static {v14, v4}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v1

    .line 1171
    invoke-static {v14, v5}, Lorg/mozilla/javascript/Interpreter;->stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I

    move-result v3

    and-int/lit8 v3, v3, 0x1f

    add-int/lit8 v4, v5, -0x1

    .line 1172
    aput-object v13, v8, v4

    .line 1173
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(D)J

    move-result-wide v1

    ushr-long/2addr v1, v3

    long-to-double v1, v1

    aput-wide v1, v10, v4

    goto/16 :goto_1f

    :pswitch_31
    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v10, v24

    move-object/from16 v37, v25

    move/from16 v6, v26

    move v11, v2

    move-object v8, v3

    move-object v14, v5

    move v5, v4

    .line 1032
    invoke-static {v14, v11, v8, v10, v5}, Lorg/mozilla/javascript/Interpreter;->doCompare(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I

    move-result v4

    goto :goto_1f

    :pswitch_32
    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v10, v24

    move-object/from16 v37, v25

    move/from16 v6, v26

    move v11, v2

    move-object v8, v3

    move-object v14, v5

    move v5, v4

    add-int/lit8 v4, v5, -0x1

    .line 1043
    invoke-static {v8, v10, v4}, Lorg/mozilla/javascript/Interpreter;->doEquals([Ljava/lang/Object;[DI)Z

    move-result v1

    const/16 v15, 0xd

    if-ne v11, v15, :cond_23

    const/4 v2, 0x1

    goto :goto_1e

    :cond_23
    const/4 v2, 0x0

    :goto_1e
    xor-int/2addr v1, v2

    .line 1045
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v4

    goto :goto_1f

    :pswitch_33
    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v10, v24

    move-object/from16 v37, v25

    move/from16 v6, v26

    const/16 v15, 0xd

    move v11, v2

    move-object v8, v3

    move-object v14, v5

    move v5, v4

    .line 1166
    invoke-static {v14, v11, v8, v10, v5}, Lorg/mozilla/javascript/Interpreter;->doBitOp(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I

    move-result v4
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    :goto_1f
    move-object/from16 v15, p1

    move v2, v6

    move-object v3, v8

    move-object/from16 v24, v10

    move-object v5, v14

    move-object/from16 v11, v35

    move-object/from16 v25, v37

    goto/16 :goto_28

    :catch_6
    move-exception v0

    move-object v4, v0

    move-object v2, v12

    :goto_20
    move-object v3, v13

    move-object v5, v14

    move-object/from16 v11, v37

    goto/16 :goto_30

    :pswitch_34
    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v10, v24

    move-object/from16 v37, v25

    move/from16 v6, v26

    const/16 v15, 0xd

    move v11, v2

    move-object v8, v3

    move-object v14, v5

    move v5, v4

    .line 1206
    :try_start_9
    aget-object v1, v8, v5
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    if-ne v1, v13, :cond_24

    .line 1207
    :try_start_a
    aget-wide v1, v10, v5

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6

    :cond_24
    add-int/lit8 v4, v5, -0x1

    .line 1209
    :try_start_b
    aget-object v2, v8, v4

    check-cast v2, Lorg/mozilla/javascript/Scriptable;

    const/16 v3, 0x8

    if-ne v11, v3, :cond_25

    .line 1210
    iget-object v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_7

    move-object/from16 v11, v37

    :try_start_c
    invoke-static {v2, v1, v12, v3, v11}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_21

    :cond_25
    move-object/from16 v11, v37

    iget-object v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2, v1, v12, v3, v11}, Lorg/mozilla/javascript/ScriptRuntime;->strictSetName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    :goto_21
    aput-object v1, v8, v4

    goto :goto_22

    :catch_7
    move-exception v0

    move-object/from16 v11, v37

    goto/16 :goto_2f

    :pswitch_35
    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move/from16 v6, v26

    const/16 v15, 0xd

    move-object v8, v3

    move-object v14, v5

    move v5, v4

    add-int/lit8 v4, v5, -0x1

    .line 1057
    invoke-static {v14, v5}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1058
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v2, 0x2

    add-int/2addr v1, v2

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto :goto_22

    :pswitch_36
    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move/from16 v6, v26

    const/16 v15, 0xd

    move-object v8, v3

    move-object v14, v5

    move v5, v4

    add-int/lit8 v4, v5, -0x1

    .line 1063
    invoke-static {v14, v5}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1064
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v2, 0x2

    add-int/2addr v1, v2

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    :goto_22
    move-object/from16 v15, p1

    move v2, v6

    move-object v3, v8

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object v5, v14

    goto/16 :goto_27

    :cond_26
    move-object/from16 v37, v7

    move-object v15, v8

    move-object/from16 v40, v10

    move-object/from16 v8, v39

    const/16 v32, 0x1

    move-object v10, v9

    move-object/from16 v39, v11

    move v9, v6

    goto/16 :goto_48

    :pswitch_37
    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object v14, v5

    move v5, v4

    move-object v15, v3

    move-object/from16 v37, v7

    move-object v10, v9

    move-object/from16 v40, v24

    move/from16 v9, v26

    move-object/from16 v8, v39

    const/16 v32, 0x1

    move-object/from16 v39, v25

    goto/16 :goto_48

    :pswitch_38
    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v39, v14

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move/from16 v6, v26

    const/16 v15, 0xd

    move-object v8, v3

    move-object v14, v5

    move v5, v4

    .line 1146
    aget-object v1, v8, v5

    iput-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    .line 1147
    aget-wide v1, v10, v5

    iput-wide v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    move-object v7, v11

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v43, v39

    move-object/from16 v1, v41

    const/4 v4, 0x0

    const/4 v13, 0x1

    const/16 v31, 0x0

    move v12, v6

    goto/16 :goto_61

    :pswitch_39
    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move/from16 v6, v26

    const/16 v15, 0xd

    move-object v8, v3

    move-object v14, v5

    move v5, v4

    .line 1626
    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->leaveWith(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    iput-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v37, v7

    move-object v15, v8

    move-object v7, v11

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v43, v39

    move-object/from16 v1, v41

    const/4 v13, 0x1

    const/16 v31, 0x0

    move v12, v6

    move v6, v5

    move-object v5, v10

    :goto_23
    move-object v10, v9

    goto/16 :goto_64

    :pswitch_3a
    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move/from16 v6, v26

    const/16 v15, 0xd

    move-object v8, v3

    move-object v14, v5

    move v5, v4

    .line 1619
    aget-object v1, v8, v5

    if-ne v1, v13, :cond_27

    .line 1620
    aget-wide v1, v10, v5

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_27
    add-int/lit8 v4, v5, -0x1

    .line 1622
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v12, v2}, Lorg/mozilla/javascript/ScriptRuntime;->enterWith(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    iput-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    goto/16 :goto_22

    :pswitch_3b
    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v10, v24

    move/from16 v6, v26

    const/16 v15, 0xd

    move v11, v2

    move-object v8, v3

    move-object v14, v5

    move v5, v4

    move-object/from16 v4, v25

    :goto_24
    move-object/from16 v1, p0

    move-object v2, v14

    move v3, v11

    move-object v11, v4

    move-object v4, v8

    move/from16 v37, v5

    move-object v5, v10

    move/from16 v26, v6

    move/from16 v6, v37

    .line 1227
    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/Interpreter;->doDelName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I

    move-result v4

    goto/16 :goto_26

    :pswitch_3c
    move/from16 v37, v4

    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    const/16 v15, 0xd

    move-object v8, v3

    move-object v14, v5

    move/from16 v6, v37

    add-int/lit8 v4, v6, 0x1

    .line 1125
    aget-object v1, v8, v6

    aput-object v1, v8, v4

    .line 1126
    aget-wide v1, v10, v6

    aput-wide v1, v10, v4

    goto/16 :goto_26

    :pswitch_3d
    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    const/16 v15, 0xd

    move-object v8, v3

    move v6, v4

    move-object v14, v5

    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v1, v6, -0x1

    .line 1130
    aget-object v2, v8, v1

    aput-object v2, v8, v4

    .line 1131
    aget-wide v1, v10, v1

    aput-wide v1, v10, v4

    add-int/lit8 v4, v6, 0x2

    .line 1132
    aget-object v1, v8, v6

    aput-object v1, v8, v4

    .line 1133
    aget-wide v1, v10, v6

    aput-wide v1, v10, v4

    goto/16 :goto_26

    :pswitch_3e
    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    const/16 v15, 0xd

    move-object v8, v3

    move v6, v4

    move-object v14, v5

    .line 1137
    aget-object v1, v8, v6

    add-int/lit8 v4, v6, -0x1

    .line 1138
    aget-object v2, v8, v4

    aput-object v2, v8, v6

    .line 1139
    aput-object v1, v8, v4

    .line 1140
    aget-wide v1, v10, v6

    .line 1141
    aget-wide v22, v10, v4

    aput-wide v22, v10, v6

    .line 1142
    aput-wide v1, v10, v4

    move-object/from16 v37, v7

    move-object v15, v8

    move-object v5, v10

    move-object v7, v11

    move-object v2, v12

    move-object v3, v13

    move/from16 v12, v26

    move-object/from16 v43, v39

    move-object/from16 v1, v41

    const/4 v13, 0x1

    const/16 v31, 0x0

    goto/16 :goto_23

    :pswitch_3f
    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    const/16 v15, 0xd

    move-object v8, v3

    move v6, v4

    move-object v14, v5

    const/4 v5, 0x0

    .line 1115
    aput-object v5, v8, v6

    :goto_25
    add-int/lit8 v4, v6, -0x1

    :goto_26
    move-object/from16 v15, p1

    move-object v3, v8

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object v5, v14

    move/from16 v2, v26

    :goto_27
    move-object/from16 v11, v35

    :goto_28
    move-object/from16 v6, v38

    move-object/from16 v14, v39

    move-object/from16 v8, v41

    move/from16 v10, v42

    goto/16 :goto_7

    :pswitch_40
    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    const/16 v15, 0xd

    move-object v8, v3

    move v6, v4

    move-object v14, v5

    const/4 v5, 0x0

    .line 1119
    aget-object v1, v8, v6

    iput-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    .line 1120
    aget-wide v1, v10, v6

    iput-wide v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    .line 1121
    aput-object v5, v8, v6

    goto :goto_25

    :pswitch_41
    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    const/16 v15, 0xd

    move-object v8, v3

    move v6, v4

    move-object v14, v5

    const/4 v5, 0x0

    add-int/lit8 v4, v6, -0x1

    .line 1069
    invoke-static {v14, v6}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v1

    if-nez v1, :cond_28

    .line 1070
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v2, 0x2

    add-int/2addr v1, v2

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto :goto_26

    :cond_28
    add-int/lit8 v1, v4, -0x1

    .line 1073
    aput-object v5, v8, v4

    move v4, v1

    move-object/from16 v37, v7

    move-object v15, v8

    move-object/from16 v40, v10

    move-object/from16 v8, v39

    const/16 v32, 0x1

    move-object v10, v9

    move-object/from16 v39, v11

    move/from16 v9, v26

    goto/16 :goto_48

    :pswitch_42
    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    const/16 v15, 0xd

    move-object v8, v3

    move v6, v4

    move-object v14, v5

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v4, v10

    move-object v15, v5

    move v5, v6

    move-object/from16 v6, v38

    move-object/from16 v37, v7

    move-object v15, v8

    move-object/from16 v8, p1

    move-object/from16 v40, v10

    move-object v10, v9

    move/from16 v9, v26

    .line 1586
    invoke-static/range {v1 .. v9}, Lorg/mozilla/javascript/Interpreter;->doVarIncDec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I

    move-result v4

    goto/16 :goto_29

    :pswitch_43
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v11, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    add-int/lit8 v4, v6, 0x1

    .line 1561
    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v2, v10, v2

    invoke-static {v1, v11, v12, v2}, Lorg/mozilla/javascript/ScriptRuntime;->nameIncrDecr(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v15, v4

    .line 1563
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_29

    :pswitch_44
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v11, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    .line 1255
    aget-object v1, v15, v6

    if-ne v1, v13, :cond_29

    .line 1256
    aget-wide v1, v40, v6

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    .line 1257
    :cond_29
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v3, v10, v3

    invoke-static {v1, v11, v12, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->propIncrDecr(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v15, v6

    .line 1260
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_2c

    :pswitch_45
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v11, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v10

    move-object v4, v15

    move-object/from16 v5, v40

    .line 1272
    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/Interpreter;->doElemIncDec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[B[Ljava/lang/Object;[DI)I

    move-result v4

    :goto_29
    move-object v9, v10

    move-object/from16 v25, v11

    move-object v5, v14

    move-object v3, v15

    move/from16 v2, v26

    :goto_2a
    move-object/from16 v11, v35

    move-object/from16 v7, v37

    move-object/from16 v6, v38

    move-object/from16 v14, v39

    move-object/from16 v24, v40

    :goto_2b
    move-object/from16 v8, v41

    move/from16 v10, v42

    move-object/from16 v15, p1

    goto/16 :goto_7

    :pswitch_46
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v11, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    .line 1294
    aget-object v1, v15, v6

    check-cast v1, Lorg/mozilla/javascript/Ref;

    .line 1295
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v3, v10, v3

    invoke-static {v1, v12, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->refIncrDecr(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v15, v6

    .line 1297
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    :goto_2c
    move-object v7, v11

    move-object v2, v12

    move-object v3, v13

    move/from16 v12, v26

    move-object/from16 v43, v39

    move-object/from16 v5, v40

    move-object/from16 v1, v41

    const/4 v13, 0x1

    const/16 v31, 0x0

    goto/16 :goto_64

    :pswitch_47
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v11, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    .line 1706
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    move/from16 v9, v26

    add-int v2, v9, v1

    .line 1707
    aget-object v1, v15, v2

    check-cast v1, Lorg/mozilla/javascript/Scriptable;

    iput-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    goto :goto_2d

    :pswitch_48
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v11, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    .line 1710
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int v2, v9, v1

    .line 1711
    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    aput-object v1, v15, v2

    :goto_2d
    move v4, v6

    goto/16 :goto_32

    :pswitch_49
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v11, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    add-int/lit8 v4, v6, 0x1

    .line 1535
    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v11}, Lorg/mozilla/javascript/ScriptRuntime;->typeofName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v15, v4

    goto/16 :goto_31

    :pswitch_4a
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v11, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    add-int/lit8 v4, v6, 0x1

    .line 1313
    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v11, v12, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getNameFunctionAndThis(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    aput-object v1, v15, v4

    add-int/lit8 v4, v4, 0x1

    .line 1316
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    aput-object v1, v15, v4

    goto/16 :goto_31

    :pswitch_4b
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v11, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    .line 1319
    aget-object v1, v15, v6

    if-ne v1, v13, :cond_2a

    .line 1320
    aget-wide v1, v40, v6

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    .line 1322
    :cond_2a
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v11, v12, v2}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    aput-object v1, v15, v6

    add-int/lit8 v4, v6, 0x1

    .line 1325
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    aput-object v1, v15, v4

    goto/16 :goto_31

    :pswitch_4c
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v11, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    add-int/lit8 v4, v6, -0x1

    .line 1329
    aget-object v1, v15, v4

    if-ne v1, v13, :cond_2b

    .line 1330
    aget-wide v1, v40, v4

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    .line 1331
    :cond_2b
    aget-object v2, v15, v6

    if-ne v2, v13, :cond_2c

    .line 1332
    aget-wide v2, v40, v6

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    .line 1333
    :cond_2c
    iget-object v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v2, v12, v3}, Lorg/mozilla/javascript/ScriptRuntime;->getElemFunctionAndThis(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    aput-object v1, v15, v4

    .line 1335
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    aput-object v1, v15, v6

    goto/16 :goto_2e

    :pswitch_4d
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v11, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    .line 1339
    aget-object v1, v15, v6

    if-ne v1, v13, :cond_2d

    .line 1340
    aget-wide v1, v40, v6

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    .line 1341
    :cond_2d
    invoke-static {v1, v12}, Lorg/mozilla/javascript/ScriptRuntime;->getValueFunctionAndThis(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    aput-object v1, v15, v6

    add-int/lit8 v4, v6, 0x1

    .line 1343
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    aput-object v1, v15, v4

    goto/16 :goto_31

    :pswitch_4e
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v11, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    add-int/lit8 v4, v6, 0x1

    .line 1714
    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    invoke-static {v12, v1, v2, v9}, Lorg/mozilla/javascript/InterpretedFunction;->createFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)Lorg/mozilla/javascript/InterpretedFunction;

    move-result-object v1

    aput-object v1, v15, v4

    goto/16 :goto_31

    :pswitch_4f
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v11, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    .line 1719
    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    invoke-static {v12, v1, v2, v9}, Lorg/mozilla/javascript/Interpreter;->initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)V

    :goto_2e
    move-object v7, v11

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v43, v39

    goto/16 :goto_34

    :catch_8
    move-exception v0

    :goto_2f
    move-object v4, v0

    move-object v2, v12

    move-object v3, v13

    move-object v5, v14

    :goto_30
    move-object/from16 v43, v39

    goto/16 :goto_43

    :pswitch_50
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v39, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v11, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    if-eqz v42, :cond_2e

    .line 1348
    iget v1, v12, Lorg/mozilla/javascript/Context;->instructionCount:I

    const/16 v2, 0x64

    add-int/2addr v1, v2

    iput v1, v12, Lorg/mozilla/javascript/Context;->instructionCount:I

    :cond_2e
    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v40

    move v5, v6

    move-object v6, v10

    move v7, v9

    .line 1350
    invoke-static/range {v1 .. v7}, Lorg/mozilla/javascript/Interpreter;->doCallSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[BI)I

    move-result v4
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8

    :goto_31
    move v2, v9

    :goto_32
    move-object v9, v10

    move-object/from16 v25, v11

    move-object v5, v14

    move-object v3, v15

    goto/16 :goto_2a

    :pswitch_51
    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object v8, v14

    move-object/from16 v11, v25

    move/from16 v9, v26

    move-object v14, v5

    .line 1153
    :try_start_d
    iput-object v8, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    move-object/from16 v43, v8

    move-object v7, v11

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v1, v41

    const/4 v4, 0x0

    const/4 v13, 0x1

    const/16 v31, 0x0

    move v12, v9

    goto/16 :goto_61

    :pswitch_52
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v11, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    add-int/lit8 v4, v6, 0x1

    .line 1079
    aput-object v13, v15, v4

    .line 1080
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v2, 0x2

    add-int/2addr v1, v2

    int-to-double v1, v1

    aput-wide v1, v40, v4

    move-object/from16 v39, v11

    const/16 v32, 0x1

    goto/16 :goto_48

    :pswitch_53
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v11, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    .line 1083
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->emptyStackTop:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-ne v6, v1, :cond_2f

    .line 1085
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int v2, v9, v1

    .line 1086
    aget-object v1, v15, v6

    aput-object v1, v15, v2

    .line 1087
    aget-wide v3, v40, v6

    aput-wide v3, v40, v2

    add-int/lit8 v4, v6, -0x1

    goto/16 :goto_36

    .line 1092
    :cond_2f
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->emptyStackTop:I

    if-ne v6, v1, :cond_30

    :goto_33
    move-object/from16 v43, v8

    move-object v7, v11

    move-object v2, v12

    move-object v3, v13

    :goto_34
    move-object/from16 v5, v40

    move-object/from16 v1, v41

    const/4 v13, 0x1

    const/16 v31, 0x0

    move v12, v9

    goto/16 :goto_64

    :cond_30
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_9

    const/4 v1, 0x0

    throw v1

    :pswitch_54
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v11, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    if-eqz v42, :cond_31

    const/4 v1, 0x0

    .line 1098
    :try_start_e
    invoke-static {v12, v14, v1}, Lorg/mozilla/javascript/Interpreter;->addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V

    .line 1100
    :cond_31
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int v2, v9, v1

    .line 1101
    aget-object v1, v15, v2

    if-eq v1, v13, :cond_32

    move-object v4, v1

    move-object/from16 v43, v8

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v1, v41

    goto/16 :goto_13

    .line 1108
    :cond_32
    aget-wide v3, v40, v2

    double-to-int v1, v3

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    if-eqz v42, :cond_33

    .line 1110
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    :cond_33
    move v4, v6

    goto/16 :goto_36

    :pswitch_55
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v11, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    .line 1828
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    .line 1829
    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v1, :cond_34

    .line 1830
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v10, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v1

    .line 1831
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    invoke-interface {v2, v12, v1}, Lorg/mozilla/javascript/debug/DebugFrame;->onLineChange(Lorg/mozilla/javascript/Context;I)V

    .line 1833
    :cond_34
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v2, 0x2

    add-int/2addr v1, v2

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_33

    :pswitch_56
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v11, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    add-int/lit8 v4, v6, 0x1

    .line 1542
    aput-object v13, v15, v4

    .line 1543
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v10, v1}, Lorg/mozilla/javascript/Interpreter;->getShort([BI)I

    move-result v1

    int-to-double v1, v1

    aput-wide v1, v40, v4

    .line 1544
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v2, 0x2

    add-int/2addr v1, v2

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto :goto_35

    :pswitch_57
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v11, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    add-int/lit8 v4, v6, 0x1

    .line 1548
    aput-object v13, v15, v4

    .line 1549
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v10, v1}, Lorg/mozilla/javascript/Interpreter;->getInt([BI)I

    move-result v1

    int-to-double v1, v1

    aput-wide v1, v40, v4

    .line 1550
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v1, v1, 0x4

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto :goto_35

    :pswitch_58
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v11, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    add-int/lit8 v4, v6, 0x1

    .line 1728
    new-array v1, v9, [I

    aput-object v1, v15, v4

    add-int/lit8 v4, v4, 0x1

    .line 1730
    new-array v1, v9, [Ljava/lang/Object;

    aput-object v1, v15, v4

    .line 1731
    aput-wide v16, v40, v4

    :goto_35
    move v2, v9

    :goto_36
    move-object v9, v10

    move-object/from16 v25, v11

    goto/16 :goto_3c

    :pswitch_59
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v11, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    .line 1734
    aget-object v1, v15, v6

    if-ne v1, v13, :cond_35

    .line 1735
    aget-wide v1, v40, v6

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_35
    add-int/lit8 v4, v6, -0x1

    .line 1737
    aget-wide v2, v40, v4

    double-to-int v2, v2

    .line 1738
    aget-object v3, v15, v4

    check-cast v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    int-to-double v1, v2

    .line 1739
    aput-wide v1, v40, v4
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_35

    :catch_9
    move-exception v0

    move-object v4, v0

    move-object/from16 v43, v8

    move-object v2, v12

    move-object v3, v13

    move-object v5, v14

    goto/16 :goto_43

    :pswitch_5a
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v39, v25

    move v11, v2

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    goto/16 :goto_b

    .line 1763
    :goto_37
    :try_start_f
    aget-object v1, v15, v6

    check-cast v1, [Ljava/lang/Object;

    add-int/lit8 v4, v6, -0x1

    .line 1765
    aget-object v2, v15, v4

    check-cast v2, [I

    const/16 v3, 0x42

    if-ne v11, v3, :cond_36

    .line 1768
    iget-object v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v3, v3, Lorg/mozilla/javascript/InterpreterData;->literalIds:[Ljava/lang/Object;

    aget-object v3, v3, v9

    check-cast v3, [Ljava/lang/Object;

    .line 1769
    iget-object v5, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v3, v1, v2, v12, v5}, Lorg/mozilla/javascript/ScriptRuntime;->newObjectLiteral([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    goto :goto_39

    :cond_36
    const/16 v2, -0x1f

    if-ne v11, v2, :cond_37

    .line 1774
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v2, v2, Lorg/mozilla/javascript/InterpreterData;->literalIds:[Ljava/lang/Object;

    aget-object v2, v2, v9

    check-cast v2, [I

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    .line 1776
    :goto_38
    iget-object v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v2, v12, v3}, Lorg/mozilla/javascript/ScriptRuntime;->newArrayLiteral([Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    .line 1779
    :goto_39
    aput-object v1, v15, v4

    goto/16 :goto_47

    :pswitch_5b
    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v39, v25

    move v6, v4

    move-object/from16 v6, v38

    move-object/from16 v8, v41

    const/4 v2, 0x0

    goto/16 :goto_7

    :pswitch_5c
    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v39, v25

    move v6, v4

    move-object/from16 v6, v38

    move-object/from16 v8, v41

    const/4 v2, 0x1

    goto/16 :goto_7

    :pswitch_5d
    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v39, v25

    move v6, v4

    move-object/from16 v6, v38

    move-object/from16 v8, v41

    const/4 v2, 0x2

    goto/16 :goto_7

    :pswitch_5e
    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v39, v25

    move v6, v4

    move-object/from16 v6, v38

    move-object/from16 v8, v41

    const/4 v2, 0x3

    goto/16 :goto_7

    :pswitch_5f
    move-object/from16 v38, v6

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v39, v25

    move v6, v4

    move-object/from16 v6, v38

    move-object/from16 v8, v41

    const/4 v2, 0x4

    goto/16 :goto_7

    :pswitch_60
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v39, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    const/4 v2, 0x5

    move-object/from16 v6, v38

    :goto_3a
    move/from16 v10, v42

    move-object/from16 v15, p1

    move-object v14, v8

    move-object/from16 v8, v41

    goto/16 :goto_7

    :pswitch_61
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v39, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    .line 1854
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v1, v10, v1

    and-int/lit16 v2, v1, 0xff

    .line 1855
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_46

    :pswitch_62
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v39, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    .line 1858
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v10, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v2

    .line 1859
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v3, 0x2

    add-int/2addr v1, v3

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_46

    :pswitch_63
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v39, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    .line 1862
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v10, v1}, Lorg/mozilla/javascript/Interpreter;->getInt([BI)I

    move-result v2

    .line 1863
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v1, v1, 0x4

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_46

    :pswitch_64
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v39, v25

    const/4 v1, 0x0

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    .line 1866
    aget-object v25, v35, v1

    goto/16 :goto_3b

    :pswitch_65
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v39, v25

    const/4 v1, 0x1

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    .line 1869
    aget-object v25, v35, v1

    goto :goto_3b

    :pswitch_66
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v39, v25

    const/4 v1, 0x2

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    .line 1872
    aget-object v25, v35, v1

    goto :goto_3b

    :pswitch_67
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v39, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    .line 1875
    aget-object v25, v35, v33
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_d

    :goto_3b
    move v4, v6

    move v2, v9

    move-object v9, v10

    :goto_3c
    move-object v5, v14

    move-object v3, v15

    move-object/from16 v11, v35

    move-object/from16 v7, v37

    move-object/from16 v6, v38

    goto/16 :goto_40

    :pswitch_68
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v39, v25

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    .line 1878
    :try_start_10
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v1, v10, v1

    and-int/lit16 v1, v1, 0xff

    aget-object v25, v35, v1
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_b

    .line 1879
    :try_start_11
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_a

    const/16 v32, 0x1

    add-int/lit8 v1, v1, 0x1

    :try_start_12
    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_c

    goto :goto_3b

    :catch_a
    move-exception v0

    const/16 v32, 0x1

    goto/16 :goto_3d

    :catch_b
    move-exception v0

    const/16 v32, 0x1

    goto/16 :goto_41

    :pswitch_69
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v39, v25

    const/16 v32, 0x1

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    .line 1882
    :try_start_13
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v10, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v1

    aget-object v25, v35, v1
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_d

    .line 1883
    :try_start_14
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v2, 0x2

    add-int/2addr v1, v2

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_c

    goto :goto_3b

    :pswitch_6a
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v39, v25

    const/16 v32, 0x1

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    .line 1886
    :try_start_15
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v10, v1}, Lorg/mozilla/javascript/Interpreter;->getInt([BI)I

    move-result v1

    aget-object v25, v35, v1
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_d

    .line 1887
    :try_start_16
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v1, v1, 0x4

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_c

    goto/16 :goto_3b

    :catch_c
    move-exception v0

    :goto_3d
    move-object v4, v0

    move-object/from16 v43, v8

    move-object v2, v12

    move-object v3, v13

    move-object v5, v14

    move-object/from16 v11, v25

    goto :goto_43

    :pswitch_6b
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v39, v25

    const/16 v32, 0x1

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    .line 1580
    :try_start_17
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v1, v10, v1

    move v2, v1

    :goto_3e
    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object/from16 v24, v40

    move/from16 v25, v6

    move-object/from16 v26, v38

    move-object/from16 v27, v37

    move/from16 v28, v2

    .line 1583
    invoke-static/range {v22 .. v28}, Lorg/mozilla/javascript/Interpreter;->doGetVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[DI)I

    move-result v4

    :goto_3f
    move-object v9, v10

    move-object v5, v14

    move-object v3, v15

    move-object/from16 v11, v35

    move-object/from16 v7, v37

    move-object/from16 v6, v38

    move-object/from16 v25, v39

    :goto_40
    move-object/from16 v24, v40

    goto/16 :goto_3a

    :catch_d
    move-exception v0

    :goto_41
    move-object v4, v0

    move-object/from16 v43, v8

    move-object v2, v12

    move-object v3, v13

    move-object v5, v14

    :goto_42
    move-object/from16 v11, v39

    :goto_43
    move-object/from16 v1, v41

    :goto_44
    const/4 v13, 0x1

    const/16 v31, 0x0

    goto/16 :goto_66

    :pswitch_6c
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v39, v25

    const/16 v32, 0x1

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    .line 1573
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v1, v10, v1

    move v2, v1

    :goto_45
    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object/from16 v24, v40

    move/from16 v25, v6

    move-object/from16 v26, v38

    move-object/from16 v27, v37

    move-object/from16 v28, p1

    move/from16 v29, v2

    .line 1576
    invoke-static/range {v22 .. v29}, Lorg/mozilla/javascript/Interpreter;->doSetVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I

    :goto_46
    move v4, v6

    goto :goto_3f

    :pswitch_6d
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v39, v25

    const/16 v32, 0x1

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    add-int/lit8 v4, v6, 0x1

    .line 1616
    aput-object v8, v15, v4

    :cond_38
    :goto_47
    move v2, v9

    goto :goto_3f

    :pswitch_6e
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v39, v25

    const/16 v32, 0x1

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    add-int/lit8 v4, v6, 0x1

    .line 1592
    aput-object v13, v15, v4

    .line 1593
    aput-wide v16, v40, v4

    goto :goto_47

    :pswitch_6f
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v39, v25

    const/16 v32, 0x1

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    add-int/lit8 v4, v6, 0x1

    .line 1597
    aput-object v13, v15, v4

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 1598
    aput-wide v1, v40, v4

    goto :goto_47

    :pswitch_70
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v39, v25

    const/16 v32, 0x1

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    .line 1783
    aget-object v1, v15, v6

    if-ne v1, v13, :cond_39

    .line 1784
    aget-wide v1, v40, v6

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_39
    add-int/lit8 v4, v6, -0x1

    .line 1786
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->enterDotQuery(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    iput-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    goto :goto_47

    :pswitch_71
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v39, v25

    const/16 v32, 0x1

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move/from16 v9, v26

    .line 1790
    invoke-static {v14, v6}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v1

    .line 1791
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->updateDotQuery(ZLorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 1793
    aput-object v1, v15, v6

    .line 1794
    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->leaveDotQuery(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    iput-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 1795
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v2, 0x2

    add-int/2addr v1, v2

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move-object/from16 v43, v8

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v7, v39

    goto/16 :goto_34

    :cond_3a
    add-int/lit8 v4, v6, -0x1

    :goto_48
    if-eqz v42, :cond_3b

    const/4 v1, 0x2

    .line 1900
    invoke-static {v12, v14, v1}, Lorg/mozilla/javascript/Interpreter;->addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V

    .line 1902
    :cond_3b
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v10, v1}, Lorg/mozilla/javascript/Interpreter;->getShort([BI)I

    move-result v1

    if-eqz v1, :cond_3c

    .line 1905
    iget v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v2, v1

    iput v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto :goto_49

    .line 1907
    :cond_3c
    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->longJumps:Lorg/mozilla/javascript/UintMap;

    iget v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/UintMap;->getExistingInt(I)I

    move-result v1

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    :goto_49
    if-eqz v42, :cond_38

    .line 1911
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    goto/16 :goto_47

    :pswitch_72
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v8, v14

    move-object/from16 p1, v15

    move-object/from16 v40, v24

    move-object/from16 v39, v25

    const/16 v32, 0x1

    move v11, v2

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    goto/16 :goto_16

    :goto_4a
    if-eqz v42, :cond_3d

    .line 1357
    iget v1, v12, Lorg/mozilla/javascript/Context;->instructionCount:I

    const/16 v2, 0x64

    add-int/2addr v1, v2

    iput v1, v12, Lorg/mozilla/javascript/Context;->instructionCount:I
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_d

    :cond_3d
    add-int/lit8 v2, v9, 0x1

    sub-int v7, v6, v2

    .line 1365
    :try_start_18
    aget-object v1, v15, v7

    check-cast v1, Lorg/mozilla/javascript/Callable;

    add-int/lit8 v2, v7, 0x1

    .line 1366
    aget-object v2, v15, v2

    move-object v6, v2

    check-cast v6, Lorg/mozilla/javascript/Scriptable;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_19

    const/16 v2, 0x46

    if-ne v11, v2, :cond_3e

    add-int/lit8 v2, v7, 0x2

    move-object/from16 v5, v40

    .line 1368
    :try_start_19
    invoke-static {v15, v5, v2, v9}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v2

    .line 1370
    invoke-static {v1, v6, v2, v12}, Lorg/mozilla/javascript/ScriptRuntime;->callRef(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Ref;

    move-result-object v1

    aput-object v1, v15, v7
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_d

    move-object/from16 v43, v8

    move-object v2, v12

    move-object/from16 v40, v13

    const/4 v13, 0x1

    const/16 v31, 0x0

    move v12, v9

    goto/16 :goto_54

    :cond_3e
    move-object/from16 v5, v40

    .line 1374
    :try_start_1a
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 1375
    iget-boolean v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_19

    if-eqz v3, :cond_3f

    .line 1376
    :try_start_1b
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_d

    :cond_3f
    move-object v4, v2

    .line 1378
    :try_start_1c
    instance-of v2, v1, Lorg/mozilla/javascript/InterpretedFunction;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_19

    if-eqz v2, :cond_43

    .line 1379
    :try_start_1d
    move-object v3, v1

    check-cast v3, Lorg/mozilla/javascript/InterpretedFunction;

    .line 1380
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v2, v2, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_10

    move-object/from16 v22, v8

    :try_start_1e
    iget-object v8, v3, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    if-ne v2, v8, :cond_42

    .line 1382
    new-instance v10, Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Lorg/mozilla/javascript/Interpreter$CallFrame;-><init>(Lorg/mozilla/javascript/Interpreter$1;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_f

    const/16 v8, -0x37

    if-ne v11, v8, :cond_40

    .line 1399
    :try_start_1f
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 1402
    invoke-static {v12, v14, v1}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_e

    move-object/from16 v23, v2

    goto :goto_4b

    :catch_e
    move-exception v0

    move-object v4, v0

    move-object v2, v12

    move-object v3, v13

    move-object v5, v14

    move-object/from16 v43, v22

    goto/16 :goto_42

    :cond_40
    move-object/from16 v23, v14

    :goto_4b
    add-int/lit8 v24, v7, 0x2

    move-object/from16 v1, p0

    move-object v2, v4

    move-object/from16 v25, v3

    move-object v3, v6

    move-object v4, v15

    move/from16 v6, v24

    move v15, v7

    move v7, v9

    move-object/from16 v40, v13

    move-object/from16 v13, v22

    const/16 v12, -0x37

    move-object/from16 v8, v25

    move/from16 v43, v9

    move-object/from16 v9, v23

    move-object/from16 v22, v10

    .line 1404
    :try_start_20
    invoke-static/range {v1 .. v10}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    if-eq v11, v12, :cond_41

    .line 1408
    iput v15, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    .line 1409
    iput v11, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_11

    :cond_41
    move-object/from16 v12, p0

    move-object v14, v13

    move-object/from16 v3, v22

    move-object/from16 v1, v30

    move-object/from16 v4, v39

    move-object/from16 v13, v40

    move-object/from16 v8, v41

    move/from16 v10, v42

    move/from16 v2, v43

    goto/16 :goto_75

    :cond_42
    move/from16 v43, v9

    move-object/from16 v40, v13

    move-object/from16 v13, v22

    goto :goto_4e

    :catch_f
    move-exception v0

    move-object/from16 v40, v13

    move-object/from16 v2, p0

    move-object v4, v0

    move-object v5, v14

    move-object/from16 v43, v22

    goto :goto_4d

    :catch_10
    move-exception v0

    move-object/from16 v40, v13

    move-object/from16 v2, p0

    move-object v4, v0

    move-object/from16 v43, v8

    :goto_4c
    move-object v5, v14

    :goto_4d
    move-object/from16 v11, v39

    move-object/from16 v3, v40

    goto/16 :goto_43

    :cond_43
    move/from16 v43, v9

    move-object/from16 v40, v13

    move-object v13, v8

    .line 1416
    :goto_4e
    :try_start_21
    instance-of v2, v1, Lorg/mozilla/javascript/NativeContinuation;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_18

    if-eqz v2, :cond_45

    .line 1419
    :try_start_22
    new-instance v2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    check-cast v1, Lorg/mozilla/javascript/NativeContinuation;

    invoke-direct {v2, v1, v14}, Lorg/mozilla/javascript/Interpreter$ContinuationJump;-><init>(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    move/from16 v12, v43

    if-nez v12, :cond_44

    .line 1424
    iput-object v13, v2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    goto :goto_4f

    :cond_44
    add-int/lit8 v7, v7, 0x2

    .line 1426
    aget-object v1, v15, v7

    iput-object v1, v2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    .line 1427
    aget-wide v3, v5, v7

    iput-wide v3, v2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_11

    :goto_4f
    move-object v4, v2

    move-object/from16 v43, v13

    move-object/from16 v11, v39

    move-object/from16 v3, v40

    move-object/from16 v1, v41

    const/4 v13, 0x1

    const/16 v31, 0x0

    move-object/from16 v2, p0

    goto/16 :goto_67

    :catch_11
    move-exception v0

    move-object/from16 v2, p0

    move-object v4, v0

    :goto_50
    move-object/from16 v43, v13

    goto :goto_4c

    :cond_45
    move/from16 v12, v43

    .line 1435
    :try_start_23
    instance-of v2, v1, Lorg/mozilla/javascript/IdFunctionObject;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_18

    if-eqz v2, :cond_49

    .line 1436
    :try_start_24
    move-object v9, v1

    check-cast v9, Lorg/mozilla/javascript/IdFunctionObject;

    .line 1437
    invoke-static {v9}, Lorg/mozilla/javascript/NativeContinuation;->isContinuationConstructor(Lorg/mozilla/javascript/IdFunctionObject;)Z

    move-result v2
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_15

    if-eqz v2, :cond_46

    .line 1438
    :try_start_25
    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_11

    const/4 v3, 0x0

    move-object/from16 v8, p0

    :try_start_26
    invoke-static {v8, v2, v3}, Lorg/mozilla/javascript/Interpreter;->captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;

    move-result-object v2

    aput-object v2, v1, v7
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_12

    move-object v2, v8

    move-object/from16 v43, v13

    const/4 v13, 0x1

    const/16 v31, 0x0

    goto/16 :goto_54

    :catch_12
    move-exception v0

    move-object v4, v0

    move-object v2, v8

    goto :goto_50

    :cond_46
    const/4 v3, 0x0

    move-object/from16 v8, p0

    .line 1444
    :try_start_27
    invoke-static {v9}, Lorg/mozilla/javascript/BaseFunction;->isApplyOrCall(Lorg/mozilla/javascript/IdFunctionObject;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1445
    invoke-static {v6}, Lorg/mozilla/javascript/ScriptRuntime;->getCallable(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    .line 1446
    instance-of v3, v2, Lorg/mozilla/javascript/InterpretedFunction;

    if-eqz v3, :cond_48

    .line 1447
    move-object v3, v2

    check-cast v3, Lorg/mozilla/javascript/InterpretedFunction;

    .line 1448
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v2, v2, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    move-object/from16 v22, v4

    iget-object v4, v3, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_14

    if-ne v2, v4, :cond_47

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v10, v3

    const/16 v31, 0x0

    move v3, v12

    move-object/from16 v6, v22

    move-object v4, v15

    move-object v15, v6

    move v6, v7

    move v7, v11

    move-object v11, v8

    move-object v8, v15

    .line 1449
    :try_start_28
    invoke-static/range {v1 .. v10}, Lorg/mozilla/javascript/Interpreter;->initFrameForApplyOrCall(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DIILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/InterpretedFunction;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v3
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_13

    move v2, v12

    move-object v14, v13

    move-object/from16 v1, v30

    move-object/from16 v4, v39

    move-object/from16 v13, v40

    move-object/from16 v8, v41

    move/from16 v10, v42

    const/4 v9, 0x0

    move-object v12, v11

    goto/16 :goto_76

    :catch_13
    move-exception v0

    move-object v4, v0

    move-object v2, v11

    goto :goto_51

    :cond_47
    move-object v9, v8

    move-object/from16 v8, v22

    const/16 v31, 0x0

    goto :goto_53

    :cond_48
    move-object v9, v8

    const/16 v31, 0x0

    goto :goto_52

    :catch_14
    move-exception v0

    const/16 v31, 0x0

    move-object v4, v0

    move-object v2, v8

    goto :goto_51

    :catch_15
    move-exception v0

    const/16 v31, 0x0

    move-object/from16 v2, p0

    move-object v4, v0

    :goto_51
    move-object/from16 v43, v13

    move-object v5, v14

    move-object/from16 v11, v39

    move-object/from16 v3, v40

    move-object/from16 v1, v41

    const/4 v13, 0x1

    goto/16 :goto_66

    :cond_49
    const/16 v31, 0x0

    move-object/from16 v9, p0

    :goto_52
    move-object v8, v4

    .line 1460
    :goto_53
    :try_start_29
    instance-of v2, v1, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;

    if-eqz v2, :cond_4a

    .line 1462
    move-object v4, v1

    check-cast v4, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;

    .line 1463
    iget-object v2, v4, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;->noSuchMethodMethod:Lorg/mozilla/javascript/Callable;

    .line 1465
    instance-of v3, v2, Lorg/mozilla/javascript/InterpretedFunction;

    if-eqz v3, :cond_4a

    .line 1466
    move-object v3, v2

    check-cast v3, Lorg/mozilla/javascript/InterpretedFunction;

    .line 1467
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v2, v2, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    move-object/from16 v22, v4

    iget-object v4, v3, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_17

    if-ne v2, v4, :cond_4a

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v23, v3

    move v3, v12

    move-object/from16 v10, v22

    move-object v4, v15

    move-object v15, v6

    move v6, v7

    move v7, v11

    move-object v11, v8

    move-object v8, v15

    move-object v15, v9

    move-object v9, v11

    move-object/from16 v43, v13

    const/4 v13, 0x1

    move-object/from16 v11, v23

    .line 1468
    :try_start_2a
    invoke-static/range {v1 .. v11}, Lorg/mozilla/javascript/Interpreter;->initFrameForNoSuchMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DIILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;Lorg/mozilla/javascript/InterpretedFunction;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v3
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_16

    move v2, v12

    move-object v12, v15

    move-object/from16 v1, v30

    move-object/from16 v4, v39

    move-object/from16 v13, v40

    move-object/from16 v8, v41

    goto/16 :goto_70

    :catch_16
    move-exception v0

    move-object v4, v0

    move-object v5, v14

    move-object v2, v15

    goto/16 :goto_59

    :cond_4a
    move-object v3, v6

    move-object v4, v8

    move-object v2, v9

    move-object/from16 v43, v13

    const/4 v13, 0x1

    .line 1476
    :try_start_2b
    iput-object v14, v2, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    .line 1477
    iput v11, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    .line 1478
    iput v7, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    add-int/lit8 v6, v7, 0x2

    .line 1479
    invoke-static {v15, v5, v6, v12}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v2, v4, v3, v6}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v15, v7

    :goto_54
    move-object/from16 v24, v5

    move v4, v7

    :goto_55
    move-object v9, v10

    move-object v5, v14

    move-object v3, v15

    move-object/from16 v11, v35

    move-object/from16 v7, v37

    move-object/from16 v6, v38

    move-object/from16 v25, v39

    move-object/from16 v13, v40

    goto/16 :goto_5b

    :catch_17
    move-exception v0

    move-object v2, v9

    goto :goto_56

    :catch_18
    move-exception v0

    const/16 v31, 0x0

    move-object/from16 v2, p0

    :goto_56
    move-object/from16 v43, v13

    const/4 v13, 0x1

    goto/16 :goto_58

    :catch_19
    move-exception v0

    move-object/from16 v43, v8

    move-object v2, v12

    move-object/from16 v40, v13

    const/4 v13, 0x1

    const/16 v31, 0x0

    goto/16 :goto_58

    :pswitch_73
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v2, v12

    move-object/from16 v40, v13

    move-object/from16 v43, v14

    move-object/from16 p1, v15

    move-object/from16 v39, v25

    move/from16 v12, v26

    const/4 v13, 0x1

    const/16 v31, 0x0

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move-object/from16 v5, v24

    .line 1307
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v1, v12

    const/4 v3, 0x0

    .line 1308
    aput-object v3, v15, v1

    move-object v12, v2

    move-object/from16 v24, v5

    move v4, v6

    move-object v9, v10

    move-object v5, v14

    move-object v3, v15

    move-object/from16 v11, v35

    move-object/from16 v7, v37

    move-object/from16 v6, v38

    move-object/from16 v25, v39

    move-object/from16 v13, v40

    move-object/from16 v8, v41

    move/from16 v10, v42

    move-object/from16 v14, v43

    move-object/from16 v15, p1

    move v2, v1

    goto/16 :goto_7

    :pswitch_74
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v2, v12

    move-object/from16 v40, v13

    move-object/from16 v43, v14

    move-object/from16 p1, v15

    move-object/from16 v39, v25

    move/from16 v12, v26

    const/4 v13, 0x1

    const/16 v31, 0x0

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move-object/from16 v5, v24

    .line 1743
    aget-object v1, v15, v6

    add-int/lit8 v4, v6, -0x1

    .line 1745
    aget-wide v6, v5, v4

    double-to-int v3, v6

    .line 1746
    aget-object v6, v15, v4

    check-cast v6, [Ljava/lang/Object;

    aput-object v1, v6, v3

    add-int/lit8 v1, v4, -0x1

    .line 1747
    aget-object v1, v15, v1

    check-cast v1, [I

    aput v18, v1, v3

    add-int/lit8 v3, v3, 0x1

    int-to-double v6, v3

    .line 1748
    aput-wide v6, v5, v4

    goto :goto_57

    :pswitch_75
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v2, v12

    move-object/from16 v40, v13

    move-object/from16 v43, v14

    move-object/from16 p1, v15

    move-object/from16 v39, v25

    move/from16 v12, v26

    const/4 v13, 0x1

    const/16 v31, 0x0

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move-object/from16 v5, v24

    .line 1752
    aget-object v1, v15, v6

    add-int/lit8 v4, v6, -0x1

    .line 1754
    aget-wide v6, v5, v4

    double-to-int v3, v6

    .line 1755
    aget-object v6, v15, v4

    check-cast v6, [Ljava/lang/Object;

    aput-object v1, v6, v3

    add-int/lit8 v1, v4, -0x1

    .line 1756
    aget-object v1, v15, v1

    check-cast v1, [I

    aput v13, v1, v3

    add-int/lit8 v3, v3, 0x1

    int-to-double v6, v3

    .line 1757
    aput-wide v6, v5, v4
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_1a

    :goto_57
    move-object/from16 v24, v5

    goto/16 :goto_55

    :catch_1a
    move-exception v0

    :goto_58
    move-object v4, v0

    move-object v5, v14

    :goto_59
    move-object/from16 v11, v39

    move-object/from16 v3, v40

    goto/16 :goto_5d

    :pswitch_76
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v2, v12

    move-object/from16 v40, v13

    move-object/from16 v43, v14

    move-object/from16 p1, v15

    move-object/from16 v39, v25

    move/from16 v12, v26

    const/4 v13, 0x1

    const/16 v31, 0x0

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move-object/from16 v5, v24

    .line 1218
    :try_start_2c
    aget-object v1, v15, v6
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_1d

    move-object/from16 v3, v40

    if-ne v1, v3, :cond_4b

    .line 1219
    :try_start_2d
    aget-wide v7, v5, v6

    invoke-static {v7, v8}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1b

    goto :goto_5a

    :catch_1b
    move-exception v0

    move-object v4, v0

    move-object v5, v14

    move-object/from16 v11, v39

    goto/16 :goto_5d

    :cond_4b
    :goto_5a
    add-int/lit8 v4, v6, -0x1

    .line 1221
    :try_start_2e
    aget-object v6, v15, v4

    check-cast v6, Lorg/mozilla/javascript/Scriptable;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_1c

    move-object/from16 v7, v39

    .line 1222
    :try_start_2f
    invoke-static {v6, v1, v2, v7}, Lorg/mozilla/javascript/ScriptRuntime;->setConst(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Ljava/lang/String;)Ljava/lang/Object;

    aput-object v1, v15, v4

    move-object v13, v3

    move-object/from16 v24, v5

    move-object/from16 v25, v7

    move-object v9, v10

    move-object v5, v14

    move-object v3, v15

    move-object/from16 v11, v35

    move-object/from16 v7, v37

    move-object/from16 v6, v38

    :goto_5b
    move-object/from16 v8, v41

    goto/16 :goto_65

    :catch_1c
    move-exception v0

    move-object/from16 v7, v39

    goto :goto_5c

    :catch_1d
    move-exception v0

    move-object/from16 v7, v39

    move-object/from16 v3, v40

    goto :goto_5c

    :pswitch_77
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v2, v12

    move-object/from16 v43, v14

    move-object/from16 p1, v15

    move-object/from16 v7, v25

    const/16 v31, 0x0

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move-object v3, v13

    move-object/from16 v5, v24

    const/4 v13, 0x1

    .line 1566
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v4, v1, 0x1

    iput v4, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v1, v10, v1
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_1e

    move v12, v1

    move-object/from16 v1, v41

    goto/16 :goto_63

    :catch_1e
    move-exception v0

    :goto_5c
    move-object v4, v0

    move-object v11, v7

    move-object v5, v14

    :goto_5d
    move-object/from16 v1, v41

    goto/16 :goto_66

    :pswitch_78
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object/from16 v43, v14

    move-object/from16 p1, v15

    move-object/from16 v7, v25

    const/16 v31, 0x0

    move v11, v2

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v5, v24

    move/from16 v12, v26

    const/4 v13, 0x1

    .line 976
    :try_start_30
    iget-boolean v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1f

    if-nez v1, :cond_4c

    .line 979
    :try_start_31
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    sub-int/2addr v1, v13

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 980
    invoke-static {v14}, Lorg/mozilla/javascript/Interpreter;->captureFrameForGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v1

    .line 981
    iput-boolean v13, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 982
    new-instance v4, Lorg/mozilla/javascript/NativeGenerator;

    iget-object v5, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v6, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    invoke-direct {v4, v5, v6, v1}, Lorg/mozilla/javascript/NativeGenerator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeFunction;Ljava/lang/Object;)V

    .line 984
    iput-object v4, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1e

    move-object/from16 v1, v41

    goto :goto_60

    .line 992
    :cond_4c
    :goto_5e
    :try_start_32
    iget-boolean v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1f

    if-nez v1, :cond_4d

    move-object/from16 v1, v41

    .line 993
    :try_start_33
    invoke-static {v2, v14, v6, v1}, Lorg/mozilla/javascript/Interpreter;->freezeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_4d
    move-object/from16 v1, v41

    .line 995
    invoke-static {v14, v6, v1, v11}, Lorg/mozilla/javascript/Interpreter;->thawGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;I)Ljava/lang/Object;

    move-result-object v4

    .line 996
    sget-object v8, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v4, v8, :cond_51

    move-object v11, v7

    goto/16 :goto_67

    :catch_1f
    move-exception v0

    move-object/from16 v1, v41

    :goto_5f
    move-object v4, v0

    move-object v11, v7

    move-object v5, v14

    goto/16 :goto_66

    :pswitch_79
    move-object v1, v8

    move/from16 v42, v10

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v43, v14

    move-object/from16 v7, v25

    move/from16 v12, v26

    const/4 v13, 0x1

    const/16 v31, 0x0

    move-object v14, v5

    move-object v10, v9

    .line 1005
    iput-boolean v13, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 1006
    iget v4, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v10, v4}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v4

    .line 1007
    new-instance v5, Lorg/mozilla/javascript/JavaScriptException;

    iget-object v6, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v6}, Lorg/mozilla/javascript/NativeIterator;->getStopIterationObject(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v6

    iget-object v8, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v8, v8, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-direct {v5, v6, v8, v4}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object v5, v1, Lorg/mozilla/javascript/Interpreter$GeneratorState;->returnedException:Ljava/lang/RuntimeException;

    :goto_60
    const/4 v4, 0x0

    .line 1917
    :goto_61
    invoke-static {v2, v14, v4}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    .line 1918
    iget-object v4, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_23

    .line 1919
    :try_start_34
    iget-wide v5, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_22

    .line 1920
    :try_start_35
    iget-object v8, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v8, :cond_4f

    .line 1921
    iget-object v8, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_21

    .line 1922
    :try_start_36
    iget-boolean v9, v8, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-eqz v9, :cond_4e

    .line 1923
    invoke-virtual {v8}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v8

    .line 1925
    :cond_4e
    invoke-static {v8, v4, v5, v6}, Lorg/mozilla/javascript/Interpreter;->setCallResult(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;D)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_20

    move-object v13, v3

    move-wide/from16 v19, v5

    move-object v4, v7

    move-object v3, v8

    move/from16 v10, v42

    move-object/from16 v14, v43

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/16 v21, 0x0

    move-object v8, v1

    move-object/from16 v1, v30

    move/from16 v44, v12

    move-object v12, v2

    move/from16 v2, v44

    goto/16 :goto_3

    :catch_20
    move-exception v0

    move-object/from16 v21, v4

    move-wide/from16 v19, v5

    move-object v11, v7

    move-object v5, v8

    goto/16 :goto_4

    :cond_4f
    move-object v1, v4

    move-object/from16 v4, v30

    goto/16 :goto_71

    :catch_21
    move-exception v0

    move-object/from16 v21, v4

    move-wide/from16 v19, v5

    goto :goto_62

    :catch_22
    move-exception v0

    move-object/from16 v21, v4

    :goto_62
    move-object v11, v7

    move-object v5, v14

    goto/16 :goto_4

    :pswitch_7a
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object v1, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v2, v12

    move-object/from16 v43, v14

    move-object/from16 p1, v15

    move-object/from16 v7, v25

    move/from16 v12, v26

    const/16 v31, 0x0

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move-object v3, v13

    move-object/from16 v5, v24

    const/4 v13, 0x1

    .line 1823
    :try_start_37
    iget-object v4, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v4, :cond_51

    .line 1824
    iget-object v4, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    invoke-interface {v4, v2}, Lorg/mozilla/javascript/debug/DebugFrame;->onDebuggerStatement(Lorg/mozilla/javascript/Context;)V

    goto :goto_64

    :cond_50
    move-object/from16 v38, v6

    move-object/from16 v37, v7

    move-object v1, v8

    move/from16 v42, v10

    move-object/from16 v35, v11

    move-object v2, v12

    move-object/from16 v43, v14

    move-object/from16 p1, v15

    move-object/from16 v7, v25

    move/from16 v12, v26

    const/16 v31, 0x0

    move-object v15, v3

    move v6, v4

    move-object v14, v5

    move-object v10, v9

    move-object v3, v13

    move-object/from16 v5, v24

    const/4 v13, 0x1

    :goto_63
    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object/from16 v24, v5

    move/from16 v25, v6

    move-object/from16 v26, v38

    move-object/from16 v27, v37

    move-object/from16 v28, p1

    move/from16 v29, v12

    .line 1569
    invoke-static/range {v22 .. v29}, Lorg/mozilla/javascript/Interpreter;->doSetConstVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_23

    :cond_51
    :goto_64
    move-object v8, v1

    move-object v13, v3

    move-object/from16 v24, v5

    move v4, v6

    move-object/from16 v25, v7

    move-object v9, v10

    move-object v5, v14

    move-object v3, v15

    move-object/from16 v11, v35

    move-object/from16 v7, v37

    move-object/from16 v6, v38

    :goto_65
    move/from16 v10, v42

    move-object/from16 v14, v43

    move-object/from16 v15, p1

    move/from16 v44, v12

    move-object v12, v2

    move/from16 v2, v44

    goto/16 :goto_7

    :catch_23
    move-exception v0

    goto/16 :goto_5f

    :catch_24
    move-exception v0

    move-object v1, v8

    move/from16 v42, v10

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v43, v14

    move-object/from16 v7, v25

    const/4 v13, 0x1

    const/16 v31, 0x0

    move-object v14, v5

    move-object v4, v0

    move-object v11, v7

    goto :goto_66

    :catch_25
    move-exception v0

    move-object v1, v8

    move/from16 v42, v10

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v43, v14

    const/4 v13, 0x1

    const/16 v31, 0x0

    move-object v14, v5

    move-object v11, v4

    goto/16 :goto_4

    :goto_66
    if-nez v30, :cond_6a

    move-object v14, v5

    :goto_67
    if-eqz v4, :cond_69

    if-eqz v1, :cond_52

    .line 1955
    iget v5, v1, Lorg/mozilla/javascript/Interpreter$GeneratorState;->operation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_52

    iget-object v5, v1, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    if-ne v4, v5, :cond_52

    const/4 v9, 0x0

    :goto_68
    const/4 v15, 0x1

    goto :goto_6c

    .line 1960
    :cond_52
    instance-of v5, v4, Lorg/mozilla/javascript/JavaScriptException;

    if-eqz v5, :cond_53

    :goto_69
    const/4 v9, 0x0

    const/4 v15, 0x2

    goto :goto_6c

    .line 1962
    :cond_53
    instance-of v5, v4, Lorg/mozilla/javascript/EcmaError;

    if-eqz v5, :cond_54

    goto :goto_69

    .line 1965
    :cond_54
    instance-of v5, v4, Lorg/mozilla/javascript/EvaluatorException;

    if-eqz v5, :cond_55

    goto :goto_69

    .line 1967
    :cond_55
    instance-of v5, v4, Lorg/mozilla/javascript/ContinuationPending;

    if-eqz v5, :cond_56

    const/4 v9, 0x0

    const/4 v15, 0x0

    goto :goto_6c

    .line 1969
    :cond_56
    instance-of v5, v4, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_58

    const/16 v5, 0xd

    .line 1970
    invoke-virtual {v2, v5}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v5

    if-eqz v5, :cond_57

    :goto_6a
    const/4 v15, 0x2

    goto :goto_6b

    :cond_57
    const/4 v15, 0x1

    :goto_6b
    const/4 v9, 0x0

    goto :goto_6c

    :cond_58
    const/16 v5, 0xd

    .line 1973
    instance-of v6, v4, Ljava/lang/Error;

    if-eqz v6, :cond_5a

    .line 1974
    invoke-virtual {v2, v5}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v5

    if-eqz v5, :cond_59

    goto :goto_6a

    :cond_59
    const/4 v15, 0x0

    goto :goto_6b

    .line 1977
    :cond_5a
    instance-of v6, v4, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    if-eqz v6, :cond_5b

    .line 1980
    move-object v9, v4

    check-cast v9, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    goto :goto_68

    .line 1982
    :cond_5b
    invoke-virtual {v2, v5}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v5

    if-eqz v5, :cond_57

    goto :goto_6a

    :goto_6c
    if-eqz v42, :cond_5c

    const/16 v5, 0x64

    .line 1989
    :try_start_38
    invoke-static {v2, v14, v5}, Lorg/mozilla/javascript/Interpreter;->addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_38} :catch_27
    .catch Ljava/lang/Error; {:try_start_38 .. :try_end_38} :catch_26

    goto :goto_6d

    :catch_26
    move-exception v0

    move-object v4, v0

    const/4 v9, 0x0

    const/4 v15, 0x0

    goto :goto_6d

    :catch_27
    move-exception v0

    move-object v4, v0

    const/4 v15, 0x1

    .line 2001
    :cond_5c
    :goto_6d
    iget-object v5, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v5, :cond_5d

    instance-of v6, v4, Ljava/lang/RuntimeException;

    if-eqz v6, :cond_5d

    .line 2005
    move-object v6, v4

    check-cast v6, Ljava/lang/RuntimeException;

    .line 2007
    :try_start_39
    invoke-interface {v5, v2, v6}, Lorg/mozilla/javascript/debug/DebugFrame;->onExceptionThrown(Lorg/mozilla/javascript/Context;Ljava/lang/Throwable;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_28

    goto :goto_6e

    :catch_28
    move-exception v0

    move-object v4, v0

    const/4 v9, 0x0

    const/4 v15, 0x0

    :cond_5d
    :goto_6e
    if-eqz v15, :cond_5f

    const/4 v5, 0x2

    if-eq v15, v5, :cond_5e

    const/4 v6, 0x1

    goto :goto_6f

    :cond_5e
    const/4 v6, 0x0

    .line 2020
    :goto_6f
    invoke-static {v14, v6}, Lorg/mozilla/javascript/Interpreter;->getExceptionHandler(Lorg/mozilla/javascript/Interpreter$CallFrame;Z)I

    move-result v6

    if-ltz v6, :cond_60

    move-object v8, v1

    move-object v12, v2

    move-object v13, v3

    move-object v1, v4

    move v2, v6

    move-object v4, v11

    move-object v3, v14

    :goto_70
    move/from16 v10, v42

    move-object/from16 v14, v43

    goto/16 :goto_75

    :cond_5f
    const/4 v5, 0x2

    .line 2031
    :cond_60
    invoke-static {v2, v14, v4}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    .line 2033
    iget-object v14, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-nez v14, :cond_68

    if-eqz v9, :cond_63

    .line 2045
    iget-object v5, v9, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-nez v5, :cond_62

    .line 2049
    iget-object v5, v9, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v5, :cond_61

    goto :goto_74

    .line 2055
    :cond_61
    iget-object v4, v9, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    .line 2056
    iget-wide v5, v9, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D

    move-object v1, v4

    const/4 v4, 0x0

    goto :goto_71

    .line 2047
    :cond_62
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    throw v1

    :cond_63
    move-wide/from16 v5, v19

    move-object/from16 v1, v21

    .line 2065
    :goto_71
    iget-object v7, v2, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    if-eqz v7, :cond_64

    invoke-virtual {v7}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v7

    if-eqz v7, :cond_64

    .line 2068
    iget-object v7, v2, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v7}, Lorg/mozilla/javascript/ObjArray;->pop()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v2, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    goto :goto_72

    :cond_64
    const/4 v7, 0x0

    .line 2072
    iput-object v7, v2, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    .line 2074
    iput-object v7, v2, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    :goto_72
    if-eqz v4, :cond_66

    .line 2078
    instance-of v1, v4, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_65

    .line 2079
    check-cast v4, Ljava/lang/RuntimeException;

    throw v4

    .line 2082
    :cond_65
    check-cast v4, Ljava/lang/Error;

    throw v4

    :cond_66
    if-eq v1, v3, :cond_67

    goto :goto_73

    .line 2086
    :cond_67
    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :goto_73
    return-object v1

    :cond_68
    if-eqz v9, :cond_5d

    .line 2035
    iget-object v6, v9, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-ne v6, v14, :cond_5d

    :goto_74
    move-object v8, v1

    move-object v12, v2

    move-object v13, v3

    move-object v1, v4

    move-object v4, v11

    move-object v3, v14

    move/from16 v10, v42

    move-object/from16 v14, v43

    const/4 v2, -0x1

    :goto_75
    const/4 v9, 0x0

    :goto_76
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 1945
    :cond_69
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    throw v1

    .line 1936
    :cond_6a
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1937
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_32
        :pswitch_32
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_33
        :pswitch_33
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_22
        :pswitch_8
        :pswitch_7
        :pswitch_34
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isFrameEnterExitRequired(Lorg/mozilla/javascript/Interpreter$CallFrame;)Z
    .locals 1

    .line 2862
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean p0, p0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static processThrowable(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Interpreter$CallFrame;IZ)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .locals 5

    const/4 v0, 0x0

    if-ltz p3, :cond_2

    .line 2542
    iget-boolean p0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-eqz p0, :cond_0

    .line 2544
    invoke-virtual {p2}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object p2

    .line 2547
    :cond_0
    iget-object p0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object p0, p0, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    add-int/lit8 v1, p3, 0x2

    .line 2549
    aget v1, p0, v1

    iput v1, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    if-eqz p4, :cond_1

    .line 2551
    iget p4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    iput p4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    .line 2554
    :cond_1
    iget p4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->emptyStackTop:I

    iput p4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    .line 2555
    iget p4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/lit8 v1, p3, 0x5

    aget v1, p0, v1

    add-int/2addr v1, p4

    add-int/lit8 p3, p3, 0x4

    .line 2558
    aget p0, p0, p3

    add-int/2addr p4, p0

    .line 2561
    iget-object p0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object p3, p0, v1

    check-cast p3, Lorg/mozilla/javascript/Scriptable;

    iput-object p3, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 2562
    aput-object p1, p0, p4

    goto :goto_2

    .line 2567
    :cond_2
    check-cast p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    .line 2572
    iget-object p3, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-ne p3, p2, :cond_a

    .line 2577
    iget-object p2, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz p2, :cond_9

    .line 2581
    iget p2, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    const/4 p4, 0x1

    add-int/2addr p2, p4

    if-eqz p3, :cond_3

    .line 2583
    iget p3, p3, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    sub-int/2addr p2, p3

    .line 2589
    :cond_3
    iget-object p3, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/4 v1, 0x0

    move-object v3, v0

    const/4 v2, 0x0

    :goto_0
    if-eq v1, p2, :cond_7

    .line 2591
    iget-boolean v4, p3, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-eqz v4, :cond_6

    .line 2592
    invoke-static {p3}, Lorg/mozilla/javascript/Interpreter;->isFrameEnterExitRequired(Lorg/mozilla/javascript/Interpreter$CallFrame;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v3, :cond_4

    sub-int v3, p2, v1

    .line 2597
    new-array v3, v3, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 2600
    :cond_4
    aput-object p3, v3, v2

    add-int/lit8 v2, v2, 0x1

    .line 2603
    :cond_5
    iget-object p3, p3, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2591
    :cond_6
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v0

    :cond_7
    :goto_1
    if-eqz v2, :cond_8

    add-int/lit8 v2, v2, -0x1

    .line 2611
    aget-object p2, v3, v2

    .line 2612
    sget-object p3, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-static {p0, p2, p3, p4}, Lorg/mozilla/javascript/Interpreter;->enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V

    goto :goto_1

    .line 2619
    :cond_8
    iget-object p0, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object p2

    .line 2620
    iget-object p0, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    iget-wide p3, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D

    invoke-static {p2, p0, p3, p4}, Lorg/mozilla/javascript/Interpreter;->setCallResult(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;D)V

    .line 2623
    :goto_2
    iput-object v0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->throwable:Ljava/lang/Object;

    return-object p2

    .line 2577
    :cond_9
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v0

    .line 2572
    :cond_a
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v0
.end method

.method public static restartContinuation(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 855
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->hasTopCall(Lorg/mozilla/javascript/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 856
    invoke-static {p0, p1, p2, v1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->doTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 860
    :cond_0
    array-length p2, p3

    if-nez p2, :cond_1

    .line 861
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 863
    aget-object p2, p3, p2

    .line 866
    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeContinuation;->getImplementation()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-nez p3, :cond_2

    return-object p2

    .line 872
    :cond_2
    new-instance p3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    invoke-direct {p3, p0, v1}, Lorg/mozilla/javascript/Interpreter$ContinuationJump;-><init>(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    .line 874
    iput-object p2, p3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    .line 875
    invoke-static {p1, v1, p3}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static resumeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 834
    check-cast p3, Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 835
    new-instance p1, Lorg/mozilla/javascript/Interpreter$GeneratorState;

    invoke-direct {p1, p2, p4}, Lorg/mozilla/javascript/Interpreter$GeneratorState;-><init>(ILjava/lang/Object;)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 838
    :try_start_0
    invoke-static {p0, p3, p1}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    if-ne p0, p4, :cond_0

    .line 844
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    .line 842
    :cond_0
    throw p0

    .line 846
    :cond_1
    invoke-static {p0, p3, p1}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 847
    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$GeneratorState;->returnedException:Ljava/lang/RuntimeException;

    if-nez p1, :cond_2

    return-object p0

    .line 848
    :cond_2
    throw p1
.end method

.method private static setCallResult(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;D)V
    .locals 2

    .line 2956
    iget v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    const/16 v1, 0x26

    if-ne v0, v1, :cond_0

    .line 2957
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    aput-object p1, v0, v1

    .line 2958
    iget-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aput-wide p2, p1, v1

    goto :goto_0

    :cond_0
    const/16 p2, 0x1e

    if-ne v0, p2, :cond_2

    .line 2963
    instance-of p2, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz p2, :cond_1

    .line 2964
    iget-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget p3, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    aput-object p1, p2, p3

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 2969
    iput p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    return-void

    .line 2967
    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    throw p0
.end method

.method private static stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z
    .locals 6

    .line 3050
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 3051
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 3053
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    return v3

    .line 3055
    :cond_1
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    const-wide/16 v4, 0x0

    if-ne v0, v1, :cond_3

    .line 3056
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aget-wide v0, p0, p1

    cmpl-double p0, v0, v0

    if-nez p0, :cond_2

    cmpl-double p0, v0, v4

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_3
    if-eqz v0, :cond_8

    .line 3058
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v0, p0, :cond_4

    goto :goto_2

    .line 3060
    :cond_4
    instance-of p0, v0, Ljava/lang/Number;

    if-eqz p0, :cond_6

    .line 3061
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpl-double v0, p0, p0

    if-nez v0, :cond_5

    cmpl-double v0, p0, v4

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 3063
    :cond_6
    instance-of p0, v0, Ljava/lang/Boolean;

    if-eqz p0, :cond_7

    .line 3064
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 3066
    :cond_7
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_8
    :goto_2
    return v3
.end method

.method private static stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D
    .locals 2

    .line 3040
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 3041
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-eq v0, v1, :cond_0

    .line 3042
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide p0

    return-wide p0

    .line 3044
    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aget-wide v0, p0, p1

    return-wide v0
.end method

.method private static stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I
    .locals 2

    .line 3030
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 3031
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    .line 3032
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aget-wide v0, p0, p1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result p0

    return p0

    .line 3034
    :cond_0
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static thawGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;I)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    .line 2651
    iput-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 2652
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v0

    .line 2653
    iget v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 2654
    iget v1, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->operation:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 2657
    new-instance p1, Lorg/mozilla/javascript/JavaScriptException;

    iget-object p2, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object p0, p0, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-direct {p1, p2, p0, v0}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    return-object p1

    :cond_0
    if-ne v1, v2, :cond_1

    .line 2662
    iget-object p0, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    return-object p0

    :cond_1
    if-nez v1, :cond_3

    const/16 v0, 0x48

    if-ne p3, v0, :cond_2

    .line 2667
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget-object p2, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    aput-object p2, p0, p1

    .line 2668
    :cond_2
    sget-object p0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p0

    .line 2665
    :cond_3
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public captureStackInfo(Lorg/mozilla/javascript/RhinoException;)V
    .locals 7

    .line 596
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 597
    iget-object v2, v0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    if-nez v2, :cond_0

    goto :goto_4

    .line 605
    :cond_0
    iget-object v2, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 610
    :cond_1
    iget-object v2, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v2

    .line 611
    iget-object v4, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v4}, Lorg/mozilla/javascript/ObjArray;->peek()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    if-ne v4, v5, :cond_2

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/2addr v2, v3

    .line 620
    new-array v2, v2, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 621
    iget-object v4, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/ObjArray;->toArray([Ljava/lang/Object;)V

    goto :goto_1

    .line 608
    :cond_3
    :goto_0
    new-array v2, v3, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 623
    :goto_1
    array-length v4, v2

    sub-int/2addr v4, v3

    iget-object v0, v0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    check-cast v0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    aput-object v0, v2, v4

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 626
    :goto_2
    array-length v5, v2

    if-eq v0, v5, :cond_4

    .line 627
    aget-object v5, v2, v0

    iget v5, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    add-int/2addr v5, v3

    add-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 630
    :cond_4
    new-array v0, v4, [I

    .line 634
    array-length v3, v2

    :cond_5
    if-eqz v3, :cond_6

    add-int/lit8 v3, v3, -0x1

    .line 636
    aget-object v5, v2, v3

    :goto_3
    if-eqz v5, :cond_5

    add-int/lit8 v4, v4, -0x1

    .line 639
    iget v6, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    aput v6, v0, v4

    .line 640
    iget-object v5, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    goto :goto_3

    :cond_6
    if-nez v4, :cond_7

    .line 645
    iput-object v2, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    .line 646
    iput-object v0, p1, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    return-void

    .line 643
    :cond_7
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v1

    .line 599
    :cond_8
    :goto_4
    iput-object v1, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    .line 600
    iput-object v1, p1, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    return-void
.end method

.method public compile(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1

    .line 193
    new-instance v0, Lorg/mozilla/javascript/CodeGenerator;

    invoke-direct {v0}, Lorg/mozilla/javascript/CodeGenerator;-><init>()V

    .line 194
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mozilla/javascript/CodeGenerator;->compile(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)Lorg/mozilla/javascript/InterpreterData;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    .line 195
    iget-object p1, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    return-object p1
.end method

.method public createFunctionObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/Function;
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    if-ne p3, v0, :cond_0

    .line 220
    invoke-static {p1, p2, v0, p4}, Lorg/mozilla/javascript/InterpretedFunction;->createFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpreterData;Ljava/lang/Object;)Lorg/mozilla/javascript/InterpretedFunction;

    move-result-object p1

    return-object p1

    .line 218
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    throw p1
.end method

.method public createScriptObject(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/Script;
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    if-ne p1, v0, :cond_0

    .line 204
    invoke-static {v0, p2}, Lorg/mozilla/javascript/InterpretedFunction;->createScript(Lorg/mozilla/javascript/InterpreterData;Ljava/lang/Object;)Lorg/mozilla/javascript/InterpretedFunction;

    move-result-object p1

    return-object p1

    .line 202
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    throw p1
.end method

.method public getPatchedStack(Lorg/mozilla/javascript/RhinoException;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v1, v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "line.separator"

    .line 666
    invoke-static {v1}, Lorg/mozilla/javascript/SecurityUtilities;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 668
    iget-object v2, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    check-cast v2, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 669
    iget-object p1, p1, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    .line 670
    array-length v3, v2

    .line 671
    array-length v4, p1

    const/4 v5, 0x0

    :goto_0
    if-eqz v3, :cond_7

    add-int/lit8 v3, v3, -0x1

    const-string v6, "org.mozilla.javascript.Interpreter.interpretLoop"

    .line 675
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-gez v6, :cond_0

    goto/16 :goto_4

    :cond_0
    add-int/lit8 v6, v6, 0x30

    .line 683
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 684
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_2

    const/16 v8, 0xd

    if-ne v7, v8, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 689
    :cond_2
    :goto_2
    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    aget-object v5, v2, v3

    :goto_3
    if-eqz v5, :cond_6

    if-eqz v4, :cond_5

    add-int/lit8 v4, v4, -0x1

    .line 696
    iget-object v7, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 697
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\tat script"

    .line 698
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    iget-object v8, v7, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x2e

    .line 700
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 701
    iget-object v8, v7, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v8, 0x28

    .line 703
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 704
    iget-object v8, v7, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    aget v8, p1, v4

    if-ltz v8, :cond_4

    const/16 v9, 0x3a

    .line 708
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 709
    iget-object v7, v7, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    invoke-static {v7, v8}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    const/16 v7, 0x29

    .line 711
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 712
    iget-object v5, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    goto :goto_3

    .line 694
    :cond_5
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    throw p1

    :cond_6
    move v5, v6

    goto :goto_0

    .line 715
    :cond_7
    :goto_4
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScriptStack(Lorg/mozilla/javascript/RhinoException;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/RhinoException;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 721
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Interpreter;->getScriptStackElements(Lorg/mozilla/javascript/RhinoException;)[[Lorg/mozilla/javascript/ScriptStackElement;

    move-result-object p1

    .line 722
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "line.separator"

    .line 723
    invoke-static {v1}, Lorg/mozilla/javascript/SecurityUtilities;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 725
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p1, v4

    .line 726
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 727
    array-length v7, v5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v5, v8

    .line 728
    invoke-virtual {v9, v6}, Lorg/mozilla/javascript/ScriptStackElement;->renderJavaStyle(Ljava/lang/StringBuilder;)V

    .line 729
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 731
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getScriptStackElements(Lorg/mozilla/javascript/RhinoException;)[[Lorg/mozilla/javascript/ScriptStackElement;
    .locals 11

    .line 738
    iget-object v0, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 742
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 744
    iget-object v2, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    check-cast v2, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 745
    iget-object p1, p1, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    .line 746
    array-length v3, v2

    .line 747
    array-length v4, p1

    :goto_0
    if-eqz v3, :cond_5

    add-int/lit8 v3, v3, -0x1

    .line 750
    aget-object v5, v2, v3

    .line 751
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-eqz v5, :cond_4

    if-eqz v4, :cond_3

    add-int/lit8 v4, v4, -0x1

    .line 755
    iget-object v7, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 756
    iget-object v8, v7, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    .line 759
    aget v9, p1, v4

    if-ltz v9, :cond_1

    .line 761
    iget-object v10, v7, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    invoke-static {v10, v9}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v9

    goto :goto_2

    :cond_1
    const/4 v9, -0x1

    .line 763
    :goto_2
    iget-object v10, v7, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_2

    .line 764
    iget-object v7, v7, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    goto :goto_3

    :cond_2
    move-object v7, v1

    .line 766
    :goto_3
    iget-object v5, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 767
    new-instance v10, Lorg/mozilla/javascript/ScriptStackElement;

    invoke-direct {v10, v8, v7, v9}, Lorg/mozilla/javascript/ScriptStackElement;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 753
    :cond_3
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v1

    .line 769
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/mozilla/javascript/ScriptStackElement;

    invoke-interface {v6, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 771
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [[Lorg/mozilla/javascript/ScriptStackElement;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Lorg/mozilla/javascript/ScriptStackElement;

    return-object p1
.end method

.method public getSourcePositionFromStack(Lorg/mozilla/javascript/Context;[I)Ljava/lang/String;
    .locals 3

    .line 651
    iget-object p1, p1, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    check-cast p1, Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 652
    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 653
    iget p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    .line 654
    iget-object v2, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    invoke-static {v2, p1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result p1

    aput p1, p2, v1

    goto :goto_0

    .line 656
    :cond_0
    aput v1, p2, v1

    .line 658
    :goto_0
    iget-object p1, v0, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    return-object p1
.end method

.method public setEvalScriptFlag(Lorg/mozilla/javascript/Script;)V
    .locals 1

    .line 209
    check-cast p1, Lorg/mozilla/javascript/InterpretedFunction;

    iget-object p1, p1, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/mozilla/javascript/InterpreterData;->evalScriptFlag:Z

    return-void
.end method
