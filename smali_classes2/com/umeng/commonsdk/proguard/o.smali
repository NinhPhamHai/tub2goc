.class public Lcom/umeng/commonsdk/proguard/o;
.super Ljava/lang/Object;
.source "TDeserializer.java"


# instance fields
.field private final a:Lcom/umeng/commonsdk/proguard/ak;

.field private final b:Lcom/umeng/commonsdk/proguard/ax;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/umeng/commonsdk/proguard/ae$a;

    invoke-direct {v0}, Lcom/umeng/commonsdk/proguard/ae$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/proguard/o;-><init>(Lcom/umeng/commonsdk/proguard/am;)V

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/proguard/am;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/umeng/commonsdk/proguard/ax;

    invoke-direct {v0}, Lcom/umeng/commonsdk/proguard/ax;-><init>()V

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/o;->b:Lcom/umeng/commonsdk/proguard/ax;

    .line 58
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/o;->b:Lcom/umeng/commonsdk/proguard/ax;

    invoke-interface {p1, v0}, Lcom/umeng/commonsdk/proguard/am;->a(Lcom/umeng/commonsdk/proguard/ay;)Lcom/umeng/commonsdk/proguard/ak;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/o;->a:Lcom/umeng/commonsdk/proguard/ak;

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/commonsdk/proguard/l;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/o;->b:Lcom/umeng/commonsdk/proguard/ax;

    invoke-virtual {v0, p2}, Lcom/umeng/commonsdk/proguard/ax;->a([B)V

    .line 70
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/o;->a:Lcom/umeng/commonsdk/proguard/ak;

    invoke-interface {p1, p2}, Lcom/umeng/commonsdk/proguard/l;->read(Lcom/umeng/commonsdk/proguard/ak;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/o;->b:Lcom/umeng/commonsdk/proguard/ax;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ax;->e()V

    .line 73
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/o;->a:Lcom/umeng/commonsdk/proguard/ak;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->B()V

    return-void

    :catchall_0
    move-exception p1

    .line 72
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/o;->b:Lcom/umeng/commonsdk/proguard/ax;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/ax;->e()V

    .line 73
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/o;->a:Lcom/umeng/commonsdk/proguard/ak;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/ak;->B()V

    throw p1
.end method
