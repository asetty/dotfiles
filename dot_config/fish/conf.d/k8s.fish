alias kc="kubectl"

# Use this + awk and grep to filter as needed
alias kpg="kubectl get pods --all-namespaces -o wide"

alias hnPods="kubectl get pods --all-namespaces -o=jsonpath=\"{range .items[?(@.spec.hostNetwork)]}{.metadata.name}{'\n'}\""

function kls
    kubectl get pods $argv
end

function kll
    kubectl get pods -o wide $argv
end

function kssh
    kubectl exec -ti $argv
end

function kcat
    kubectl describe po $argv
end

function kyaml
    kuectl get -o yaml $argv
end

function kuse
    if test (count $argv) -ne 1;
        echo "Usage: kuse <context>"
        return 1
    end
    kubectl config use-context $argv[1]
end

function kresources
	kubectl get po -o=jsonpath='{.spec.containers[0].resources}' $argv
end
