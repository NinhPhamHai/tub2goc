.class public Licepick/Icepick;
.super Ljava/lang/Object;
.source "Icepick.java"


# static fields
.field public static final ANDROID_PREFIX:Ljava/lang/String; = "android."

.field private static final DEFAULT_OBJECT_INJECTOR:Licepick/Injector$Object;

.field private static final DEFAULT_VIEW_INJECTOR:Licepick/Injector$View;

.field private static final INJECTORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Licepick/Injector;",
            ">;"
        }
    .end annotation
.end field

.field public static final JAVA_PREFIX:Ljava/lang/String; = "java."

.field public static final SUFFIX:Ljava/lang/String; = "$$Icepick"

.field private static final TAG:Ljava/lang/String; = "Icepick"

.field private static debug:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Licepick/Injector$Object;

    invoke-direct {v0}, Licepick/Injector$Object;-><init>()V

    sput-object v0, Licepick/Icepick;->DEFAULT_OBJECT_INJECTOR:Licepick/Injector$Object;

    .line 25
    new-instance v0, Licepick/Injector$View;

    invoke-direct {v0}, Licepick/Injector$View;-><init>()V

    sput-object v0, Licepick/Icepick;->DEFAULT_VIEW_INJECTOR:Licepick/Injector$View;

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Licepick/Icepick;->INJECTORS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInjector(Ljava/lang/Class;)Licepick/Injector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Licepick/Injector;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 31
    sget-object v0, Licepick/Icepick;->INJECTORS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Licepick/Injector;

    const-string v1, "Icepick"

    if-eqz v0, :cond_1

    .line 33
    sget-boolean p0, Licepick/Icepick;->debug:Z

    if-eqz p0, :cond_0

    const-string p0, "HIT: Cached in injector map."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    .line 36
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android."

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "java."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 42
    :cond_2
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$$Icepick"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Licepick/Injector;

    .line 44
    sget-boolean v2, Licepick/Icepick;->debug:Z

    if-eqz v2, :cond_4

    const-string v2, "HIT: Class loaded injection class."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 46
    sget-boolean v0, Licepick/Icepick;->debug:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found. Trying superclass "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Licepick/Icepick;->getInjector(Ljava/lang/Class;)Licepick/Injector;

    move-result-object v0

    .line 49
    :cond_4
    :goto_0
    sget-object v1, Licepick/Icepick;->INJECTORS:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 38
    :cond_5
    :goto_1
    sget-boolean p0, Licepick/Icepick;->debug:Z

    if-eqz p0, :cond_6

    const-string p0, "MISS: Reached framework class. Abandoning search."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static restoreInstanceState(Landroid/view/View;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Landroid/os/Parcelable;",
            ")",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 82
    sget-object v0, Licepick/Icepick;->DEFAULT_VIEW_INJECTOR:Licepick/Injector$View;

    invoke-static {p0, v0}, Licepick/Icepick;->safeGet(Ljava/lang/Object;Licepick/Injector;)Licepick/Injector;

    move-result-object v0

    check-cast v0, Licepick/Injector$View;

    .line 83
    invoke-virtual {v0, p0, p1}, Licepick/Injector$View;->restore(Ljava/lang/Object;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public static restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 72
    sget-object v0, Licepick/Icepick;->DEFAULT_OBJECT_INJECTOR:Licepick/Injector$Object;

    invoke-static {p0, v0}, Licepick/Icepick;->safeGet(Ljava/lang/Object;Licepick/Injector;)Licepick/Injector;

    move-result-object v0

    check-cast v0, Licepick/Injector$Object;

    .line 73
    invoke-virtual {v0, p0, p1}, Licepick/Injector$Object;->restore(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method private static safeGet(Ljava/lang/Object;Licepick/Injector;)Licepick/Injector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Licepick/Injector;",
            ">(",
            "Ljava/lang/Object;",
            "Licepick/Injector;",
            ")TT;"
        }
    .end annotation

    .line 55
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 56
    invoke-static {v0}, Licepick/Icepick;->getInjector(Ljava/lang/Class;)Licepick/Injector;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0

    :catch_0
    move-exception p1

    .line 62
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to inject state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static saveInstanceState(Landroid/view/View;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Landroid/os/Parcelable;",
            ")",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 77
    sget-object v0, Licepick/Icepick;->DEFAULT_VIEW_INJECTOR:Licepick/Injector$View;

    invoke-static {p0, v0}, Licepick/Icepick;->safeGet(Ljava/lang/Object;Licepick/Injector;)Licepick/Injector;

    move-result-object v0

    check-cast v0, Licepick/Injector$View;

    .line 78
    invoke-virtual {v0, p0, p1}, Licepick/Injector$View;->save(Ljava/lang/Object;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public static saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 67
    sget-object v0, Licepick/Icepick;->DEFAULT_OBJECT_INJECTOR:Licepick/Injector$Object;

    invoke-static {p0, v0}, Licepick/Icepick;->safeGet(Ljava/lang/Object;Licepick/Injector;)Licepick/Injector;

    move-result-object v0

    check-cast v0, Licepick/Injector$Object;

    .line 68
    invoke-virtual {v0, p0, p1}, Licepick/Injector$Object;->save(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public static setDebug(Z)V
    .locals 0

    .line 21
    sput-boolean p0, Licepick/Icepick;->debug:Z

    return-void
.end method
