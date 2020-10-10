.class public Lorg/mozilla/javascript/ast/Jump;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "Jump.java"


# instance fields
.field private jumpNode:Lorg/mozilla/javascript/ast/Jump;

.field public target:Lorg/mozilla/javascript/Node;

.field private target2:Lorg/mozilla/javascript/Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 30
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/Jump;-><init>(I)V

    .line 35
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-void
.end method

.method public constructor <init>(ILorg/mozilla/javascript/Node;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/Jump;-><init>(I)V

    .line 40
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-void
.end method

.method public constructor <init>(ILorg/mozilla/javascript/Node;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/Jump;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 45
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-void
.end method


# virtual methods
.method public getContinue()Lorg/mozilla/javascript/Node;
    .locals 2

    .line 106
    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x84

    if-ne v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    return-object v0

    .line 106
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    throw v0
.end method

.method public getDefault()Lorg/mozilla/javascript/Node;
    .locals 2

    .line 64
    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x72

    if-ne v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    return-object v0

    .line 64
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    throw v0
.end method

.method public getFinally()Lorg/mozilla/javascript/Node;
    .locals 2

    .line 78
    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x51

    if-ne v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    return-object v0

    .line 78
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    throw v0
.end method

.method public getJumpStatement()Lorg/mozilla/javascript/ast/Jump;
    .locals 2

    .line 50
    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x78

    if-eq v0, v1, :cond_1

    const/16 v1, 0x79

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    throw v0

    .line 51
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->jumpNode:Lorg/mozilla/javascript/ast/Jump;

    return-object v0
.end method

.method public getLoop()Lorg/mozilla/javascript/ast/Jump;
    .locals 2

    .line 92
    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x82

    if-ne v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->jumpNode:Lorg/mozilla/javascript/ast/Jump;

    return-object v0

    .line 92
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    throw v0
.end method

.method public setContinue(Lorg/mozilla/javascript/Node;)V
    .locals 3

    .line 112
    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/4 v1, 0x0

    const/16 v2, 0x84

    if-ne v0, v2, :cond_2

    .line 113
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v2, 0x83

    if-ne v0, v2, :cond_1

    .line 114
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    if-nez v0, :cond_0

    .line 115
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    return-void

    .line 114
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    throw v1

    .line 113
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    throw v1

    .line 112
    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    throw v1
.end method

.method public setDefault(Lorg/mozilla/javascript/Node;)V
    .locals 3

    .line 70
    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/4 v1, 0x0

    const/16 v2, 0x72

    if-ne v0, v2, :cond_2

    .line 71
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v2, 0x83

    if-ne v0, v2, :cond_1

    .line 72
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    if-nez v0, :cond_0

    .line 73
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    return-void

    .line 72
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    throw v1

    .line 71
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    throw v1

    .line 70
    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    throw v1
.end method

.method public setFinally(Lorg/mozilla/javascript/Node;)V
    .locals 3

    .line 84
    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/4 v1, 0x0

    const/16 v2, 0x51

    if-ne v0, v2, :cond_2

    .line 85
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v2, 0x83

    if-ne v0, v2, :cond_1

    .line 86
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    if-nez v0, :cond_0

    .line 87
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    return-void

    .line 86
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    throw v1

    .line 85
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    throw v1

    .line 84
    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    throw v1
.end method

.method public setJumpStatement(Lorg/mozilla/javascript/ast/Jump;)V
    .locals 3

    .line 56
    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/4 v1, 0x0

    const/16 v2, 0x78

    if-eq v0, v2, :cond_1

    const/16 v2, 0x79

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    throw v1

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 58
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->jumpNode:Lorg/mozilla/javascript/ast/Jump;

    if-nez v0, :cond_2

    .line 59
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Jump;->jumpNode:Lorg/mozilla/javascript/ast/Jump;

    return-void

    .line 58
    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    throw v1

    .line 57
    :cond_3
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    throw v1
.end method

.method public setLoop(Lorg/mozilla/javascript/ast/Jump;)V
    .locals 3

    .line 98
    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-ne v0, v2, :cond_2

    if-eqz p1, :cond_1

    .line 100
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->jumpNode:Lorg/mozilla/javascript/ast/Jump;

    if-nez v0, :cond_0

    .line 101
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Jump;->jumpNode:Lorg/mozilla/javascript/ast/Jump;

    return-void

    .line 100
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    throw v1

    .line 99
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    throw v1

    .line 98
    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    throw v1
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 1

    .line 130
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1

    .line 125
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
