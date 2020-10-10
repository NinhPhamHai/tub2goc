.class public final enum Lcom/r0adkll/slidr/model/SlidrPosition;
.super Ljava/lang/Enum;
.source "SlidrPosition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/r0adkll/slidr/model/SlidrPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/r0adkll/slidr/model/SlidrPosition;

.field public static final enum BOTTOM:Lcom/r0adkll/slidr/model/SlidrPosition;

.field public static final enum HORIZONTAL:Lcom/r0adkll/slidr/model/SlidrPosition;

.field public static final enum LEFT:Lcom/r0adkll/slidr/model/SlidrPosition;

.field public static final enum RIGHT:Lcom/r0adkll/slidr/model/SlidrPosition;

.field public static final enum TOP:Lcom/r0adkll/slidr/model/SlidrPosition;

.field public static final enum VERTICAL:Lcom/r0adkll/slidr/model/SlidrPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 6
    new-instance v0, Lcom/r0adkll/slidr/model/SlidrPosition;

    const/4 v1, 0x0

    const-string v2, "LEFT"

    invoke-direct {v0, v2, v1}, Lcom/r0adkll/slidr/model/SlidrPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/r0adkll/slidr/model/SlidrPosition;->LEFT:Lcom/r0adkll/slidr/model/SlidrPosition;

    .line 7
    new-instance v0, Lcom/r0adkll/slidr/model/SlidrPosition;

    const/4 v2, 0x1

    const-string v3, "RIGHT"

    invoke-direct {v0, v3, v2}, Lcom/r0adkll/slidr/model/SlidrPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/r0adkll/slidr/model/SlidrPosition;->RIGHT:Lcom/r0adkll/slidr/model/SlidrPosition;

    .line 8
    new-instance v0, Lcom/r0adkll/slidr/model/SlidrPosition;

    const/4 v3, 0x2

    const-string v4, "TOP"

    invoke-direct {v0, v4, v3}, Lcom/r0adkll/slidr/model/SlidrPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/r0adkll/slidr/model/SlidrPosition;->TOP:Lcom/r0adkll/slidr/model/SlidrPosition;

    .line 9
    new-instance v0, Lcom/r0adkll/slidr/model/SlidrPosition;

    const/4 v4, 0x3

    const-string v5, "BOTTOM"

    invoke-direct {v0, v5, v4}, Lcom/r0adkll/slidr/model/SlidrPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/r0adkll/slidr/model/SlidrPosition;->BOTTOM:Lcom/r0adkll/slidr/model/SlidrPosition;

    .line 10
    new-instance v0, Lcom/r0adkll/slidr/model/SlidrPosition;

    const/4 v5, 0x4

    const-string v6, "VERTICAL"

    invoke-direct {v0, v6, v5}, Lcom/r0adkll/slidr/model/SlidrPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/r0adkll/slidr/model/SlidrPosition;->VERTICAL:Lcom/r0adkll/slidr/model/SlidrPosition;

    .line 11
    new-instance v0, Lcom/r0adkll/slidr/model/SlidrPosition;

    const/4 v6, 0x5

    const-string v7, "HORIZONTAL"

    invoke-direct {v0, v7, v6}, Lcom/r0adkll/slidr/model/SlidrPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/r0adkll/slidr/model/SlidrPosition;->HORIZONTAL:Lcom/r0adkll/slidr/model/SlidrPosition;

    const/4 v0, 0x6

    .line 4
    new-array v0, v0, [Lcom/r0adkll/slidr/model/SlidrPosition;

    sget-object v7, Lcom/r0adkll/slidr/model/SlidrPosition;->LEFT:Lcom/r0adkll/slidr/model/SlidrPosition;

    aput-object v7, v0, v1

    sget-object v1, Lcom/r0adkll/slidr/model/SlidrPosition;->RIGHT:Lcom/r0adkll/slidr/model/SlidrPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/r0adkll/slidr/model/SlidrPosition;->TOP:Lcom/r0adkll/slidr/model/SlidrPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/r0adkll/slidr/model/SlidrPosition;->BOTTOM:Lcom/r0adkll/slidr/model/SlidrPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/r0adkll/slidr/model/SlidrPosition;->VERTICAL:Lcom/r0adkll/slidr/model/SlidrPosition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/r0adkll/slidr/model/SlidrPosition;->HORIZONTAL:Lcom/r0adkll/slidr/model/SlidrPosition;

    aput-object v1, v0, v6

    sput-object v0, Lcom/r0adkll/slidr/model/SlidrPosition;->$VALUES:[Lcom/r0adkll/slidr/model/SlidrPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/r0adkll/slidr/model/SlidrPosition;
    .locals 1

    .line 4
    const-class v0, Lcom/r0adkll/slidr/model/SlidrPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/r0adkll/slidr/model/SlidrPosition;

    return-object p0
.end method

.method public static values()[Lcom/r0adkll/slidr/model/SlidrPosition;
    .locals 1

    .line 4
    sget-object v0, Lcom/r0adkll/slidr/model/SlidrPosition;->$VALUES:[Lcom/r0adkll/slidr/model/SlidrPosition;

    invoke-virtual {v0}, [Lcom/r0adkll/slidr/model/SlidrPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/r0adkll/slidr/model/SlidrPosition;

    return-object v0
.end method
