import argparse
import os


def saveArgsToFile(args, path):
    
    with open(path, 'w') as f:
        for arg, value in vars(args).items():
            f.write('{0} = {1}\n'.format(arg, str(value)))
            
def configure():
    parser = argparse.ArgumentParser(description=__doc__)
    
    parser.add_argument('--hashtag', type=str)
    parser.add_argument('--maximum', type=str)
    parser.add_argument('--destination', type=str)
    
    args = parser.parse_args()
    return args
    
def main():
    
    args = configure()
    
    saveArgsToFile(args, args.destination + '/arguments.txt')
    
if __name__ == '__main__':
    main()