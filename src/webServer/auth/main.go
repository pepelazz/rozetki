package auth

import (
	"encoding/json"
	"github.com/pepelazz/rozetki/src/pg"
	"github.com/pepelazz/rozetki/src/types"
)

var (
	webServerConfig types.WebServer
)

func SetWebServerConfig(config types.WebServer) {
	webServerConfig = config
}

func userFindByAuthProviderId(provider string, id interface{}) (user *types.User, err error) {
	jsonStr, _ := json.Marshal(map[string]interface{}{"auth_provider": provider, "auth_provider_id": id})
	err = pg.CallPgFunc("user_get_by_auth_provider_id", jsonStr, &user, nil)
	return
}
