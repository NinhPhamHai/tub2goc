.class public Lcom/umeng/commonsdk/statistics/proto/e;
.super Ljava/lang/Object;
.source "ImprintValue.java"

# interfaces
.implements Lcom/umeng/commonsdk/proguard/l;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/proto/e$c;,
        Lcom/umeng/commonsdk/statistics/proto/e$d;,
        Lcom/umeng/commonsdk/statistics/proto/e$a;,
        Lcom/umeng/commonsdk/statistics/proto/e$b;,
        Lcom/umeng/commonsdk/statistics/proto/e$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/commonsdk/proguard/l<",
        "Lcom/umeng/commonsdk/statistics/proto/e;",
        "Lcom/umeng/commonsdk/statistics/proto/e$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/commonsdk/statistics/proto/e$e;",
            "Lcom/umeng/commonsdk/proguard/x;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/umeng/commonsdk/proguard/ap;

.field private static final g:Lcom/umeng/commonsdk/proguard/af;

.field private static final h:Lcom/umeng/commonsdk/proguard/af;

.field private static final i:Lcom/umeng/commonsdk/proguard/af;

.field private static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/commonsdk/proguard/as;",
            ">;",
            "Lcom/umeng/commonsdk/proguard/at;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;

.field private l:B

.field private m:[Lcom/umeng/commonsdk/statistics/proto/e$e;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 41
    new-instance v0, Lcom/umeng/commonsdk/proguard/ap;

    const-string v1, "ImprintValue"

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ap;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->f:Lcom/umeng/commonsdk/proguard/ap;

    .line 44
    new-instance v0, Lcom/umeng/commonsdk/proguard/af;

    const-string v1, "value"

    const/4 v2, 0x1

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v2}, Lcom/umeng/commonsdk/proguard/af;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->g:Lcom/umeng/commonsdk/proguard/af;

    .line 46
    new-instance v0, Lcom/umeng/commonsdk/proguard/af;

    const/4 v4, 0x2

    const/16 v5, 0xa

    const-string v6, "ts"

    invoke-direct {v0, v6, v5, v4}, Lcom/umeng/commonsdk/proguard/af;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->h:Lcom/umeng/commonsdk/proguard/af;

    .line 48
    new-instance v0, Lcom/umeng/commonsdk/proguard/af;

    const-string v7, "guid"

    const/4 v8, 0x3

    invoke-direct {v0, v7, v3, v8}, Lcom/umeng/commonsdk/proguard/af;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->i:Lcom/umeng/commonsdk/proguard/af;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->j:Ljava/util/Map;

    .line 55
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->j:Ljava/util/Map;

    const-class v8, Lcom/umeng/commonsdk/proguard/au;

    new-instance v9, Lcom/umeng/commonsdk/statistics/proto/e$b;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/umeng/commonsdk/statistics/proto/e$b;-><init>(Lcom/umeng/commonsdk/statistics/proto/e$1;)V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->j:Ljava/util/Map;

    const-class v8, Lcom/umeng/commonsdk/proguard/av;

    new-instance v9, Lcom/umeng/commonsdk/statistics/proto/e$d;

    invoke-direct {v9, v10}, Lcom/umeng/commonsdk/statistics/proto/e$d;-><init>(Lcom/umeng/commonsdk/statistics/proto/e$1;)V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v0, Ljava/util/EnumMap;

    const-class v8, Lcom/umeng/commonsdk/statistics/proto/e$e;

    invoke-direct {v0, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 141
    sget-object v8, Lcom/umeng/commonsdk/statistics/proto/e$e;->a:Lcom/umeng/commonsdk/statistics/proto/e$e;

    new-instance v9, Lcom/umeng/commonsdk/proguard/x;

    new-instance v10, Lcom/umeng/commonsdk/proguard/y;

    invoke-direct {v10, v3}, Lcom/umeng/commonsdk/proguard/y;-><init>(B)V

    invoke-direct {v9, v1, v4, v10}, Lcom/umeng/commonsdk/proguard/x;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/y;)V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/e$e;->b:Lcom/umeng/commonsdk/statistics/proto/e$e;

    new-instance v4, Lcom/umeng/commonsdk/proguard/x;

    new-instance v8, Lcom/umeng/commonsdk/proguard/y;

    invoke-direct {v8, v5}, Lcom/umeng/commonsdk/proguard/y;-><init>(B)V

    invoke-direct {v4, v6, v2, v8}, Lcom/umeng/commonsdk/proguard/x;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/y;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/e$e;->c:Lcom/umeng/commonsdk/statistics/proto/e$e;

    new-instance v4, Lcom/umeng/commonsdk/proguard/x;

    new-instance v5, Lcom/umeng/commonsdk/proguard/y;

    invoke-direct {v5, v3}, Lcom/umeng/commonsdk/proguard/y;-><init>(B)V

    invoke-direct {v4, v7, v2, v5}, Lcom/umeng/commonsdk/proguard/x;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/y;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->d:Ljava/util/Map;

    .line 151
    const-class v0, Lcom/umeng/commonsdk/statistics/proto/e;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/e;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/x;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 133
    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->l:B

    const/4 v1, 0x1

    .line 134
    new-array v1, v1, [Lcom/umeng/commonsdk/statistics/proto/e$e;

    sget-object v2, Lcom/umeng/commonsdk/statistics/proto/e$e;->a:Lcom/umeng/commonsdk/statistics/proto/e$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/e;->m:[Lcom/umeng/commonsdk/statistics/proto/e$e;

    return-void
.end method

.method static synthetic l()Lcom/umeng/commonsdk/proguard/ap;
    .locals 1

    .line 37
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->f:Lcom/umeng/commonsdk/proguard/ap;

    return-object v0
.end method

.method static synthetic m()Lcom/umeng/commonsdk/proguard/af;
    .locals 1

    .line 37
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->g:Lcom/umeng/commonsdk/proguard/af;

    return-object v0
.end method

.method static synthetic n()Lcom/umeng/commonsdk/proguard/af;
    .locals 1

    .line 37
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->h:Lcom/umeng/commonsdk/proguard/af;

    return-object v0
.end method

.method static synthetic o()Lcom/umeng/commonsdk/proguard/af;
    .locals 1

    .line 37
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->i:Lcom/umeng/commonsdk/proguard/af;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 213
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Z)V
    .locals 2

    .line 240
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/commonsdk/proguard/i;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/statistics/proto/e;->l:B

    return-void
.end method

.method public c(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 266
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()J
    .locals 2

    .line 218
    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->b:J

    return-wide v0
.end method

.method public g()Z
    .locals 2

    .line 236
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/i;->a(BI)Z

    move-result v0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 321
    :cond_0
    new-instance v0, Lcom/umeng/commonsdk/proguard/al;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'guid\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/al;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read(Lcom/umeng/commonsdk/proguard/ak;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 276
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/proguard/at;

    invoke-interface {v0}, Lcom/umeng/commonsdk/proguard/at;->b()Lcom/umeng/commonsdk/proguard/as;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/commonsdk/proguard/as;->b(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/proguard/l;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImprintValue("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/e;->d()Z

    move-result v1

    const-string v2, "null"

    if-eqz v1, :cond_1

    const-string v1, "value:"

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 292
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    const-string v3, ", "

    if-nez v1, :cond_2

    .line 299
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "ts:"

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    iget-wide v4, p0, Lcom/umeng/commonsdk/statistics/proto/e;->b:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "guid:"

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 307
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 309
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, ")"

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/umeng/commonsdk/proguard/ak;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 281
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/proguard/at;

    invoke-interface {v0}, Lcom/umeng/commonsdk/proguard/at;->b()Lcom/umeng/commonsdk/proguard/as;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/commonsdk/proguard/as;->a(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/proguard/l;)V

    return-void
.end method
