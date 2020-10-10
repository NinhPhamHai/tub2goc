.class public final enum Lcom/google/firebase/firestore/core/OnlineState;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/core/OnlineState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/core/OnlineState;

.field public static final enum OFFLINE:Lcom/google/firebase/firestore/core/OnlineState;

.field public static final enum ONLINE:Lcom/google/firebase/firestore/core/OnlineState;

.field public static final enum UNKNOWN:Lcom/google/firebase/firestore/core/OnlineState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 31
    new-instance v0, Lcom/google/firebase/firestore/core/OnlineState;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/google/firebase/firestore/core/OnlineState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/core/OnlineState;->UNKNOWN:Lcom/google/firebase/firestore/core/OnlineState;

    .line 38
    new-instance v0, Lcom/google/firebase/firestore/core/OnlineState;

    const/4 v2, 0x1

    const-string v3, "ONLINE"

    invoke-direct {v0, v3, v2}, Lcom/google/firebase/firestore/core/OnlineState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/core/OnlineState;->ONLINE:Lcom/google/firebase/firestore/core/OnlineState;

    .line 45
    new-instance v0, Lcom/google/firebase/firestore/core/OnlineState;

    const/4 v3, 0x2

    const-string v4, "OFFLINE"

    invoke-direct {v0, v4, v3}, Lcom/google/firebase/firestore/core/OnlineState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/core/OnlineState;->OFFLINE:Lcom/google/firebase/firestore/core/OnlineState;

    const/4 v0, 0x3

    .line 23
    new-array v0, v0, [Lcom/google/firebase/firestore/core/OnlineState;

    sget-object v4, Lcom/google/firebase/firestore/core/OnlineState;->UNKNOWN:Lcom/google/firebase/firestore/core/OnlineState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/google/firebase/firestore/core/OnlineState;->ONLINE:Lcom/google/firebase/firestore/core/OnlineState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/firestore/core/OnlineState;->OFFLINE:Lcom/google/firebase/firestore/core/OnlineState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/firebase/firestore/core/OnlineState;->$VALUES:[Lcom/google/firebase/firestore/core/OnlineState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/core/OnlineState;
    .locals 1

    .line 23
    const-class v0, Lcom/google/firebase/firestore/core/OnlineState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/core/OnlineState;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/firestore/core/OnlineState;
    .locals 1

    .line 23
    sget-object v0, Lcom/google/firebase/firestore/core/OnlineState;->$VALUES:[Lcom/google/firebase/firestore/core/OnlineState;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/core/OnlineState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/core/OnlineState;

    return-object v0
.end method
